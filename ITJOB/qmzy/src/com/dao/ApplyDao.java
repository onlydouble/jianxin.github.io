package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entity.Apply;
import com.entity.Companyjob;

public class ApplyDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public void save(Apply apply){
		getSession().save(apply);
	}
	
	@SuppressWarnings("unchecked")
	public List<Apply> getAll() {

		String hql = "from Apply";

System.out.println("111111111111111111111111111111111");
		return getSession().createQuery(hql).list();

	}
}
