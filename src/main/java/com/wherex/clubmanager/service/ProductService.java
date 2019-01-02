package com.wherex.clubmanager.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.wherex.clubmanager.entity.Product;

@Service
public interface ProductService {
	
	public List<Product> getProducts();

	public void addProduct(Product newProduct);

	public void deleteProduct(Product newProduct);

	public void updateProduct(Product newProduct);

}
