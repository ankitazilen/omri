package com.omri.service.common.beans;

import java.util.Date;
import java.util.List;

import com.omri.service.common.model.Patient;
import com.omri.service.common.model.Resource;

public class PatientBean{
	private long patientId;
	private String firstName;
	private String lastName;
	private Date dob;
	private String addressLine1;
	private String addressLine2;
	private String city;
	private String state;
	private String zip;
	private String country;
	private String phoneNo;
	private Date createdDate;
	private Date modifiedDate;
	private long createdBy;
	private long modifiedBy;
	private List<PatientResourceBean> resourceBeanList;
	
	public PatientBean(){
		
	}
	
	public PatientBean(Patient patient, List<PatientResourceBean> resourceBeanList){
		this.patientId = patient.getPatientId();
		this.firstName = patient.getFirstName();
		this.lastName = patient.getLastName();
		this.dob = patient.getDob();
		this.addressLine1 = patient.getAddressLine1();
		this.addressLine2 = patient.getAddressLine2();
		this.city = patient.getCity();
		this.state = patient.getState();
		this.zip = patient.getZip();
		this.country = patient.getCountry();
		this.phoneNo = patient.getPhoneNo();
		this.createdDate  =patient.getCreateDate();
		this.modifiedDate = patient.getModifiedDate();
		this.createdBy = patient.getCreatedBy();
		this.modifiedBy  = patient.getModifiedBy();
		this.resourceBeanList = resourceBeanList;
	}
	
	public long getPatientId() {
		return patientId;
	}
	public void setPatientId(long patientId) {
		this.patientId = patientId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return addressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public long getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(long createdBy) {
		this.createdBy = createdBy;
	}
	public long getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(long modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public List<PatientResourceBean> getResourceBeanList() {
		return resourceBeanList;
	}
	public void setResourceBeanList(List<PatientResourceBean> resourceBeanList) {
		this.resourceBeanList = resourceBeanList;
	}
	
}
