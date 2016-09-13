package com.dao;


import java.util.ArrayList;
import java.util.List;

















import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;

import com.entity.Company;
import com.entity.Companyjob;







public class CompanyDao {
	public static final int PAGE_SIZE = 15; // 单页数据个数
	public static final int PAGE_MAXSIZE = 100; // 单页数据最大个数
	
	private  SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	//
	//增加用户
		public void add(Company company){
	
			getSession().save(company);
			
		}
	
		  //列表显示
		@SuppressWarnings("unchecked")
		public List<Company> getAll() {
			
			String hql="from Company";
			return getSession().createQuery(hql).list();
		}
		//获取用户名
		public Company getByName(String name){
			System.out.println("111" );
			String hql="from Company c where c.cname = ? ";
		
			return (Company) getSession().
							createQuery(hql).
							setString(0, name).
							uniqueResult();
			
		}



		public List<Company> getCompany(int currentPaging, int pageSize) {
			String hql = "from Company";
			Query query = getSession().createQuery(hql);
			int startRow = (currentPaging - 1) * pageSize;
			query.setFirstResult(startRow);
			query.setMaxResults(pageSize);
			@SuppressWarnings("unchecked")
			List<Company> message = query.list();

			return message;
		}

		public int getCompanyCount() {
			List<Company> list = findCompany();
			return list.size();
		}

		private List<Company> findCompany() {
			List<Company> list = new ArrayList<Company>();
			Criteria criteria = getSession().createCriteria(Company.class);
			list = criteria.list();
			if (list != null && list.size() > 0) {
				return list;
			}
			return null;
		}

		@SuppressWarnings("unchecked")
		public List<Company> getCompanyBycname(String cname, int currentPaging,
				int pageSize) {
			List<Company> list = new ArrayList<Company>();
			/*		String hql = "FROM Companyjob WHERE cjaddress = ?";
					Query query = getSession().createQuery(hql);
					query.setParameter(0, cjaddress);*/
					String hql = "FROM Company WHERE cname like :cname";
					System.out.println(cname+"wwwwwwwwwqrfffffffffff");
					Query query = getSession().createQuery(hql);
				/*	query.setParameter(0, cjaddress);*/
					query.setParameter("cname","%" + cname + "%");
					query.setFirstResult((currentPaging - 1) * pageSize);
					query.setMaxResults(pageSize);
					list = query.list();
				if (list.iterator().hasNext()) {
				
					return list;
				} else {
					System.out.println("list:"+list+"8//////////////////////");
					return null;
				}
	
		}

		public int getCompanyBycnameCount(String cname) {
			List<Company> lst = getCompanyBycname(cname, 1, PAGE_MAXSIZE);
			if (lst == null) {
				return 0;
				
			}
			System.out.println("query_cname4");
			return lst.size();

		}

		public List<Company> getCompanyBycaddress(String caddress,
				int currentPaging, int pageSize) {
			List<Company> list = new ArrayList<Company>();
			/*		String hql = "FROM Companyjob WHERE cjaddress = ?";
					Query query = getSession().createQuery(hql);
					query.setParameter(0, cjaddress);*/
					String hql = "FROM Company WHERE caddress like :caddress";
					Query query = getSession().createQuery(hql);
				/*	query.setParameter(0, cjaddress);*/
					query.setParameter("caddress","%" + caddress + "%");
					query.setFirstResult((currentPaging - 1) * pageSize);
					query.setMaxResults(pageSize);
					list = query.list();
				if (list.iterator().hasNext()) {
					return list;
				} else {
					return null;
				}
				}
		/*public static void addCompanyjob(){
		   	 Session session = HibernateUtil.getSessionFactory().openSession(); 
		   	 Company c = (Company)session.get(Company.class,2);
		   	 Companyjob cj = new Companyjob();
		   	 cj.setCjid(5);
		   	 cj.setCjob("web前端开发");
		   	 cj.setCjaddress("武汉");
		   	 cj.setCrequest("工作经验五年");
		   	 cj.setCompany(c);
		   	 cj.setCsalary("5000");
		   	 HibernateUtil.addObject(cj);
		   	 session.close();
		   	 
			}*/

		public int getCompanyBycaddressCount(String caddress) {
			// TODO Auto-generated method stub
			List<Company> lst = getCompanyBycaddress(caddress, 1, PAGE_MAXSIZE);
			if (lst == null) {
				System.out.println("899999999999999999999999999999999999999");
				return 0;

			}
			return lst.size();
		}

		
}
