package com.electricity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="account")
public class Account {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="account_id")
	private int accountId;
	
	@Column(name="account_username")
	private String accountUsername;
	
	@Column(name="account_password")
	private String accountPassword;

	public void setAccountUsername(String accountUsername) {
		this.accountUsername = accountUsername;
	}

	public void setAccountPassword(String accountPassword) {
		this.accountPassword = accountPassword;
	}

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public String getAccountUsername() {
		return accountUsername;
	}

	public String getAccountPassword() {
		return accountPassword;
	}

	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", accountUsername=" + accountUsername + ", accountPassword="
				+ accountPassword + "]";
	}
	
	
}
