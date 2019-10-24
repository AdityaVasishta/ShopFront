package com.aditya.shopfrontend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.aditya.ShoppingBackend3.dao.CategoryRepository;
import com.aditya.ShoppingBackend3.dao.CustomerRepository;
import com.aditya.ShoppingBackend3.dao.ProductRepository;
import com.aditya.ShoppingBackend3.model.Category;
import com.aditya.ShoppingBackend3.model.Customer;
import com.aditya.ShoppingBackend3.model.Product;
import com.aditya.ShoppingBackend3.model.ShippingAddress;

@Controller
public class HomeController {
	
	@Autowired
	Customer customer;
	@Autowired
	CustomerRepository customerRepository;

	@Autowired
	Category category;
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	Product product;
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	HttpSession httpSession;
	

	
	@Autowired
	ShippingAddress shippingAddress; 
	
	
	@GetMapping("/customer")
	public String customerHomePage(Model model) {
		
		System.out.println("hello  customerHomePage()");
	model.addAttribute("customer", customer);
	 	 return"customer";
	 	 
	}
	
	@GetMapping("/category")
	public String categoryHomePage(Model model) {
		
		System.out.println("hello  categoryHomePage()");
	model.addAttribute("category", category);
	model.addAttribute("categoryList", categoryRepository.getCategoryList());
	 	 return"category";
	 	 
	}
	
	@GetMapping("/product")
	public String productHomePage(Model model) {
		
		System.out.println("hello  productHomePage()");
	model.addAttribute("product", product);
	model.addAttribute("categoryList", categoryRepository.getCategoryList());
	model.addAttribute("productList", productRepository.getProductList());
	 	 return"product";
	 	 
	}
	
	@RequestMapping(value="/index")
	public ModelAndView homePagetwo()
	{
		ModelAndView model=new ModelAndView("index");
		model.addObject("message","welcome");
	    httpSession.setAttribute("categoryList",categoryRepository.getCategoryList() );
		return model;
		
	}
	@RequestMapping("/")
	public String indexpage() {
		return "index";
	} 
/*	
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
		
		
		return model;
		
	}
*/
	@RequestMapping("/adminHome")
	public String adminPage() {
		
		System.out.println("hello world");
		return "admin";
		
	}
	@RequestMapping("/login")
	public ModelAndView loginPage() {
		
		ModelAndView model=new ModelAndView("/login");
		httpSession.setAttribute("categoryList",categoryRepository.getCategoryList() );
		System.out.println("hello login");
		return model;
		
	}

	@RequestMapping("/addToCart")
	public String cartPage() {
		
		System.out.println("hello world");
		return "productDetails";
		
	}
	
	
	
}
