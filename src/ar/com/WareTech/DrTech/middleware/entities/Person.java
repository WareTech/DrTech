/*
 * Created on 08/10/2009
 *
 * Augusto (AugustoSoncini@WareTech.com.ar)
 * Company: WareTech TM (www.WareTech.com.ar)
 * Project: GranDT
 */
package ar.com.WareTech.DrTech.middleware.entities;

import java.util.HashSet;
import java.util.Set;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DrTech
 */
public class Person
    extends AbstractPersistentObject
{
	protected String email;
	protected String dni;
	protected String firstname;
	protected String lastname;
	protected String birthdate;
	protected String gender;
	protected String activity;
	protected String medicalCoverage;
	protected String medicalCoverageNumber;
	protected String address;
	protected String phone;
    protected Set userSet = new HashSet();
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public String getMedicalCoverage() {
		return medicalCoverage;
	}
	public void setMedicalCoverage(String medicalCoverage) {
		this.medicalCoverage = medicalCoverage;
	}
	public String getMedicalCoverageNumber() {
		return medicalCoverageNumber;
	}
	public void setMedicalCoverageNumber(String medicalCoverageNumber) {
		this.medicalCoverageNumber = medicalCoverageNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Set getUserSet() {
		return userSet;
	}
	public void setUserSet(Set userSet) {
		this.userSet = userSet;
	}
    
}
