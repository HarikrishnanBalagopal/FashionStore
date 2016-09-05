package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController
{
	@RequestMapping("/Home")
	public String login()
	{
		return "../../index";
	}
}
