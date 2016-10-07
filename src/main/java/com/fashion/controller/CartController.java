package com.fashion.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	Logger log = LoggerFactory.getLogger(CartController.class);

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
		log.debug("MethodStart: addToCart");
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			log.info("Email:" + email);
			User user = userDAO.get(email);
			order.setUser(user);
			order.setProduct(productDAO.get(id));
			order.setQuantity(1);
			order.setStatus("PENDING");
			user.getOrders().add(order);
			userDAO.update(user);
			log.debug("MethodEnd: addToCart-Cart");

			return "redirect:/Cart";
		}
		log.debug("MethodEnd: addToCart-Login");

		return "redirect:/Login";
	}

	@RequestMapping("/UpdateCart")
	public String updateCart(@RequestParam("id") int id, @RequestParam("quantity") int quantity, ModelMap model)
	{
		log.debug("MethodStart: updateCart");
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			log.info("Email:" + email);
			Order o = orderDAO.get(id);
			o.setQuantity(quantity);
			log.info("Order in updateCart:" + o.toString());
			orderDAO.update(o);
			log.debug("MethodEnd: updateCart-Cart");

			return "redirect:/Cart";
		}
		log.debug("MethodEnd: updateCart-Login");

		return "redirect:/Login";
	}

	@RequestMapping("/RemoveFromCart")
	public String removeFromCart(@RequestParam("id") int id, ModelMap model)
	{
		log.debug("MethodStart: removeFromCart");
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			log.info("Email:" + email);
			User user = userDAO.get(email);
			Order o = orderDAO.get(id);
			user.getOrders().remove(o);
			userDAO.update(user);
			log.debug("MethodEnd: removeFromCart-Cart");

			return "redirect:/Cart";
		}
		log.debug("MethodEnd: removeFromCart-Login");

		return "redirect:/Login";
	}

	@RequestMapping("/Cart")
	public String cart(ModelMap model)
	{
		log.debug("MethodStart: cart");
		String email = (String) session.getAttribute("email");
		if(email != null)
		{
			log.info("Email:" + email);
			BigDecimal total = new BigDecimal(0);
			List<Order> orderList = userDAO.get(email).getOrders();
			List<Product> productList = new ArrayList<Product>();
			for(Order o : orderList)
			{
				productList.add(o.getProduct());
				total = total.add(o.getProduct().getPrice().multiply(new BigDecimal(o.getQuantity())));
			}
			model.addAttribute("orderList", orderList);
			model.addAttribute("productList", productList);
			model.addAttribute("total", total);
			log.debug("MethodEnd: cart-Cart");

			return "user/Cart";
		}
		log.debug("MethodEnd: cart-Login");

		return "redirect:/Login";
	}
}