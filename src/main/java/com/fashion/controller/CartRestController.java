package com.fashion.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fashion.dao.OrderDAO;
import com.fashion.dao.UserDAO;
import com.fashion.model.CartOrder;
import com.fashion.model.Order;
import com.fashion.model.Product;
import com.fashion.model.User;

@RestController
public class CartRestController
{
	@Autowired
	OrderDAO orderDAO;

	@Autowired
	UserDAO userDAO;

	@Autowired
	HttpSession session;

	@RequestMapping("/cartRest")
	public List<CartOrder> cartRest()
	{
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			List<Order> orderList = userDAO.get(email).getOrders();
			List<CartOrder> orderList2 = new ArrayList<CartOrder>();
			for(Order o : orderList)
				if(o.getStatus().equals("PENDING"))
				{
					Product p = o.getProduct();
					orderList2.add(new CartOrder(o.getId(), p.getId(), p.getPrice(), o.getQuantity(), p.getName()));
				}

			return orderList2;
		}

		return null;
	}

	@RequestMapping("/cartRestUpdate")
	public List<CartOrder> cartRestRemove(@RequestParam("id") int id, @RequestParam("quantity") int quantity)
	{
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			Order o = orderDAO.get(id);
			if(o.getProduct().getQuantity() < quantity)
				quantity = o.getProduct().getQuantity();
			else if(quantity < 1)
				quantity = 1;
			o.setQuantity(quantity);
			orderDAO.update(o);
			List<Order> orderList = userDAO.get(email).getOrders();
			List<CartOrder> orderList2 = new ArrayList<CartOrder>();
			for(Order o1 : orderList)
				if(o1.getStatus().equals("PENDING"))
				{
					Product p = o1.getProduct();
					orderList2.add(new CartOrder(o1.getId(), p.getId(), p.getPrice(), o1.getQuantity(), p.getName()));
				}

			return orderList2;
		}

		return null;
	}

	@RequestMapping("/cartRestRemove")
	public void cartRestRemove(@RequestParam("id") int id)
	{
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			User user = userDAO.get(email);
			Order o = orderDAO.get(id);
			user.getOrders().remove(o);
			userDAO.update(user);
		}
	}
}