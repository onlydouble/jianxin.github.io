package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import com.entity.Companyjob;
import com.entity.Employee;





public class EmployeeDao {
	public static final int PAGE_SIZE = 10;	//单页数据个数
	public static final int PAGE_MAXSIZE = 100;	//单页数据最大个数
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	//增加用户
	public void add(Employee employee){
		getSession().save(employee);
	}
    //列表显示
	@SuppressWarnings("unchecked")
	public List<Employee> getAll() {
		String hql="from Employee";
		return getSession().createQuery(hql).list();
	}
	//获取用户名
	public Employee getByName(String name){
		String hql="from Employee c where c.ename = ? ";
	
		return (Employee) getSession().
						createQuery(hql).
						setString(0, name).
						uniqueResult();
		
	}
	
	
	//获取对象
	//编写语句
	@SuppressWarnings("unchecked")
	@org.junit.Test
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
	//分页按薪酬
 	@SuppressWarnings("unchecked")
	public List<Companyjob> getCompanyjobBycjob(String cjob, int currentPaging, int pageSize) {
	
	List<Companyjob> list = new ArrayList<Companyjob>();
		String hql = "FROM Companyjob WHERE cjob = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, cjob);
		query.setFirstResult((currentPaging - 1) * pageSize);
		query.setMaxResults(pageSize);
		list = query.list();
	if (list.iterator().hasNext()) {
		return list;
	} else {
		return null;
	}
}
 	
 	
	//根据job名称查找
	@SuppressWarnings("unchecked")
	public Companyjob getEmployeeByCjob(String cjob) {
		
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

	 	//
	 	public List<Companyjob> getCompanyjob(int currentPaging, int pageSize) {
	 	 String hql="";
		Query query = getSession().createQuery(hql);
		int startRow = (currentPaging - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Companyjob> message = query.list();
	
		return message;
	}

	 	//获取个数
	 		public int getCompanyjobByCjobCount(String cjob) {
		List<Companyjob> lst = getCompanyjobBycjob(cjob, 1, PAGE_MAXSIZE);
		if (lst == null) {
			return 0;
		}
		return lst.size();
	}
	  //
	 		

}
