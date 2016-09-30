package com.fashion.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.fashion.dao.CategoryDAO;
import com.fashion.model.Category;

public class TestCaseCategory
{	
	@Autowired
	private static CategoryDAO categoryDAO;
	
	@Autowired
	private static Category category;
	
	@Autowired
	private static AnnotationConfigApplicationContext context;
	
	@BeforeClass
	public static void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.fashion");
		context.refresh();
		
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		category = (Category) context.getBean("category");		
	}

	@Test
	public void categoryListTestCase()
	{
		List<Category> list0 = categoryDAO.list(0);		
		assertEquals("Category List Test Case", 5, list0.size());
		List<Category> list1 = categoryDAO.listFlag(true, 0);
		assertEquals("Category List Flag Test Case", 5, list1.size());
	}

	@Test
	public void categoryAddTestCase()
	{
		category.setId("C08");
		category.setName("Category08");
		category.setDescription("TestDesc08");
		category.setMale(true);
		
		assertEquals("Create Category", true, categoryDAO.save(category));
	}
	
	@Test
	public void categoryUpdateTestCase()
	{
		category.setId("C08");
		category.setName("Category16");
		category.setDescription("TestDesc16");
		
		assertEquals("Update Category", true, categoryDAO.update(category));
	}
	
	@Test
	public void categoryGetTestCase()
	{
		category = categoryDAO.get("0");
		assertNotNull(category);
		assertEquals("Get Category", "Shirts", category.getName());
	}
	
	@Test
	public void categoryDeleteTestCase()
	{
		assertEquals("Delete Category", true, categoryDAO.delete("C08"));
	}
}