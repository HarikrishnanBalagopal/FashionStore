package com.fashion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController
{
	@RequestMapping("/ProductGrid")
	public String productGrid()
	{
		return "ProductGrid";
	}
}
