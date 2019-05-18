package com.electricity.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.electricity.entity.Products;

@Repository
public class ProductsDAOImpl implements ProductsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Products> getProducts() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Products> theQuery = currentSession.createQuery("from Products order by id", Products.class);

		// execute query and get result list
		List<Products> products = theQuery.getResultList();

		// return the results
		return products;

	}

	@Override
	public Products getProduct(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Products theProduct = currentSession.get(Products.class, theId);
		
		return theProduct;
	}

}
