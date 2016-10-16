package com.fashion.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController
{
	Logger log = LoggerFactory.getLogger(DefaultController.class);

	private static List<String> cityList = new ArrayList<String>();

	@Autowired
	HttpSession session;

	public DefaultController()
	{
		log.debug("MethodStart: DefaultController");
		cityList.add("city0");
		cityList.add("city1");
		cityList.add("city2");
		cityList.add("city3");
		log.debug("MethodEnd: DefaultController");
	}

	@RequestMapping("/Home")
	public String home()
	{
		log.debug("MethodStart: home");
		session.setAttribute("cityList", cityList);
		log.debug("MethodEnd: home");

		return "../../index";
	}

	@RequestMapping("/AboutUs")
	public String aboutUs()
	{
		log.debug("MethodStart: aboutUs");
		log.debug("MethodEnd: aboutUs");

		return "user/AboutUs";
	}

	@RequestMapping("/ContactUs")
	public String contactUs()
	{
		log.debug("MethodStart: contactUs");
		log.debug("MethodEnd: contactUs");

		return "user/ContactUs";
	}
}