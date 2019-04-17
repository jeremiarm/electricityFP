package com.electricity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {

	@RequestMapping(value="/")
	public String home() {
		return "index";
	}
	
	@RequestMapping(value="/items")
	public String item() {
		return "item";
	}
	
	@RequestMapping(value="/shops")
	public String shop() {
		return "shop";
	}
	
	@RequestMapping(value="/shop-detail")
	public String shopdetail() {
		return "shopdetail";
	}
	
	@RequestMapping(value="/item-detail")
	public String itemdetail() {
		return "itemdetail";
	}
}
