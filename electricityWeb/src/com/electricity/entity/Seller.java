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
	private int sellerId;
	
	@Column(name="seller_name")
	private String sellerName;
	
	@Column(name="seller_address")
	private String sellerAddress;
	
	@Column(name="seller_description")
	private String sellerDescription;
	
	@Column(name="seller_image")
	private String sellerImage;
	
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
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
	
	public String getSellerImage() {
		return sellerImage;
	}
	
	public void setSellerImage(String sellerImage) {
		this.sellerImage = sellerImage;
	}

	public int getSellerId() {
		return sellerId;
	}

	@Override
	public String toString() {
		return "Seller [sellerId=" + sellerId + ", sellerName=" + sellerName + ", sellerAddress=" + sellerAddress
				+ ", sellerDescription=" + sellerDescription + ", sellerImage=" + sellerImage + "]";
	}
	
	
	
}
