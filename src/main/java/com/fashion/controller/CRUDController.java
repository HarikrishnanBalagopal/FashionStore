package com.fashion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fashion.model.Product;

@Controller
public class CRUDController
{
	@RequestMapping("/AddProductAttempt")
	public ModelAndView addProductAttempt(@ModelAttribute("product") Product product, Model model)
	{
		ModelAndView modelView = new ModelAndView("AdminHome");
		return modelView;
	}
}
