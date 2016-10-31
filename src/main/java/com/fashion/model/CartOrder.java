package com.fashion.model;

import java.math.BigDecimal;

public class CartOrder
{
	private int orderID;
	private String productID;
	private BigDecimal price;
	private int quantity;
	private String name;
	
	public CartOrder(int orderID, String productID, BigDecimal price, int quantity, String name)
	{
		this.orderID = orderID;
		this.productID = productID;
		this.price = price;
		this.quantity = quantity;
		this.name = name;
	}
	public int getOrderID()
	{
		return orderID;
	}
	public void setOrderID(int orderID)
	{
		this.orderID = orderID;
	}
	public String getProductID()
	{
		return productID;
	}
	public void setProductID(String productID)
	{
		this.productID = productID;
	}
	public BigDecimal getPrice()
	{
		return price;
	}
	public void setPrice(BigDecimal price)
	{
		this.price = price;
	}
	public int getQuantity()
	{
		return quantity;
	}
	public void setQuantity(int quantity)
	{
		this.quantity = quantity;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
}