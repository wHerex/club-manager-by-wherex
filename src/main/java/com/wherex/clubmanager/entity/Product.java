 package com.wherex.clubmanager.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")	
	private int id;
	
	@Column(name="product_name")
	private String productName;
	
	@Column(name="product_capacity")
	private String productCapacity;
	
	@Column(name="amount_of_product")
	private int amountOfProduct;
	
	public Product() {
		
	}

	public Product(String productName, String productCapacity, int amountOfProduct) {
		super();
		this.productName = productName;
		this.productCapacity = productCapacity;
		this.amountOfProduct = amountOfProduct;
	}

	public int getId() {
		return id;
	}

	public String getProductName() {
		return productName;
	}
	
	public String getProductCapacity() {
		return productCapacity;
	}
	
	public int getAmountOfProduct() {
		return amountOfProduct;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public void setProductCapacity(String productCapacity) {
		this.productCapacity = productCapacity;
	}
	
	public void setAmountOfProduct(int amountOfProduct) {
		this.amountOfProduct = amountOfProduct;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", productName=" + productName + ", productCapacity=" + productCapacity
				+ ", amountOfProduct=" + amountOfProduct + "]";
	}
	


}
