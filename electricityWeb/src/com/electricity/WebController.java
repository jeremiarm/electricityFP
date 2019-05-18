package com.electricity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.electricity.dao.ElectricityDAO;
import com.electricity.entity.Products;

@Controller
public class WebController {

	@Autowired
	private ElectricityDAO electricityDAO;
	
	
	@RequestMapping(value="/")
	public String home() {
		return "index";
	}
	
	@RequestMapping(value="/product")
	public String product(Model theModel) {
		List<Products> theProducts = electricityDAO.getProducts();
		
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
	
	@RequestMapping(value="/product-detail")
	public String productdetail() {
		return "product-detail";
	}
	
	@RequestMapping(value="/contact")
	public String contact() {
		return "contact";
	}
}
