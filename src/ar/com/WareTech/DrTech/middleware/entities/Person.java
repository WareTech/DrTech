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
	protected String medicalcoverage;
	protected String maritalstate;
	protected String address;
	protected String phone;
	protected String details;
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
	public String getMedicalcoverage() {
		return medicalcoverage;
	}
	public void setMedicalcoverage(String medicalcoverage) {
		this.medicalcoverage = medicalcoverage;
	}
	public String getMaritalstate() {
		return maritalstate;
	}
	public void setMaritalstate(String maritalstate) {
		this.maritalstate = maritalstate;
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
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Set getUserSet() {
		return userSet;
	}
	public void setUserSet(Set userSet) {
		this.userSet = userSet;
	}

}
