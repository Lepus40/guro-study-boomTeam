package com.study.boom;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController
{
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) throws ClassNotFoundException
	{
		return "home";
	}

}
