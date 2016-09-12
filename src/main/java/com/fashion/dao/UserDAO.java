package com.fashion.dao;

import java.util.List;

import com.fashion.model.User;
import com.fashion.model.UserDetails;

public interface UserDAO
{
	public List<User> list();

	public User get(String id);

	public void saveOrUpdate(User user);

	public void saveOrUpdate(UserDetails userDetails);

	public void delete(String id);

	public boolean isValidUser(String email, String password, boolean isAdmin);
}