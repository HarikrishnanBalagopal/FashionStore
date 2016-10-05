package com.fashion.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fashion.dao.OrderDAO;
import com.fashion.dao.ProductDAO;
import com.fashion.dao.UserDAO;
import com.fashion.model.Order;
import com.fashion.model.Product;
import com.fashion.model.User;

@Controller
public class CartController
{
	@Autowired
	Order order;

	@Autowired
	HttpSession session;

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	UserDAO userDAO;

	@Autowired
	ProductDAO productDAO;

	@RequestMapping("/AddToCart")
	public String addToCart(@RequestParam("id") String id, ModelMap model)
	{
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			User user = userDAO.get(email);
			order.setUser(user);
			order.setProduct(productDAO.get(id));
			order.setQuantity(1);
			order.setStatus("PENDING");
			user.getOrders().add(order);
			return "redirect:/Cart";
		}

		return "redirect:/Login";
	}

	@RequestMapping("/Cart")
	public String cart(ModelMap model)
	{
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			List<Order> orderList = userDAO.get(email).getOrders();
			List<Product> productList = new ArrayList<Product>();
			for(Order o : orderList)
				productList.add(o.getProduct());
			model.addAttribute("orderList", orderList);
			model.addAttribute("productList", productList);
			return "user/Cart";
		}

		return "redirect:/Login";
	}
}