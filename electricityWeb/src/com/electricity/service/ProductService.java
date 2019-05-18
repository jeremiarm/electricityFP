package com.electricity.service;

import java.util.List;

import com.electricity.entity.Products;

public interface ProductService {
	public List<Products> getProducts();

	public Products getProduct(int theId);
}
