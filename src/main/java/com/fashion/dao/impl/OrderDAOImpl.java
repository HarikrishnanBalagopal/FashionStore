package com.fashion.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fashion.dao.OrderDAO;
import com.fashion.model.Order;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public OrderDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public List<Order> list()
	{	
		String hql = "from Order";		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Order> list = (List<Order>) query.list();

		return list;
	}

	@Transactional
	public Order get(int id)
	{
		String hql = "from Order where id = " + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Order> list = (List<Order>) query.list();

		if (list != null && !list.isEmpty())
		{
			return list.get(0);
		}

		return null;
	}
	
	public String byEmail(String email)
	{
		return "from Order where email = '" + email + "'";

	}
	
	@Transactional
	public List<Order> getAll(String hql)
	{
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Order> list = (List<Order>) query.list();
		return list;
	}
	
	@Transactional
	public boolean save(Order order)
	{
		try
		{
			sessionFactory.getCurrentSession().save(order);
		}
		catch(Exception e)
		{
			System.out.println("Exception on saving order: " + e);
			return false;
		}
		
		return true;
	}

	@Transactional
	public boolean update(Order order)
	{
		try
		{
			sessionFactory.getCurrentSession().update(order);
		}
		catch(Exception e)
		{
			System.out.println("Exception on updating order: " + e);
			return false;
		}
		
		return true;
	}

	@Transactional
	public boolean delete(int id)
	{
		Order order = new Order();
		order.setId(id);
		
		try
		{
			sessionFactory.getCurrentSession().delete(order);
		}
		catch(Exception e)
		{
			System.out.println("Exception on deleting order: " + e);
			return false;
		}
		
		return true;
	}
}