package com.fashion.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fashion.dao.ProductDAO;
import com.fashion.model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	Product product;

	@Autowired
	private SessionFactory sessionFactory;

	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	private String listHelper(int sortOrder)
	{
		String sort = "name";

		switch(sortOrder)
		{
		case 0:
			sort = "name";
			break;
		case 1:
			sort = "price";
			break;
		case 2:
			sort = "quantity";
			break;
		case 3:
			sort = "category_id";
			break;
		case 4:
			sort = "supplier_id";
			break;
		case 5:
			sort = "id";
			break;
		default:
			sort = "name";
		}

		return sort;
	}

	@Transactional
	public List<Product> list(int sortOrder)
	{
		String hql = "from Product order by " + listHelper(sortOrder);
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = (List<Product>) query.list();

		return list;
	}

	@Transactional
	public List<Product> listByCategory(String categoryID, int sortOrder)
	{
		String hql = "from Product where category = '" + categoryID + "' order by " + listHelper(sortOrder);
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = (List<Product>) query.list();

		return list;
	}

	@Transactional
	public Product get(String id)
	{
		return sessionFactory.getCurrentSession().get(Product.class, id);
	}

	@Transactional
	public boolean save(Product product)
	{
		try
		{
			sessionFactory.getCurrentSession().save(product);
		}catch(Exception e)
		{
			System.out.println("Exception on saving product: " + e);
			return false;
		}

		return true;
	}

	@Transactional
	public boolean update(Product product)
	{
		try
		{
			sessionFactory.getCurrentSession().update(product);
		}catch(Exception e)
		{
			System.out.println("Exception on updating product: " + e);
			return false;
		}

		return true;
	}

	@Transactional
	public boolean delete(String id)
	{
		product.setId(id);

		try
		{
			sessionFactory.getCurrentSession().delete(product);
		}catch(Exception e)
		{
			System.out.println("Exception on deleting product: " + e);
			return false;
		}

		return true;
	}
}