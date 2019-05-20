package com.electricity.dao;

import java.util.List;

import com.electricity.entity.Seller;


public interface SellerDAO {
	public List<Seller> getSellers();
	
	public Seller getSeller(int theId);

	public void saveSeller(Seller theProduct);

	public void deleteSeller(int theId);
}
