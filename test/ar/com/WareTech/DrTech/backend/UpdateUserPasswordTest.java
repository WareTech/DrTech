package ar.com.WareTech.DrTech.backend;

import ar.com.WareTech.DrTech.middleware.entities.Person;
import ar.com.WareTech.DrTech.middleware.entities.User;
import ar.com.WareTech.DrTech.middleware.services.SecurityManager;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DrTech
 */
public class UpdateUserPasswordTest
{
    /**
     * @param args
     * @throws Exception
     */
    static public void main(
            String[] args
            )
        throws Exception
    {
		Database.getCurrentSession().beginTransaction();

		
		User user = (User) Database.getCurrentSession().get(User.class, 4l);
		user.setPassword(SecurityManager.getInstance().encodePassword(user.getUsername(), "test"));
		Database.getCurrentSession().update(user);
		
		Database.getCurrentSession().getTransaction().commit();		
    }
	
}
