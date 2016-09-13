package com.qmzyht.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qmzyht.pojo.Company;
import com.qmzyht.pojo.Companyjob;
import com.qmzyht.util.Util;
import com.qnzyht.dao.BaseDaoHibernate;
import com.qnzyht.dao.CompanyjobDao;

@Repository(value = "companyjobDao")
public class CompanyjobDaoImpl extends BaseDaoHibernate implements CompanyjobDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public Companyjob getCompanyjobByCjid(int cjid) {
		Session session = sessionFactory.getCurrentSession();
		List<Companyjob> list = new ArrayList<Companyjob>();
		// 通过 Hibernate 的Criteria查询
		System.out.println(cjid);
		Criteria criteria = session.createCriteria(Companyjob.class);
		if (cjid > 0) {
			criteria.add(Restrictions.eq("cjid", cjid));
		}
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public Companyjob getCompanyjobByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		List<Companyjob> list = new ArrayList<Companyjob>();
		// 通过 Hibernate 的Criteria查询
		Criteria criteria = session.createCriteria(Companyjob.class);
		if (!(null == name && "".equals(name))) {
			criteria.add(Restrictions.eq("cjob", name));
		}
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}


	@Override
	public List<Companyjob> findAllCompanyjob() {
		Session session = sessionFactory.getCurrentSession();
		List<Companyjob> list = new ArrayList<Companyjob>();
		Criteria criteria = session.createCriteria(Companyjob.class);
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@Override
	public List<Companyjob> getCompanyjob(int currentPaging, int pageSize) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("FROM Companyjob");
		int startRow = (currentPaging - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List<Companyjob> message = query.list();
		session.close();
		return message;
	}	

	@Override
	public int deleteCompanyjob(int cjid) {
		int ret = cjid;
		Session session = sessionFactory.openSession();
		String hql = "DELETE FROM Companyjob WHERE cjid=?";
		Transaction t = null;
		try {
			t = session.beginTransaction();
			Query q = session.createQuery(hql);
			q.setInteger(0, cjid);
			q.executeUpdate();
			t.commit();
		} catch (Exception ex) {
			if (t != null) {
				ex.printStackTrace();
				t.rollback();
			}
			ret = 0;
		} finally {
			session.close();
		}
		return ret;
	}

	@Override
	public int getCompanyjobCount() {
		List<Companyjob> list = findAllCompanyjob();
		return list.size();
	}

	@Override
	public List<Companyjob> getCompanyjobByCjaddress(String key,
			int currentPaging, int pageSize) {
			Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Companyjob> list = new ArrayList<Companyjob>();
		try {
			String hql = "FROM Companyjob WHERE cjaddress = ?";
			Query query = session.createQuery(hql);
			query.setParameter(0, key);
			query.setFirstResult((currentPaging - 1) * pageSize);
			query.setMaxResults(pageSize);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.clear();
		}
		if (list.iterator().hasNext()) {
			return list;
		} else {
			return null;
		}
	}

	@Override
	public int getCompanyjobByCjaddressCount(String key) {
		List<Companyjob> lst = getCompanyjobByCjaddress(key, 1, Util.PAGE_MAXSIZE);
		if (lst == null) {
			return 0;
		}
		return lst.size();
	}


	
}
