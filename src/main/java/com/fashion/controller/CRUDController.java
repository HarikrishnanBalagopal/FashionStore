package com.fashion.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/AddProduct")
	public ModelAndView addProduct(@ModelAttribute("product") Product product)
	{
		ModelAndView modelView = new ModelAndView("AddProduct");
		List<Category> clist = categoryDAO.list();
		List<Supplier> slist = supplierDAO.list();

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
	public String addProductAttempt(@ModelAttribute("product") Product product, HttpServletRequest request, Model model)
	{
		ServletContext context=request.getServletContext();
		String path = context.getRealPath("./resources/images/products/" + product.getName()+ ".jpg");
		
		System.out.println("Path = " + path);
		System.out.println("File name = " + product.getImage().getOriginalFilename());

		if(!product.getImage().isEmpty())
		{
			try
			{
				File f = new File(path);
				f.createNewFile();
				byte[] bytes = product.getImage().getBytes();
				BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
			}
			catch(Exception e)
			{
				System.out.println("Exception occured while uploading image: " + e);
			}
		}
		
		productDAO.saveOrUpdate(product);
		
		return "redirect:/ProductList";
	}
	
	@RequestMapping("/AdminProductList")
	public ModelAndView adminProductList(@RequestParam(value = "sort", required = false) Integer sort, ModelMap model)
	{
		ModelAndView modelView = new ModelAndView("AdminProductList");
		int s = 0;
		if(sort != null)
			s = sort;
		List<Product> productList = productDAO.list(s);
		modelView.addObject("productList", productList);
		modelView.addObject("sortOrder", s);
		return modelView;
	}
}