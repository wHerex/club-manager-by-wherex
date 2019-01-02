package com.wherex.clubmanager.dao;

import java.util.List;

import com.wherex.clubmanager.entity.Product;

public interface ProductDAO {

	public List<Product> getProducts();

	public void addProduct(Product newProduct);

	public void deleteProduct(Product newProduct);

	

	
		
}
