/*
 * Created on 30/07/2007
 *
 * Augusto (AugustoSoncini@WareTech.com.ar)
 * Company: WareTech TM (www.WareTech.com.ar)
 * Project: Mark SRL
 */
package ar.com.WareTech.DrTech.middleware.services;

import java.util.List;

import org.hibernate.criterion.Expression;

import sun.misc.BASE64Encoder;
import ar.com.WareTech.DrTech.backend.Database;
import ar.com.WareTech.DrTech.middleware.entities.Access;
import ar.com.WareTech.DrTech.middleware.entities.User;
import ar.com.WareTech.DrTech.middleware.entities.UserAccess;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DtTech
 */
public class SecurityManager
{
	static protected SecurityManager securityManager = new SecurityManager();
	
	protected BASE64Encoder passwordEncoder = new BASE64Encoder();
	
	/**
	 * @return
	 */
	static public SecurityManager getInstance()
	{
		return SecurityManager.securityManager;
	}
	
	/**
	 * 
	 * @return
	 */
	protected BASE64Encoder getPasswordEncoder() 
	{
		return this.passwordEncoder;
	}
	
	/**
	 * 
	 * @param string
	 * @return
	 */
	public String encode(String string) 
	{
		return this.getPasswordEncoder().encode(string.getBytes());
	}
	
	/**
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public String encodePassword(String username, String password) 
	{
		return this.encode(username + password);
	}
	
	/**
	 * @param user
	 * @param access
	 * @return
	 */
	public boolean checkAuthorization(
			User user,
			String url
			) 
	{
		List<Access> accessList = Database.getCurrentSession().createCriteria(Access.class).list();
		for(Access access : accessList)
		{
			if (access.getValue().equals(url))
			{
				UserAccess userAccess = (UserAccess) Database.getCurrentSession().createCriteria(
						UserAccess.class
						)
						.add(Expression.eq("user", user))
						.add(Expression.eq("access", access))
						.uniqueResult();
				
				if (userAccess == null)
				{
					return false;
				}

				return true;
			}
		}
		return true;
	}
	
}