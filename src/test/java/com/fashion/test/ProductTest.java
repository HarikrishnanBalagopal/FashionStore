package com.fashion.test;

import java.math.BigDecimal;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.fashion.dao.ProductDAO;
import com.fashion.model.Product;

public class ProductTest
{
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.fashion");
		context.refresh();

		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		Product product = (Product) context.getBean("product");
		product.setId("MOB_004");
		product.setName("samsung");
		product.setPrice(BigDecimal.valueOf(16000));
		product.setDescription("samsung desc");

		if (productDAO.save(product))
			System.out.println("product created successfully");
		else
			System.out.println("not able to create the product");
		
		context.close();
	}
}