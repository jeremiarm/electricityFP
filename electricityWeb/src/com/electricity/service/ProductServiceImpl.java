package com.electricity.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.electricity.dao.ProductsDAO;
import com.electricity.entity.Products;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductsDAO productsDAO;
	
	@Override
	@Transactional
	public List<Products> getProducts() {
		return productsDAO.getProducts();
	}

	@Override
	@Transactional
	public Products getProduct(int theId) {
		return productsDAO.getProduct(theId);
	}

}
