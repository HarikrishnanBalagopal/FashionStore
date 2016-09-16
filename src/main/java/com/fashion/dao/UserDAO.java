package com.fashion.dao;

import java.util.List;

import com.fashion.model.User;
import com.fashion.model.UserDetails;

public interface UserDAO
{
	public List<User> list();

	public User get(Integer id);

	public void saveOrUpdate(User user);

	public void saveOrUpdate(UserDetails userDetails);

	public void delete(Integer id);

	public boolean isValidUser(String email, String password, boolean isAdmin);
	
	public boolean validateRegistration(UserDetails userDetails);
}