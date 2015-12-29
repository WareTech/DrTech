package ar.com.WareTech.DrTech.backend;

import org.hibernate.cfg.Configuration;

import ar.com.WareTech.DrTech.middleware.entities.Access;
import ar.com.WareTech.DrTech.middleware.entities.Person;
import ar.com.WareTech.DrTech.middleware.entities.User;
import ar.com.WareTech.DrTech.middleware.entities.UserAccess;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DrTech
 */
public class DatabaseTest
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
		
		Database.getCurrentSession().createCriteria(Access.class).list();
		Database.getCurrentSession().createCriteria(Configuration.class).list();
		Database.getCurrentSession().createCriteria(Person.class).list();
		Database.getCurrentSession().createCriteria(User.class).list();
		Database.getCurrentSession().createCriteria(UserAccess.class).list();
		
    }
}
