/*
 * Created on 08/10/2009
 *
 * Augusto (AugustoSoncini@WareTech.com.ar)
 * Company: WareTech TM (www.WareTech.com.ar)
 * Project: GranDT
 */
package ar.com.WareTech.DrTech.middleware.entities;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DrTech
 */
public class User
    extends AbstractPersistentObject
{
    protected String username;
    protected String password;
    protected Person person;
    
	/**
	 * @return the username
	 */
	public String getUsername()
	{
		return this.username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(
			String username
			) 
	{
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() 
	{
		return this.password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(
			String password
			) 
	{
		this.password = password;
	}

	public Person getPerson() 
	{
		return person;
	}

	public void setPerson(Person person) 
	{
		this.person = person;
	}

}
