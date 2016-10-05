package com.fashion.dao;

import java.util.List;

import com.fashion.model.Order;

public interface OrderDAO
{
	public List<Order> list();

	public Order get(int id);

	public boolean save(Order order);

	public boolean update(Order order);

	public boolean delete(int id);
}