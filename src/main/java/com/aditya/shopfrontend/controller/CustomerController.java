package com.aditya.shopfrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.aditya.ShoppingBackend3.config.EmailService;
import com.aditya.ShoppingBackend3.dao.CustomerRepository;
import com.aditya.ShoppingBackend3.model.Customer;
import com.aditya.ShoppingBackend3.model.ShippingAddress;

@Controller
public class CustomerController {
	@Autowired
	Customer customer;
	
	@Autowired
	CustomerRepository customerRepository;
	@Autowired
	EmailService service;
	@Autowired
	ShippingAddress shippingAddress; 
	
/*	
	@RequestMapping(value="/addCustomer",method=RequestMethod.POST)
	public String addCustomer(@RequestParam("firstName") String firstName,
			                  @RequestParam() String password)
			                  //,@RequestParam("address") String addr 
	{
	    customer.setFirstName(firstName);
	    customer.setPassword(password);
	   // customer.setShippingAddress(addr);
	    System.out.println("hell error");
	    
	    if(customerRepository.addCustomer(customer))
	    {
	    	System.out.println("Data Added");
	    }
		
	    return "redirect:/customer";
		
	}
*/	
	@PostMapping("/addCustomer")
	public String addCustomer(@ModelAttribute("customer")Customer customer )
	{
		
		customerRepository.addCustomer(customer);
		service.createdEmployeeMessage(customer, "thanks for creating the account");
		return"redirect:/signup";
		
	}
	
	@RequestMapping(value="/deleteCustomer/{id}",method=RequestMethod.GET)
	public String deleteCustomer(@PathVariable("id") int custId)
	{
		System.out.println("hello");
		customerRepository.deleteCustomer(custId);
		return "redirect:/signup";
		
	}
	
	@RequestMapping(value="/editCustomer/{id}",method=RequestMethod.GET)
	public String editCustomer(@PathVariable("id") int custId, Model model)
	{
		System.out.println("hello");
		Customer customer = customerRepository.getCustomer(custId);
	    model.addAttribute("customer", customer);
		customerRepository.updateCustomer(customer);
		return "signup";
		
	}
	
	@RequestMapping(value="/signup")
	public ModelAndView signUpPage()
	{
		ModelAndView model=new ModelAndView("signup");
		model.addObject("title","Sign Up Page");
		model.addObject("customerList", customerRepository.getCustomerList());
	    customer.setShippingAddress(shippingAddress);
	    model.addObject("customer",customer);
		return model;
		
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public ModelAndView registerPage(@ModelAttribute() Customer customer)
	{
		ModelAndView model=new ModelAndView("signup");
		
		model.addObject("title","Sign Up Page");
		customerRepository.addCustomer(customer);
		System.out.println("Here register is called");
		
		return model;
		
	}
	
	
	


}
