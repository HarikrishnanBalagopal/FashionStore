package com.fashion.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Supplier implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3725512670804724194L;

	@Id
	@GeneratedValue
	private int id;

	@NotBlank(message = "Supplier Name cannot be blank")
	private String name;

	@NotBlank(message = "Supplier Address cannot be blank")
	private String address;

	@OneToMany(mappedBy = "supplier", cascade = CascadeType.ALL)
	private List<Product> products = new ArrayList<Product>();

	public List<Product> getProducts()
	{
		return products;
	}

	public void setProducts(List<Product> products)
	{
		this.products = products;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}
}