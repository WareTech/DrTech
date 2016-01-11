package ar.com.WareTech.DrTech.backend;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import ar.com.WareTech.DrTech.middleware.entities.Access;
import ar.com.WareTech.DrTech.middleware.entities.User;
import ar.com.WareTech.DrTech.middleware.entities.UserAccess;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DrTech
 */
public class Database 
{
	protected static SessionFactory sessionFactory = null;
	protected static Configuration  configuration  = null;
	protected static Database       database       = new Database();
	
	/**
	 * 
	 */
	protected Database() 
    {
	}
	
	static 
    {
		try 
        {
			configuration = new Configuration();
			configuration.configure();
			sessionFactory = configuration.buildSessionFactory();
		} 
        catch (Exception exception) 
        {
			exception.printStackTrace();
		}
	}

	/**
	 * @return
	 */
	static public Session openSession() 
    {
		return sessionFactory.openSession();
	}

	/**
	 * @return
	 */
	static public Session getCurrentSession() 
    {
		return sessionFactory.getCurrentSession();
	}

	/**
	 * @return
	 */
	static public Database getInstance() 
    {
		return Database.database;
	}

	static public void test() 
	{
		System.out.println("Database test...");

		Database.getCurrentSession().createCriteria(Access.class).list();
		Database.getCurrentSession().createCriteria(Configuration.class).list();
		Database.getCurrentSession().createCriteria(User.class).list();
		Database.getCurrentSession().createCriteria(UserAccess.class).list();

		System.out.println(".. done!");
	}
}
