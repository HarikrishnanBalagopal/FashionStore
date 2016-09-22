package com.fashion.dao;

import java.util.List;

import com.fashion.model.Category;

public interface CategoryDAO
{
	public List<Category> list(int sortOrder);

	public Category get(String id);

	public boolean save(Category category);

	public boolean update(Category category);

	public boolean delete(String id);
}