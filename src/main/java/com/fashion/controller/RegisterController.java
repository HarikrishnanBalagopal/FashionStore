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

import com.fashion.dao.AddressDAO;
import com.fashion.dao.CardDetailsDAO;
import com.fashion.dao.UserDAO;
import com.fashion.model.Address;
import com.fashion.model.User;
import com.fashion.model.UserDetails;

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
	public String register(@ModelAttribute("userDetails") UserDetails userDetails, ModelMap model)
	{
		model.addAttribute("cityList", cityList);
		return "user/Register";
	}
	
	@RequestMapping(value="/RegisterAttempt", method = RequestMethod.POST)
	public ModelAndView registerAttempt(@ModelAttribute("userDetails") UserDetails userDetails, ModelMap model)
	{
		ModelAndView modelview = null;
		if(userDAO.validateRegistration(userDetails))
		{
			userDAO.registerUser(userDetails);
			modelview = new ModelAndView("user/UserHome");
			session.setAttribute("email", userDetails.getUser().getEmail());
		}
		else
		{
			modelview = new ModelAndView("user/Register");
			modelview.addObject("error", "Account already exists with given email");
		}
		return modelview;
	}
}