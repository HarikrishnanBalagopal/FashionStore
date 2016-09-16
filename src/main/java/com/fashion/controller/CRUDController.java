package com.fashion.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fashion.dao.CategoryDAO;
import com.fashion.dao.ProductDAO;
import com.fashion.dao.SupplierDAO;
import com.fashion.model.Category;
import com.fashion.model.Product;
import com.fashion.model.Supplier;

@Controller
public class CRUDController
{
	public static long id = 0;
	
	@Autowired
	CategoryDAO categorydao;
	
	@Autowired
	SupplierDAO supplierdao;
	
	@Autowired
	ProductDAO productdao;
	
	@RequestMapping("/AddProduct")
	public ModelAndView addProduct(@ModelAttribute("product") Product product)
	{
		ModelAndView modelView = new ModelAndView("AddProduct");
		List<Category> clist = categorydao.list();
		List<Supplier> slist = supplierdao.list();

		Map<String,String> cmap = new LinkedHashMap<String,String>();
		Map<String,String> smap = new LinkedHashMap<String,String>();

		for(Category c: clist)
			cmap.put(c.getId(), c.getName());
		for(Supplier s: slist)
			smap.put(s.getId(), s.getName());
		
		modelView.addObject("categoryList", cmap);
		modelView.addObject("supplierList", smap);

		return modelView;
	}
	
	@RequestMapping("/AddProductAttempt")
	public String addProductAttempt(@ModelAttribute("product") Product product, Model model)
	{
		product.setId(String.valueOf(id++));
		productdao.saveOrUpdate(product);
		return "redirect:/ProductList";
	}
}