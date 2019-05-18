package com.electricity.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.electricity.entity.Products;

@Repository
public class ElectricityDAOImpl implements ElectricityDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Products> getProducts() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Products> theQuery = currentSession.createQuery("from Products order by productName", Products.class);

		// execute query and get result list
		List<Products> products = theQuery.getResultList();

		// return the results
		return products;

	}

}
