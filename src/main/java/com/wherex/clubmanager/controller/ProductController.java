package com.wherex.clubmanager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wherex.clubmanager.entity.Product;
import com.wherex.clubmanager.service.ProductService;

@Controller
@RequestMapping("/products")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/list")
	public String listProducts(Model theModel) {
	
		Product newProduct = new Product();
		
		theModel.addAttribute("newProduct",newProduct);
				
		List<Product> products = productService.getProducts();
		
		theModel.addAttribute("products", products);
		
		return "stock";
	}
	
	@PostMapping("/addProduct")
	public String addProduct(@ModelAttribute("newProduct")Product newProduct) {
		productService.addProduct(newProduct);
		return"redirect:/products/list";
	}
	
	@PostMapping("/deleteProduct")
	public String deleteProduct(@ModelAttribute("newProduct")Product newProduct) {
		productService.deleteProduct(newProduct);
		return "redirect:/products/list";
	}
	
	@PostMapping("/updateProduct")
	public String updateProduct(@ModelAttribute("newProduct")Product newProduct) {
		productService.updateProduct(newProduct);
		return "redirect:/products/list";
	}
	
	

}
