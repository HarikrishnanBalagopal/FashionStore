package com.fashion.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fashion.dao.OrderDAO;
import com.fashion.model.Order;

@Controller
public class CartController
{
	@Autowired
	HttpSession session;
	
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping("/AddToCart")
	public String addToCart(@RequestParam("id") String id, ModelMap model)
	{
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			Order order = new Order();
			order.setEmail(email);
			order.setProductID(id);
			order.setQuantity(1);
			order.setStatus("PENDING");
			orderDAO.save(order);
			model.addAttribute("orderList", orderDAO.getAll(orderDAO.byEmail(email)));			
		}
		return "Cart";
	}
}