package com.electricity.service;

import org.springframework.stereotype.Service;

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
