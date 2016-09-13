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
import com.qmzyht.pojo.Employee;
import com.qmzyht.util.Util;
import com.qnzyht.dao.BaseDaoHibernate;
import com.qnzyht.dao.EmployeeDao;

@Repository(value = "employeeDao")
public class EmployeeDaoImpl extends BaseDaoHibernate implements EmployeeDao{
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public Employee getEmployeeByEid(int eid) {
		Session session = sessionFactory.getCurrentSession();
		List<Employee> list = new ArrayList<Employee>();
		// 通过 Hibernate 的Criteria查询
		Criteria criteria = session.createCriteria(Employee.class);
		if (eid > 0) {
			criteria.add(Restrictions.eq("eid", eid));
		}
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	@Override
	public Employee getEmployeeByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		List<Employee> list = new ArrayList<Employee>();
		// 通过 Hibernate 的Criteria查询
		Criteria criteria = session.createCriteria(Employee.class);
		if (!(null == name && "".equals(name))) {
			criteria.add(Restrictions.eq("ename", name));
		}
		list = criteria.list();

		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	
    public List<Employee> findAllEmployee() {
		Session session = sessionFactory.getCurrentSession();
		List<Employee> list = new ArrayList<Employee>();
		Criteria criteria = session.createCriteria(Employee.class);
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@Override
	public List<Employee> getEmployee(int currentPaging, int pageSize) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("FROM Employee");
		int startRow = (currentPaging - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List<Employee> message = query.list();
		session.close();
		return message;
	}
	
	

	@Override
	public int getEmployeeCount() {
		List<Employee> list = findAllEmployee();
		return list.size();
	}
	@Override
	public int editEmployee(Employee employee) {
		int id = employee.getEid();
		Session session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		try {
			session.update(employee);
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
	public int deleteEmployee(int eid) {
		int ret = eid;
		Session session = sessionFactory.openSession();
		String hql = "DELETE FROM Employee WHERE eid=?";
		Transaction t = null;
		try {
			t = session.beginTransaction();
			Query q = session.createQuery(hql);
			q.setInteger(0, eid);
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
	public int getEmployeeByEsexCount(String name) {
		List<Employee> lst = getEmployeeByEsex(name, 1, Util.PAGE_MAXSIZE);
		if (lst == null) {
			return 0;
		}
		return lst.size();
	}
	@Override
public List<Employee> getEmployeeByEsex(String name, int currentPaging, int pageSize){
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Employee> list = new ArrayList<Employee>();
		try {
			String hql = "FROM Employee WHERE esex = ?";
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

	
}
