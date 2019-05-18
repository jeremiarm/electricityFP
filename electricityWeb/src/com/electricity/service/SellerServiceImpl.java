package com.electricity.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.electricity.dao.SellerDAO;
import com.electricity.entity.Seller;

@Service
public class SellerServiceImpl implements SellerService {
	
	@Autowired
	private SellerDAO sellerDAO;
	
	@Override
	@Transactional
	public List<Seller> getSellers() {
		return sellerDAO.getSellers();
	}

}
