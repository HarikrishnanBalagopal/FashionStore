package com.fashion.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
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
	private SessionFactory sessionFactory;

	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Product> list(int sortOrder)
	{
		String sort = "name";
		
		switch(sortOrder)
		{
			case 0:
			case 1:
			case 2:
			case 3:
				sort = "name";
				break;
				
			case 4:
				sort = "price";
				break;
			
			default:
				sort = "name";
		}
		
		String hql = "from Product order by " + sort;
		System.out.println(hql);
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();

		return listProduct;
	}

	@Transactional
	public void saveOrUpdate(Product product)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	@Transactional
	public void delete(Integer id)
	{
		Product ProductToDelete = new Product();
		ProductToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(ProductToDelete);
	}

	@Transactional
	public Product get(Integer id)
	{
		String hql = "from product where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();

		if (listProduct != null && !listProduct.isEmpty())
		{
			return listProduct.get(0);
		}

		return null;
	}
}