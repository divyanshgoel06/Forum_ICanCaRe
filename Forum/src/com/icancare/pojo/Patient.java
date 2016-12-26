package com.icancare.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity(name = "patientdetail")
public class Patient {

	@Id
	@GeneratedValue
	@Column(name = "patientId")
	private int patientId;

	@Column(name = "patientName")
	private String patientName;

	@Column(name = "patientEmailId")
	private String patientEmailId;

	@Column(name = "password")
	private String password;

	@Column(name = "mobileNumber")
	private String mobileNumber;

	@Column(name = "Country")
	private String country;

	@Column(name = "State")
	private String state;

	@Column(name = "City")
	private String city;

	@Column(name = "InterestedDisease")
	private String disease;

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getPatientEmailId() {
		return patientEmailId;
	}

	public void setPatientEmailId(String patientEmailId) {
		this.patientEmailId = patientEmailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

}