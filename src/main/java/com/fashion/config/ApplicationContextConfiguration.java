package com.fashion.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.fashion.model.Address;
import com.fashion.model.CardDetails;
import com.fashion.model.Category;
import com.fashion.model.Order;
import com.fashion.model.Product;
import com.fashion.model.Supplier;
import com.fashion.model.User;

@Configuration
@ComponentScan("com.fashion")
@EnableTransactionManagement
public class ApplicationContextConfiguration
{    
    @Bean(name = "dataSource")
    public DataSource getH2DataSource()
    {
    	DriverManagerDataSource dataSource= new DriverManagerDataSource();
    	dataSource.setDriverClassName("org.h2.Driver");
    	dataSource.setUrl("jdbc:h2:tcp://localhost/~/niitdb");
    	dataSource.setUsername("sa");
    	dataSource.setPassword("");
    	
    	return dataSource;
    }
    
    private Properties getHibernateProperties()
    {
    	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
    	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
    	return properties;
    }
    
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource)
    {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addAnnotatedClass(Address.class);
    	sessionBuilder.addAnnotatedClass(Category.class);
    	sessionBuilder.addAnnotatedClass(Supplier.class);
    	sessionBuilder.addAnnotatedClasses(Product.class);
    	sessionBuilder.addAnnotatedClass(User.class);
    	sessionBuilder.addAnnotatedClass(CardDetails.class);
    	sessionBuilder.addAnnotatedClass(Order.class);
    	return sessionBuilder.buildSessionFactory();
    }
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}
}