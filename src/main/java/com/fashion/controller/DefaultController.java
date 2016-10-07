package com.fashion.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController
{	
	private static List<String> cityList = new ArrayList<String>();

	@Autowired
	HttpSession session;
	
	public DefaultController()
	{
		cityList.add("city0");
		cityList.add("city1");
		cityList.add("city2");
		cityList.add("city3");
	}
	
	@RequestMapping("/Home")
	public String home()
	{
		session.setAttribute("cityList", cityList);
		return "../../index";
	}

	@RequestMapping("/AboutUs")
	public String aboutUs()
	{
		return "user/AboutUs";
	}

	@RequestMapping("/ContactUs")
	public String contactUs()
	{
		return "user/ContactUs";
	}
}