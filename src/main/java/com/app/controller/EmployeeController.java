package com.app.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.Admin;
import com.app.model.Employee;
import com.app.model.Person;
import com.app.validate.AdminValidator;
@Controller
@RequestMapping("/emp")
public class EmployeeController {
	
	@Autowired
	private AdminValidator validator;
	
	
	@RequestMapping("/reg")
	public ModelAndView showForm() {
		ModelAndView m=new ModelAndView();
		m.setViewName("Register");
//		return new ModelAndView("Register");
		return m;
	}
	@RequestMapping(value = "/save",method = POST)
	public ModelAndView readForm(@ModelAttribute("employee")Employee emp) {
		ModelAndView m=new ModelAndView();
		m.setViewName("Data");
		m.addObject("emp", emp);
		
		return m;
	}
	@RequestMapping("/spring")
	public ModelAndView showSpringForm() {
		
		ModelAndView m= new ModelAndView();
		m.setViewName("SpringForm");
		Person p=new Person();
		m.addObject("person",p);
		
		return m;
	}
	@RequestMapping(value = "/send",method = POST)
	public ModelAndView readSpringFromData(@ModelAttribute("person")Person p){
		ModelAndView m=new ModelAndView();
		m.setViewName("SpringFormData");
		m.addObject("pers",p);
		return m;
		
	}
	//Admin Controller
	
	  @RequestMapping("/regi") public ModelAndView showAdminForm() { ModelAndView
	  m=new ModelAndView(); m.setViewName("AdminRegister"); Admin a=new Admin();
	  m.addObject("admin",a);
	  
	  return m; }
	 
	
	/*
	 * @RequestMapping("/regi") public String showAdminForm(ModelMap map) {
	 * map.addAttribute("admin","a"); return "AdminRegister"; }
	 */
	
	@RequestMapping(value = "/sendAdmin" , method = POST)
	public ModelAndView formData(@ModelAttribute("admin")Admin ad,Errors errors) {
		validator.validate(ad, errors);
		ModelAndView m=new ModelAndView();
		
		if(errors.hasErrors()) {
			m.setViewName("AdminRegister");
		}else {
			m.setViewName("AdminData");
			m.addObject("admin",ad);	
		}
		return m;
	}
	

}
