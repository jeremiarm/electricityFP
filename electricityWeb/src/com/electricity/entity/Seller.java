package com.electricity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="seller")
public class Seller {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="seller_id")
	private int id;
	
	@Column(name="seller_name")
	private String sellerName;
	
	@Column(name="seller_address")
	private String sellerAddress;
	
	@Column(name="seller_description")
	private String sellerDescription;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getSellerAddress() {
		return sellerAddress;
	}

	public void setSellerAddress(String sellerAddress) {
		this.sellerAddress = sellerAddress;
	}

	public String getSellerDescription() {
		return sellerDescription;
	}

	public void setSellerDescription(String sellerDescription) {
		this.sellerDescription = sellerDescription;
	}

	@Override
	public String toString() {
		return "Seller [id=" + id + ", sellerName=" + sellerName + ", sellerAddress=" + sellerAddress
				+ ", sellerDescription=" + sellerDescription + "]";
	}
	
	
}
