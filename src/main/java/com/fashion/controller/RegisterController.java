package com.fashion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fashion.dao.UserDAO;
import com.fashion.model.User;
import com.fashion.model.UserDetails;

@Controller
public class RegisterController
{
	@Autowired
	UserDAO userdao;
	
	@RequestMapping("/Register")
	public String register(@ModelAttribute("userDetails") UserDetails userDetails)
	{
		return "Register";
	}
	
	@RequestMapping(value="/RegisterAttempt", method = RequestMethod.POST)
	public ModelAndView registerAttempt(@ModelAttribute("userDetails") UserDetails userDetails, ModelMap model)
	{
		ModelAndView modelview = null;
		if(userdao.validateRegistration(userDetails))
		{
			User user = new User();
			user.setEmail(userDetails.getEmail());
			user.setPassword(userDetails.getPassword());
			user.setAdmin(false);

			userdao.saveOrUpdate(user);
			userdao.saveOrUpdate(userDetails);
			
			modelview = new ModelAndView("UserHome");
			modelview.addObject("email", userDetails.getEmail());
		}
		else
		{
			modelview = new ModelAndView("Register");
			modelview.addObject("error", "Account already exists with given email");
		}
		return modelview;
	}
}