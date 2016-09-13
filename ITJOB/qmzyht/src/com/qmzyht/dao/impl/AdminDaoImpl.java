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

import com.qmzyht.pojo.Admin;
import com.qnzyht.dao.AdminDao;
import com.qnzyht.dao.BaseDaoHibernate;

@Repository(value = "adminDao")
public class AdminDaoImpl extends BaseDaoHibernate implements AdminDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public Admin getAdminByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		List<Admin> list = new ArrayList<Admin>();
		// 通过 Hibernate 的Criteria查询
		Criteria criteria = session.createCriteria(Admin.class);
		if (!(null == name && "".equals(name))) {
			criteria.add(Restrictions.eq("username", name));
		}
		list = criteria.list();

		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> getAdmin(int currentPaging, int pageSize) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("FROM Admin");
		int startRow = (currentPaging - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List<Admin> message = query.list();
		session.close();
		return message;
	}

	@Override
	public int getAdminCount() {
		List<Admin> list = findAllAdmin();
		return list.size();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> findAllAdmin() {
		Session session = sessionFactory.getCurrentSession();
		List<Admin> list = new ArrayList<Admin>();
		Criteria criteria = session.createCriteria(Admin.class);
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@Override
	public int addAdmin(Admin admin) {
		if (getAdminByName(admin.getUsername()) != null) {	//该用户名已存在
			return 0;
		}
		int id = getValidId();
		Session session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		try {
			admin.setId(id);
			session.save(admin);
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
	
	private int getValidId() {
		int id = 0;
		String sql = "SELECT max(ID) FROM admin ";
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

	@Override
	public int editAdmin(Admin admin) {
		int id = admin.getId();
		Session session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		try {
			session.update(admin);
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
	public int deleteAdmin(int id) {
		int ret = id;
		Session session = sessionFactory.openSession();
		String hql = "DELETE FROM Admin WHERE id=?";
		Transaction t = null;
		try {
			t = session.beginTransaction();
			Query q = session.createQuery(hql);
			q.setInteger(0, id);
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
}