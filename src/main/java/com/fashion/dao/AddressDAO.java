package com.fashion.dao;

import java.util.List;

import com.fashion.model.Address;

public interface AddressDAO
{
	public List<Address> list(int sortOrder);

	public Address get(int id);

	public boolean save(Address address);

	public boolean update(Address address);

	public boolean delete(int id);
}