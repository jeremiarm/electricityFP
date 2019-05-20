package com.electricity;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
	public String productEdit(Model theModel,HttpSession session) {
		if (session.getAttribute("username")==null) return "redirect:/product";
		List<Products> theProducts = productService.getProducts();
		
		theModel.addAttribute("products", theProducts);
		
		return "product-edit";
	}
	
	@GetMapping(value="/shop-edit")
	public String shopEdit(Model theModel,HttpSession session) {
		if (session.getAttribute("username")==null) return "redirect:/shop";
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
	
	@GetMapping("/showFormForAddSeller")
	public String showFormForAddSeller(Model theModel) {
		Seller theSeller = new Seller();
		
		theModel.addAttribute("seller", theSeller);
		
		return "shop-form";
	}
	
	@PostMapping("/saveProduct")
	public String saveProduct(@ModelAttribute("product") Products theProduct) {
		
		productService.saveProduct(theProduct);
		
		return "redirect:/product-edit";
	}
	
	@PostMapping("/saveSeller")
	public String saveSeller(@ModelAttribute("seller") Seller theSeller) {
		
		sellerService.saveSeller(theSeller);
		
		return "redirect:/shop-edit";
	}
	
	@GetMapping("/showFormForUpdateProduct")
	public String showFormForUpdateProduct(@RequestParam("productId") int theId,
											Model theModel) {
		
		Products theProduct = productService.getProduct(theId);
		
		theModel.addAttribute("product", theProduct);
		
		return "product-form";
	}
	
	@GetMapping("/showFormForUpdateSeller")
	public String showFormForUpdateSeller(@RequestParam("sellerId") int theId,
											Model theModel) {
		
		Seller theSeller = sellerService.getSeller(theId);
		
		theModel.addAttribute("seller", theSeller);
		
		return "shop-form";
	}
	
	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("productId") int theId) {

		productService.deleteProduct(theId);

		return "redirect:/product-edit";
	}
	
	@GetMapping("/deleteSeller")
	public String deleteSeller(@RequestParam("sellerId") int theId) {

		sellerService.deleteSeller(theId);

		return "redirect:/shop-edit";
	}
	
	@GetMapping("/showLoginForm")
	public String showLoginForm(Model theModel, HttpSession session) {
		if (session.getAttribute("username")!=null) return "redirect:/";
		Account theAccount = new Account();
		
		theModel.addAttribute("account", theAccount);
		
		return "account-form";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute("account") Account theAccount, HttpSession session) {
		String result = accountService.checkAccount(theAccount);
		//System.out.println(result);
		if (result.equals("accepted")) {
			session.setAttribute("username", theAccount.getAccountUsername());
			System.out.println(session.getAttribute("username"));
			return "redirect:/";
		}
		else {
			session.removeAttribute("username");
			System.out.println(session.getAttribute("username"));
			return "redirect:/showLoginForm";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("username");
		return "redirect:/";
	}
}
