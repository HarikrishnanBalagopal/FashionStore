package com.fashion.dao;

import java.util.List;

import com.fashion.model.User;
import com.fashion.model.UserDetails;

public interface UserDAO
{
	public List<User> list(int sortOrder);

	public User get(String email);

	public boolean save(User user);
	
	public boolean update(User user);

	public boolean delete(String email);

	public User getValidUser(User user);
	
	public boolean validateRegistration(UserDetails userDetails);
	
	public void registerUser(UserDetails userDetails);
}