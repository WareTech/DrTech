package ar.com.WareTech.DrTech.middleware.entities;

import org.json.JSONException;
import org.json.JSONObject;

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

	public JSONObject toJSON()
			throws JSONException
		{
			JSONObject jsonObject = super.toJSON();
			jsonObject.put("username", this.getUsername());
			jsonObject.put("password", this.getPassword());
			jsonObject.put("person", this.getPerson().toJSON());
			
			return jsonObject;
		}
}
