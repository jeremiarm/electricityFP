package com.electricity;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.electricity.entity.Account;
import com.electricity.entity.Products;
import com.electricity.entity.Seller;
import com.electricity.service.AccountService;
import com.electricity.service.ProductService;
import com.electricity.service.SellerService;

@Controller
public class WebController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private SellerService sellerService;
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value="/")
	public String home() {
		return "index";
	}
	
	@GetMapping(value="/product")
	public String product(Model theModel) {
		List<Products> theProducts = productService.getProducts();
		
		theModel.addAttribute("products", theProducts);
		return "product";
	}
	
	@RequestMapping(value="/shop")
	public String shop(Model theModel) {
		List<Seller> theSellers = sellerService.getSellers();
		theModel.addAttribute("sellers", theSellers);
		
		return "shop";
	}
	
	@RequestMapping(value="/shop-detail")
	public String shopdetail(@RequestParam("sellerId") int theId, Model theModel) {
		
		Seller theSellers = sellerService.getSeller(theId);
		
		theModel.addAttribute("seller", theSellers);
		
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
	
	@GetMapping(value="/product-edit")
	public String productEdit(Model theModel) {
		List<Products> theProducts = productService.getProducts();
		
		theModel.addAttribute("products", theProducts);
		
		return "product-edit";
	}
	
	@GetMapping(value="/shop-edit")
	public String shopEdit(Model theModel) {
		List<Seller> theSellers = sellerService.getSellers();
		
		theModel.addAttribute("sellers", theSellers);
		
		return "shop-edit";
	}
	
	@GetMapping("/showFormForAddProduct")
	public String showFormForAddProduct(Model theModel) {
		Products theProduct = new Products();
		
		theModel.addAttribute("product", theProduct);
		
		return "product-form";
	}
	
	@PostMapping("/saveProduct")
	public String saveCustomer(@ModelAttribute("product") Products theProduct) {
		
		productService.saveProduct(theProduct);
		
		return "redirect:/product-edit";
	}
	
	
	@GetMapping("/showFormForUpdateProduct")
	public String showFormForUpdateProduct(@RequestParam("productId") int theId,
											Model theModel) {
		
		Products theProduct = productService.getProduct(theId);
		
		theModel.addAttribute("product", theProduct);
		
		return "product-form";
	}
	
	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("productId") int theId) {

		productService.deleteProduct(theId);

		return "redirect:/product-edit";
	}
	
	@GetMapping("/showLoginForm")
	public String showLoginForm(Model theModel) {
		Account theAccount = new Account();
		
		theModel.addAttribute("account", theAccount);
		
		return "account-form";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute("account") Account theAccount, HttpSession session) {
		session.invalidate();
		String result = accountService.checkAccount(theAccount);
		System.out.println(result);
		if (result.equals("accepted")) {
			session.setAttribute("username",theAccount.getAccountUsername());
			return "redirect:/";
		}
		else {
			session.invalidate();
			return "redirect:/showLoginForm";
		}
	}
}
