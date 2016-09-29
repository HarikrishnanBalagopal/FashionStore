package com.fashion.dao.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fashion.dao.AddressDAO;
import com.fashion.dao.CardDetailsDAO;
import com.fashion.dao.UserDAO;
import com.fashion.model.Address;
import com.fashion.model.User;
import com.fashion.model.UserDetails;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	AddressDAO addressDAO;
	
	@Autowired
	CardDetailsDAO cardDetailsDAO;
	
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<User> list(int sortOrder)
	{
		String sort = "first_name";
		
		switch(sortOrder)
		{
			case 0:
				sort = "first_name";
				break;
			case 1:
				sort = "last_name";
				break;
			case 2:
				sort = "contact_no";
				break;
			case 3:
				sort = "email";
				break;
			case 4:
				sort = "role";
				break;
			default:
				sort = "first_name";
		}
		
		String hql = "from User order by " + sort;		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUsers = (List<User>) query.list();

		return listUsers;
	}

	@Transactional
	public User get(String email)
	{
		String hql = "from User where email = '" + email + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();

		if (list != null && !list.isEmpty())
		{
			return list.get(0);
		}
		
		return null;
	}

	@Transactional
	public boolean save(User user)
	{
		try
		{
			sessionFactory.getCurrentSession().save(user);
		}
		catch(Exception e)
		{
			System.out.println("Exception on saving user: " + e);
			return false;
		}
		
		return true;
	}

	@Transactional
	public boolean update(User user)
	{
		try
		{
			sessionFactory.getCurrentSession().update(user);
		}
		catch(Exception e)
		{
			System.out.println("Exception on updating user: " + e);
			return false;
		}
		
		return true;
	}

	@Transactional
	public boolean delete(String email)
	{
		User user = new User();
		user.setEmail(email);
		
		try
		{
			sessionFactory.getCurrentSession().delete(user);
		}
		catch(Exception e)
		{
			System.out.println("Exception on deleting user: " + e);
			return false;
		}
		
		return true;
	}

	@Transactional
	public User getValidUser(User user)
	{
		String hql = "from User where email = '" + user.getEmail() + "' and password = '" + user.getPassword() + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();

		if (list != null && !list.isEmpty())
		{
			return list.get(0);
		}

		return null;
	}

	@Transactional
	public boolean validateRegistration(UserDetails userDetails)
	{
		if(userDetails.getUser().getEmail() == null)
			return false;
		
		String hql = "from User where email = '" + userDetails.getUser().getEmail() + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();

		if (list != null && !list.isEmpty())
			return false;
		
		return true;
	}

	@Transactional
	public void registerUser(UserDetails userDetails)
	{
		userDetails.getUser().setRole("ROLE_USER");
		save(userDetails.getUser());
		String email = userDetails.getUser().getEmail();
		userDetails.getShippingAddress().setEmail(email);
		userDetails.getBillingAddress().setEmail(email);
		userDetails.getCardDetails().setEmail(email);
		addressDAO.save(userDetails.getShippingAddress());
		addressDAO.save(userDetails.getBillingAddress());
		cardDetailsDAO.save(userDetails.getCardDetails());
	}
}