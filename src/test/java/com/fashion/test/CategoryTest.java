package com.fashion.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.fashion.dao.CategoryDAO;
import com.fashion.model.Category;

public class CategoryTest
{
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.fashion");
		context.refresh();

		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		Category category = (Category) context.getBean("category");

		category.setId("C08");
		category.setName("TestCategory");
		category.setDescription("Test Description");

		if(categoryDAO.save(category))
			System.out.println("Category created");
		else
			System.out.println("Category not created");

		categoryDAO.delete("C08");

		context.close();
	}
}