package com.fashion.dao;

import java.util.List;

import com.fashion.model.Product;

public interface ProductDAO
{
	public List<Product> list(int sortOrder);

	public Product get(Integer id);

	public void saveOrUpdate(Product product);

	public void delete(Integer id);
}