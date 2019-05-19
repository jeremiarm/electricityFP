package com.electricity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Products {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="product_name")
	private String productName;
	
	@Column(name="product_price")
	private int productPrice;
	
	@Column(name="product_condition")
	private String productCondition;
	
	@Column(name="product_guarantee")
	private String productGuarantee;
	
	@Column(name="product_seller")
	private int productSeller;
	
	@Column(name="product_image")
	private String productImage;
	
	@Column(name="product_description")
	private String productDescription;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductCondition() {
		return productCondition;
	}

	public void setProductCondition(String productCondition) {
		this.productCondition = productCondition;
	}

	public String getProductGuarantee() {
		return productGuarantee;
	}

	public void setProductGuarantee(String productGuarantee) {
		this.productGuarantee = productGuarantee;
	}

	public int getProductSeller() {
		return productSeller;
	}

	public void setProductSeller(int productSeller) {
		this.productSeller = productSeller;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	@Override
	public String toString() {
		return "Products [id=" + id + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productCondition=" + productCondition + ", productGuarantee=" + productGuarantee
				+ ", productSeller=" + productSeller + ", productImage=" + productImage + ", productDescription="
				+ productDescription + "]";
	}
	
	
}
