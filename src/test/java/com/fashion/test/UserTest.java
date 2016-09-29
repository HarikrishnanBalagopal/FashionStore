package com.fashion.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.fashion.dao.UserDAO;
import com.fashion.model.User;

public class UserTest
{
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();

		UserDAO userDAO = (UserDAO) context.getBean("userDAO");
		User user = (User) context.getBean("user");
		user.setFirstName("bcd");
		user.setLastName("bcd");
		user.setPassword("password");
		user.setEmail("testuser@gmail.com");
		user.setContactNo("5555555555");

		if (userDAO.save(user))
			System.out.println("user created successfully");
		else
			System.out.println("not able to create the user");
		
		context.close();
	}
}