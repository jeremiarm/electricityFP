package com.electricity.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.electricity.entity.Account;

@Repository
public class AccountDAOImpl implements AccountDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public String checkAccount(Account theAccount) {
		Session currentSession = sessionFactory.getCurrentSession();
		String user = theAccount.getAccountUsername();
		String pass = theAccount.getAccountPassword();
		Query<Account> theQuery = currentSession.createQuery("from Account where account_username=:username and account_password=:password",Account.class);
		theQuery.setParameter("username", user);
		theQuery.setParameter("password", pass);
		Account tempAccount = theQuery.getSingleResult();
		if (user.equals(tempAccount.getAccountUsername())) {
			return "accepted";
		}
		else return "refused";
	}

}
