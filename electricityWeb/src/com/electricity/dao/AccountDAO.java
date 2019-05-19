package com.electricity.dao;

import com.electricity.entity.Account;

public interface AccountDAO {
	public Account getAccount(String username, String password);
}
