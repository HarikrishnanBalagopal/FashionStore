package com.fashion.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fashion.dao.ProductDAO;
import com.fashion.dao.impl.ProductDAOImpl;
import com.fashion.model.Product;

@Controller
public class ProductListController
{
	@Autowired
	ProductDAO productDAO;

	@RequestMapping("/ProductList")
	String productList(ModelMap model)
	{
		Product p = new Product();
		p.setId("P0");
		p.setCategoryID("C0");
		p.setName("Cool");
		p.setPrice(800);
		p.setSupplierID("S0");
		p.setDescription("Nice test");
		List<Product> list = new ArrayList<Product>();
		list.add(p);
		//List<Product> productList = productDAO.list();
		model.addAttribute("productList", list);
		return "ProductList";
	}
}