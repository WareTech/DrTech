package ar.com.WareTech.DrTech.backend;

import org.hibernate.cfg.Configuration;

import ar.com.WareTech.DrTech.middleware.entities.Access;
import ar.com.WareTech.DrTech.middleware.entities.Person;
import ar.com.WareTech.DrTech.middleware.entities.User;
import ar.com.WareTech.DrTech.middleware.entities.UserAccess;
import ar.com.WareTech.DrTech.middleware.services.SecurityManager;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DrTech
 */
public class CreateUserTest
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
		
		Person person = new Person();
		person.setEmail("test@drtech.com.ar");
		person.setDni("9.999.999");
		person.setFirstname("Test");
		person.setLastname("Test");
		person.setBirthdate("01/01/1900");
		person.setGender("Male");
		Database.getCurrentSession().save(person);
		
		User user = new User();
		user.setPerson(person);
		user.setUsername("test@drtech.com.ar");
		user.setPassword(SecurityManager.getInstance().encodePassword(user.getUsername(), "test"));
		Database.getCurrentSession().save(user);
		
		Database.getCurrentSession().getTransaction().commit();		
    }
	
}
