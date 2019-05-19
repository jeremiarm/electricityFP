package com.electricity.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import com.electricity.entity.Account;
import com.electricity.entity.Products;

public class AccountDAOImpl implements AccountDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Account getAccount(String username, String password) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Account> theQuery = currentSession.createQuery("from Account where account_username=:username AND account_password=:password", Account.class);
		
		theQuery.setParameter("username", username);
		theQuery.setParameter("password", password);
		
		// execute query and get result list
		Account accounts = theQuery.getSingleResult();

		// return the results
		return accounts;
	}

}
