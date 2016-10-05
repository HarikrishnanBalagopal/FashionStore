package com.fashion.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fashion.dao.UserDAO;
import com.fashion.model.User;

@Controller
public class RegisterController
{
	@Autowired
	UserDAO userDAO;

	@Autowired
	HttpSession session;

	private static List<String> cityList = new ArrayList<String>();

	public RegisterController()
	{
		cityList.add("city0");
		cityList.add("city1");
		cityList.add("city2");
		cityList.add("city3");
	}

	@RequestMapping("/Register")
	public String register(@ModelAttribute User user, ModelMap model)
	{
		model.addAttribute("cityList", cityList);
		return "user/Register";
	}

	@RequestMapping(value = "/RegisterAttempt", method = RequestMethod.POST)
	public ModelAndView registerAttempt(@ModelAttribute("user") User user, ModelMap model)
	{
		ModelAndView modelview = null;
		if(userDAO.validateRegistration(user))
		{
			userDAO.registerUser(user);
			modelview = new ModelAndView("user/UserHome");
			session.setAttribute("email", user.getEmail());
		}else
		{
			modelview = new ModelAndView("user/Register");
			modelview.addObject("error", "Account already exists with given email");
		}
		return modelview;
	}
}