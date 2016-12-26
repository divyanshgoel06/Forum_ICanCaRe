package com.icancare.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icancare.dto.PatientDTO;

@Controller
public class RegistrationController {

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public ModelAndView registrationPage(ModelMap modelMap) {
		return new ModelAndView("registration", "patientRegistration", new PatientDTO());
	}

	@RequestMapping(value = "/registerValidate", method = RequestMethod.POST)
	public ModelAndView getRegistrationCredentials(
			@ModelAttribute("patientRegistration") PatientDTO registrationCredentials, ModelMap modelMap) {

		System.out.println(registrationCredentials.getPatientName());
		System.out.println(registrationCredentials.getPatientEmailId());
		System.out.println(registrationCredentials.getMobileNumber());
		System.out.println(registrationCredentials.getPassword());
		System.out.println(registrationCredentials.getCountry());
		System.out.println(registrationCredentials.getState());
		System.out.println(registrationCredentials.getCity());
		System.out.println(registrationCredentials.getDisease());
		System.out.println("hello");
		ModelAndView modelAndView = new ModelAndView("redirect:/login");
		return modelAndView;
	}

}
