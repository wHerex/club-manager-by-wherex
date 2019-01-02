package com.wherex.clubmanager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wherex.clubmanager.dao.ProductDAO;
import com.wherex.clubmanager.entity.Product;

@Service
public class ProductServiceImp implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	@Transactional
	public List<Product> getProducts() {		
		return productDAO.getProducts();
	}

	@Override
	@Transactional
	public void addProduct(Product newProduct) {
		productDAO.addProduct(newProduct);
		
	}

	@Override
	@Transactional
	public void deleteProduct(Product newProduct) {
		productDAO.deleteProduct(newProduct);
		
	}

	@Override
	@Transactional
	public void updateProduct(Product newProduct) {
		productDAO.addProduct(newProduct);
	}

}
