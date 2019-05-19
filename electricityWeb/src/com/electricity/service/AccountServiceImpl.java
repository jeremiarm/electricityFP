package com.electricity.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.electricity.dao.AccountDAO;
import com.electricity.entity.Account;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountDAO accountDAO;
	
	
	@Override
	@Transactional
	public String checkAccount(Account theAccount) {
		String result = accountDAO.checkAccount(theAccount);
		return result;
	}

}
