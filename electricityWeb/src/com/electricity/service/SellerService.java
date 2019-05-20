package com.electricity.service;

import java.util.List;

import com.electricity.entity.Seller;

public interface SellerService {
	public List<Seller> getSellers();

	public Seller getSeller(int theId);

	public void saveSeller(Seller theSeller);

	public void deleteSeller(int theId);
}
