package com.aditya.shopfrontend.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.aditya.ShoppingBackend3.dao.CategoryRepository;
import com.aditya.ShoppingBackend3.model.Category;


@Controller
public class CategoryController {
	@Autowired
	Category category;
	@Autowired
	CategoryRepository categoryRepository;

	
	@PostMapping("/addCategory")
	public String addCategory(@ModelAttribute("category")Category category,HttpSession session )
	{
		if(category.getCategoryId()==0)
			categoryRepository.addCategory(category);
			else
				categoryRepository.updateCategory(category);

		return"redirect:/category";
		
	}
	@RequestMapping(value="/deleteCategory/{id}",method=RequestMethod.GET)
	public String deleteCategory(@PathVariable("id") int categId)
	{
		System.out.println("hello");
		categoryRepository.deleteCategory(categId);
		return "redirect:/category";
		
	}
	
	@RequestMapping(value="/editCategory/{id}",method=RequestMethod.GET)
	public String editCategory(@PathVariable("id") int categId, Model model)
	{
		System.out.println("hello");
		Category category = categoryRepository.getCategory(categId);
	    model.addAttribute("category", category);
		return "category";
		
	}
	


}
