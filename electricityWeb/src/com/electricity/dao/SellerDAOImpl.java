package com.electricity.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.electricity.entity.Products;
import com.electricity.entity.Seller;

@Repository
public class SellerDAOImpl implements SellerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Seller> getSellers() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Seller> theQuery = currentSession.createQuery("from Seller order by sellerId", Seller.class);
		
		List<Seller> sellers = theQuery.getResultList();
		
		return sellers;
	}

	@Override
	public Seller getSeller(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Seller theSeller = currentSession.get(Seller.class, theId);
		
		return theSeller;
	}

	@Override
	public void saveSeller(Seller theSeller) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theSeller);
		
	}

	@Override
	public void deleteSeller(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from Seller where seller_id=:sellerId");
		
		theQuery.setParameter("sellerId", theId);
		
		theQuery.executeUpdate();
		
	}

}
