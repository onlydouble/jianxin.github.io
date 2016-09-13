package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import com.entity.Companyjob;

public class CompanyjobDao {
	public static final int PAGE_SIZE = 10; // 单页数据个数
	public static final int PAGE_MAXSIZE = 100; // 单页数据最大个数
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 增加职位
	public void save(Companyjob companyjob) {

		getSession().save(companyjob);
	}

	// 修改职位
	public void update(Companyjob companyjob) {
		getSession().update(companyjob);
	}

	// 查询
	@SuppressWarnings("unchecked")
	public List<Companyjob> getAll() {

		String hql = "from Companyjob where cid=1";

		return getSession().createQuery(hql).list();

	}

	// 根据职位名
	/* public void query */

	// 删除操作
	public void delete(int cjid) {

		System.out.println("cjid=" + cjid);
		String hql = "delete FROM Companyjob where cjid =?";

		Query q = getSession().createQuery(hql);
		q.setInteger(0, cjid);
		int a = q.executeUpdate(); // .setInteger("cjid", cjid)
		System.out.println(a);
	}

	public Companyjob getById(int cjid) {
		System.out.println("");
		return (Companyjob) getSession().get(Companyjob.class, cjid);

	}

	//
	// 根据job名称查找

	@SuppressWarnings("unchecked")
	public Companyjob getCompanyByCjob(String cjob) {
		List<Companyjob> list = new ArrayList<Companyjob>();
		// 通过 Hibernate 的Criteria查询
		Criteria criteria = getSession().createCriteria(Companyjob.class);
		if (!(null == cjob && "".equals(cjob))) {
			criteria.add(Restrictions.eq("cjob", cjob));
		}
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	//分页
	public List<Companyjob> getCompanyjob(int currentPaging, int pageSize) {
		String hql = "from Companyjob";
		Query query = getSession().createQuery(hql);
		int startRow = (currentPaging - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Companyjob> message = query.list();

		return message;
	}

	@SuppressWarnings("unchecked")
	public List<Companyjob> findCompanyjobs() {
             
		List<Companyjob> list = new ArrayList<Companyjob>();
		Criteria criteria = getSession().createCriteria(Companyjob.class);
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public int getCompanyjobCount() {

		List<Companyjob> list = findCompanyjobs();
		return list.size();
	}

	// 获取个数
	public int getCompanyjobByCjobCount(String cjob) {
		List<Companyjob> lst = getCompanyjobBycjob(cjob, 1, PAGE_MAXSIZE);
		if (lst == null) {
			return 0;
		}
		return lst.size();
	}
	//获取地址
	public int getCompanyjobByCjobcjCount(String cjaddress) {
		// TODO Auto-generated method stub
		List<Companyjob> lst = getCompanyjobBycjaddress(cjaddress, 1, PAGE_MAXSIZE);
		if (lst == null) {
			return 0;
		}
		return lst.size();
	}

	public List<Companyjob> getCompanyjobBycjaddress(String cjaddress, int currentPaging,
			int pageSize) {
		List<Companyjob> list = new ArrayList<Companyjob>();
/*		String hql = "FROM Companyjob WHERE cjaddress = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, cjaddress);*/
		String hql = "FROM Companyjob WHERE cjaddress like :cjaddress";
		Query query = getSession().createQuery(hql);
	/*	query.setParameter(0, cjaddress);*/
		query.setParameter("cjaddress","%" + cjaddress + "%");
		query.setFirstResult((currentPaging - 1) * pageSize);
		query.setMaxResults(pageSize);
		list = query.list();
	if (list.iterator().hasNext()) {
		return list;
	} else {
		return null;
	}
	}
	
	public List<Companyjob> getCompanyjobByjob(String cjob, int currentPaging,
			int pageSize) {
		List<Companyjob> list = new ArrayList<Companyjob>();
		String hql = "FROM Companyjob WHERE cjob like :cjob";
		Query query = getSession().createQuery(hql);
		query.setParameter("cjob","%" + cjob + "%");
		query.setFirstResult((currentPaging - 1) * pageSize);
		query.setMaxResults(pageSize);
		list = query.list();
		System.out.println(cjob);
	if (list.iterator().hasNext()) {
		return list;
	} else {
		return null;
	}
	}
	public int getCompanyjobByjobCount(String cjob) {
		List<Companyjob> lst = getCompanyjobByjob(cjob, 1, PAGE_MAXSIZE);
		if (lst == null) {
			return 0;
		}
		return lst.size();
	}
	//按职位查询分页
	public List<Companyjob> getCompanyjobBycjob(String csalary, int currentPaging, int pageSize) {
		
		List<Companyjob> list = new ArrayList<Companyjob>();
			String hql = "FROM Companyjob WHERE csalary = ?";
			Query query = getSession().createQuery(hql);
			query.setParameter(0, csalary);
			query.setFirstResult((currentPaging - 1) * pageSize);
			query.setMaxResults(pageSize);
			list = query.list();
		if (list.iterator().hasNext()) {
			return list;
		} else {
			return null;
		}
	}

	/*
	 * @SuppressWarnings("unchecked") public Companyjob
	 * getCompanyjobByName(String name) { Session session =
	 * sessionFactory.getCurrentSession(); List<Companyjob> list = new
	 * ArrayList<Companyjob>(); // 通过 Hibernate 的Criteria查询 Criteria criteria =
	 * session.createCriteria(Companyjob.class); if (!(null == name &&
	 * "".equals(name))) { criteria.add(Restrictions.eq("cjob", name)); } list =
	 * criteria.list();
	 * 
	 * if (list != null && list.size() > 0) { return list.get(0); } return null;
	 * } //
	 * 
	 * @SuppressWarnings("unchecked") public List<Companyjob>
	 * findAllCompanyjob() { Session session =
	 * sessionFactory.getCurrentSession(); List<Companyjob> list = new
	 * ArrayList<Companyjob>(); Criteria criteria =
	 * session.createCriteria(Companyjob.class); list = criteria.list(); if
	 * (list != null && list.size() > 0) { return list; } return null; } //
	 * private int getValidId() { int id = 0; String sql =
	 * "SELECT max(cjid) FROM companyjob ";
	 * 
	 * Object obj = session.createSQLQuery(sql).uniqueResult(); if (obj == null)
	 * { id = 1; } else { id = (Integer)obj; if (id == 0) { id = 1; } else {
	 * id++; } }
	 * 
	 * return id; }
	 * 
	 * 
	 * //
	 * 
	 * 
	 * //增加操作 public int addCompanyjob(Companyjob companyjob) { if
	 * (getCompanyjobByName(companyjob.getCjob()) != null) { //该用户名已存在 return 0;
	 * } int id = getValidId();
	 * 
	 * try { companyjob.setCjid(cjid);
	 * 
	 * id = 0; } return id; }
	 */





	

}
