package com.electricity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {

	@RequestMapping(value="/")
	public String home() {
		return "index";
	}
	
	@RequestMapping(value="/product")
	public String product() {
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
