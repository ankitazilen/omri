create table OMRI_Clinic (
	clinicId LONG not null primary key,
	clinicorganizationId LONG,
	clinicorganizationGroupId LONG,
	clinicName VARCHAR(75) null,
	clinicAdminId LONG,
	addressLine1 VARCHAR(75) null,
	addressLine2 VARCHAR(75) null,
	city VARCHAR(75) null,
	state_ VARCHAR(75) null,
	zipcode VARCHAR(75) null,
	country VARCHAR(75) null,
	phoneNo VARCHAR(75) null,
	faxNo VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	createdBy LONG,
	modifiedBy LONG
);

create table OMRI_Clinic_Resource (
	clinicId LONG not null,
	specificationId LONG not null,
	resourceId LONG not null,
	operationTime INTEGER,
	primary key (clinicId, specificationId, resourceId)
);

create table OMRI_CustomUser (
	customUserId LONG not null primary key,
	organizationId LONG,
	organizationGroupId LONG,
	lrUserId LONG,
	parentUserId LONG,
	addressLine1 VARCHAR(75) null,
	addressLine2 VARCHAR(75) null,
	city VARCHAR(75) null,
	state_ VARCHAR(75) null,
	zipcode VARCHAR(75) null,
	phone VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	createdBy LONG,
	modifiedBy LONG
);

create table OMRI_Patient (
	patientId LONG not null primary key,
	firstName VARCHAR(75) null,
	lastName VARCHAR(75) null,
	dob DATE null,
	addressLine1 VARCHAR(75) null,
	addressLine2 VARCHAR(75) null,
	phoneNo VARCHAR(75) null,
	city VARCHAR(75) null,
	state_ VARCHAR(75) null,
	country VARCHAR(75) null,
	zip VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	createdBy LONG,
	modifiedBy LONG
);

create table OMRI_Patient_Clinic (
	clinicId LONG not null,
	patientId LONG not null,
	patient_status INTEGER,
	doctorId LONG,
	doctorName VARCHAR(75) null,
	doctorPhoneNo VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	createdBy LONG,
	modifiedBy LONG,
	primary key (clinicId, patientId)
);

create table OMRI_Patient_Clinic_Resource (
	clinicId LONG not null,
	patientId LONG not null,
	resourceId LONG not null,
	specificationId LONG not null,
	noOfOccurance INTEGER,
	createDate DATE null,
	modifiedDate DATE null,
	createdBy LONG,
	modifiedBy LONG,
	primary key (clinicId, patientId, resourceId, specificationId)
);

create table OMRI_Resource (
	resourceId LONG not null primary key,
	resourceName VARCHAR(75) null
);

create table OMRI_Resource_Specification (
	resourceId LONG not null,
	specificationId LONG not null,
	primary key (resourceId, specificationId)
);

create table OMRI_Specification (
	specificationId LONG not null primary key,
	specificationName VARCHAR(75) null
);