package com.electricity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.electricity.entity.Products;
import com.electricity.service.ProductService;

@Controller
public class WebController {

	@Autowired
	private ProductService productService;
	
	
	@RequestMapping(value="/")
	public String home() {
		return "index";
	}
	
	@RequestMapping(value="/product")
	public String product(Model theModel) {
		List<Products> theProducts = productService.getProducts();
		
		theModel.addAttribute("products", theProducts);
		return "product";
	}
	
	@RequestMapping(value="/shop")
	public String shop() {
		return "shop";
	}
	
	@RequestMapping(value="/shop-detail")
	public String shopdetail() {
		return "shop-detail";
	}
	
	@GetMapping(value="/product-detail")
	public String productdetail(@RequestParam("productId") int theId, Model theModel) {
		
		Products theProduct = productService.getProduct(theId);
		
		theModel.addAttribute("product", theProduct);
		
		return "product-detail";
	}
	
	@RequestMapping(value="/contact")
	public String contact() {
		return "contact";
	}
}
