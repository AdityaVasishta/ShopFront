package com.aditya.shopfrontend.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.aditya.ShoppingBackend3.dao.ProductRepository;

import com.aditya.ShoppingBackend3.model.Product;


@Controller
public class ProductController {
	@Autowired
	Product product;
	@Autowired
	ProductRepository productRepository;
	
	

	@PostMapping("/addProduct")
	public String addProduct(@ModelAttribute("product")Product product,HttpSession session )
	{
		if(product.getProductId()==0) {
			
			if(productRepository.addProduct(product)) {
		MultipartFile file=product.getImage();
		
		ServletContext con=session.getServletContext();
		String filelocation=con.getRealPath("/resources/images/");
		System.out.println(filelocation);
		String filename=filelocation+"\\"+product.getProductId()+".jpg";
		System.out.println(filename);
		
		try{
			byte b[]=file.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
			fos.close();
	    	}
		catch(IOException ex)
		{
			
		}
		catch(Exception e)
		{
			
		}
			}	
		}
			else
				productRepository.updateProduct(product);

		return"redirect:/product";
		
	}
	@RequestMapping(value="/deleteProduct/{id}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("id") int prodId)
	{
		System.out.println("hello");
		productRepository.deleteProduct(prodId);
		return "redirect:/product";
		
	}
	
	@RequestMapping(value="/editProduct/{id}",method=RequestMethod.GET)
	public String editProduct(@PathVariable("id") int prodId, Model model)
	{
		System.out.println("hello");
		Product product = productRepository.getProduct(prodId);
	    model.addAttribute("product", product);
		productRepository.updateProduct(product);
		return "product";
		
	}
	@RequestMapping(value="/viewProduct/{id}",method=RequestMethod.GET)
	public String viewProductPage(@PathVariable("id") int categId,Model model)
	{
		List<Product> productList = productRepository.getProductFromCategory(categId);
		model.addAttribute("productList", productList );
        return "viewProducts";
		
	}

}
