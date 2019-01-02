package com.wherex.clubmanager.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wherex.clubmanager.entity.Product;

@Repository
public class ProductDAOImp implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product> getProducts() {

		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Product> theQuery = currentSession.createQuery("from Product", Product.class);
		
		List<Product> products = theQuery.getResultList();
		
		return products;
	}

	@Override
	public void addProduct(Product newProduct) {
		
		Session currentSession = sessionFactory.getCurrentSession();		
		currentSession.saveOrUpdate(newProduct);
	}

	@Override
	public void deleteProduct(Product newProduct) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.delete(newProduct);
	}

	

}
