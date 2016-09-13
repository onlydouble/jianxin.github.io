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
import com.qmzyht.util.Util;
import com.qnzyht.dao.BaseDaoHibernate;
import com.qnzyht.dao.CompanyDao;

@Repository(value = "companyDao")
public class CompanyDaoImpl extends BaseDaoHibernate implements CompanyDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public Company getCompanyByCid(int cid) {
		
		Session session = sessionFactory.getCurrentSession();
		List<Company> list = new ArrayList<Company>();
		// 通过 Hibernate 的Criteria查询
		Criteria criteria = session.createCriteria(Company.class);
		if (cid > 0) {
			criteria.add(Restrictions.eq("cid", cid));
			
		}
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Company getCompanyByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		List<Company> list = new ArrayList<Company>();
		// 通过 Hibernate 的Criteria查询
		Criteria criteria = session.createCriteria(Company.class);
		if (!(null == name && "".equals(name))) {
			criteria.add(Restrictions.eq("cname", name));
		}
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public int addCompany(Company company) {
		if (getCompanyByName(company.getCname()) != null) {	//该用户名已存在
			return 0;
		}
		int id = getValidId();
		Session session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		try {
			company.setCid(id);
			session.save(company);
			trans.commit(); // 任何有关数据库更新的操作都是commit后进数据库的
		} catch (Exception e) {
			trans.rollback();
			e.printStackTrace();
			id = 0;
		} finally {
			session.close();
		}
		return id;
	}

	@Override
	public int editCompany(Company company) {
		int id = company.getCid();
		System.out.println(id);
		Session session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		try {
			session.update(company);
			trans.commit(); // 任何有关数据库更新的操作都是commit后进数据库的
		} catch (Exception e) {
			trans.rollback();
			e.printStackTrace();
			id = 0;
		} finally {
			session.close();
		}
		return id;
	}

	@Override
	public int deleteCompany(int cid) {
		
		int ret = cid;
		Session session = sessionFactory.openSession();
		String hql = "DELETE FROM Company WHERE cid=?";
		System.out.println(cid);
		Transaction t = null;
		try {
			t = session.beginTransaction();
			Query q = session.createQuery(hql);
			q.setInteger(0, cid);
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

	@SuppressWarnings("unchecked")
	@Override
	public List<Company> findAllCompany() {
		Session session = sessionFactory.getCurrentSession();
		List<Company> list = new ArrayList<Company>();
		Criteria criteria = session.createCriteria(Company.class);
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@Override
	public int getCompanyCount() {
		List<Company> list = findAllCompany();
		return list.size();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Company> getCompany(int currentPaging, int pageSize) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("FROM Company");
		int startRow = (currentPaging - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List<Company> message = query.list();
		session.close();
		return message;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Company> getCompanyByCaddress(String name, int currentPaging, int pageSize) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Company> list = new ArrayList<Company>();
		try {
			String hql = "FROM Company WHERE caddress = ?";
			Query query = session.createQuery(hql);
			query.setParameter(0, name);
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
	public int getCompanyByCaddressCount(String name) {
		List<Company> lst = getCompanyByCaddress(name, 1, Util.PAGE_MAXSIZE);
		if (lst == null) {
			return 0;
		}
		return lst.size();
	}

	private int getValidId() {
		int id = 0;
		String sql = "SELECT max(cid) FROM company ";
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Object obj = session.createSQLQuery(sql).uniqueResult();
		if (obj == null) {
			id = 1;
		} else {
			id = (Integer)obj;
			if (id == 0) {
				id = 1;
			} else {
				id++;
			}
		}
		session.close();
		return id;
	}

	
	


}