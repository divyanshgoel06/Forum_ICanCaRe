package com.icancare.application.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icancare.dto.LoginDTO;
import com.icancare.dto.PatientDTO;

@Controller
public class LoginController {

	@RequestMapping(value = { "/", "login" }, method = RequestMethod.GET)
	public ModelAndView showlogin(ModelMap modelMap) {

		return new ModelAndView("login", "getLoginCredentials", new LoginDTO());
	}

	@RequestMapping(value = "/loginValidate", method = RequestMethod.POST)
	public ModelAndView ValidateLogin(@ModelAttribute LoginDTO loginCredentials, ModelMap modelMap,
			HttpSession session) {

		ModelAndView modelAndView;
		System.out.println(loginCredentials.getEmail());
		System.out.println(loginCredentials.getPassword());
		System.out.println("Hello this is shwet");
		
//		modelAndView = new ModelAndView();
		modelAndView = new ModelAndView("redirect:/registration", "patientRegistration", new PatientDTO());

		return modelAndView;
	}

}
