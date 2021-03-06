package com.fashion.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Entity
@Component
public class User implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4325274094019215286L;

	@Id
	@NotBlank(message = "Email cannot be blank")
	private String email;

	@NotBlank(message = "Password cannot be blank")
	private String password;

	@NotBlank(message = "Role cannot be blank")
	private String role;
	private boolean enabled = true;
	
	@Column(name = "first_name")
	@NotBlank(message = "First Name cannot be blank")
	private String firstName;

	@Column(name = "last_name")
	@NotBlank(message = "Last Name cannot be blank")
	private String lastName;

	@Column(name = "contact_no")
	@NotBlank(message = "Contact No cannot be blank")
	private String contactNo;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "shipping_id", nullable = false)
	private Address shippingAddress = new Address();

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "billing_id", nullable = false)
	private Address billingAddress = new Address();

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<CardDetails> cardDetails = new ArrayList<CardDetails>();

	@OneToMany(mappedBy = "user", orphanRemoval=true, cascade = CascadeType.ALL)
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<Order> orders = new ArrayList<Order>();

	public List<Order> getOrders()
	{
		return orders;
	}

	public void setOrders(List<Order> orders)
	{
		this.orders = orders;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getRole()
	{
		return role;
	}

	public void setRole(String role)
	{
		this.role = role;
	}

	public String getFirstName()
	{
		return firstName;
	}

	public void setFirstName(String firstName)
	{
		this.firstName = firstName;
	}

	public String getLastName()
	{
		return lastName;
	}

	public void setLastName(String lastName)
	{
		this.lastName = lastName;
	}

	public String getContactNo()
	{
		return contactNo;
	}

	public void setContactNo(String contactNo)
	{
		this.contactNo = contactNo;
	}

	public Address getShippingAddress()
	{
		return shippingAddress;
	}

	public void setShippingAddress(Address shippingAddress)
	{
		this.shippingAddress = shippingAddress;
	}

	public Address getBillingAddress()
	{
		return billingAddress;
	}

	public void setBillingAddress(Address billingAddress)
	{
		this.billingAddress = billingAddress;
	}

	public List<CardDetails> getCardDetails()
	{
		return cardDetails;
	}

	public void setCardDetails(List<CardDetails> cardDetails)
	{
		this.cardDetails = cardDetails;
	}

	public boolean isEnabled()
	{
		return enabled;
	}

	public void setEnabled(boolean enabled)
	{
		this.enabled = enabled;
	}
}