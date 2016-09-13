package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entity.Companyjob;
import com.entity.User;


public class UserDao {
	
	
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	//增加
	public void add(User user){
		getSession().save(user);
	}
	//返回所有
	@SuppressWarnings("unchecked")
	public List<User> getAll() {
		System.out.println("55555555555555555555555555555555555");
		String hql="from User";
		return getSession().createQuery(hql).list();
	}

	//根据name查询
	public User getByName(String name){
		String hql="from User u where u.name = ? ";
		return (User) getSession().
						createQuery(hql).
						setString(0, name).
						uniqueResult();
		
	}
	
}
