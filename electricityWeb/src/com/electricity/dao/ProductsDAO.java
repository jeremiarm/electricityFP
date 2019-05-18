package com.electricity.dao;

import java.util.List;

import com.electricity.entity.Products;

public interface ProductsDAO {
	public List<Products> getProducts();

	public Products getProduct(int theId);
}
