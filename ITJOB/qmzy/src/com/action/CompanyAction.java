package com.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.hibernate.SessionFactory;
import org.junit.Test;

import com.entity.Company;
import com.entity.Companyjob;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.CompanyService;
import com.service.CompanyjobService;



@SuppressWarnings("unused")
public class CompanyAction extends ActionSupport implements RequestAware,
		ModelDriven<Company> {
	public static final int PAGE_SIZE = 5; // 单页数据个数
	public static final int PAGE_MAXSIZE = 100; // 单页数据最大个数
	private List<Company> lst;
	private int currentPage = 1;
	private int totalPage;
	private int totalSize;
	private int pageSize =PAGE_SIZE;
	
	public List<Company> getLst() {
		return lst;
	}

	public void setLst(List<Company> lst) {
		this.lst = lst;
	}

	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}



	public static int getPageMaxsize() {
		return PAGE_MAXSIZE;
	}

	public CompanyService getCompanyService() {
		return companyService;
	}

	public Map<String, Object> getRequest() {
		return request;
	}


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */

	private CompanyService companyService;

	public void setCompanyService(CompanyService companyService) {
		
		this.companyService = companyService;

	}



	//
	private Company company;
/*private Companyjob companyjob;*/
	// 注册
	public String regist() {
		companyService.addUser(company);
		request.put("user", company);
		return SUCCESS;
	}
  
	// 列表

	/*public String list(){	
		System.out.println("2222222222222222222222222222222222");
		request.put("users", companyjobService.getUsers());
		System.out.println("222222222222222222222222222222222");
		return SUCCESS;
	}*/
	// 登录

	@SuppressWarnings("unused")
	public String login() {

		//

		Company user2 = companyService.getCompanyByName(company.getCname());

		// System.out.println("555"+user2.toString());

		if (user2 != null) {

			if (company.getCpassword().equals(user2.getCpassword())) {
				
				request.put("company", user2);
				// System.out.println("成功");
				return "success";
			} else {
				System.out.println("功");
				return "error";
			}
		} else {

			return "error";
		}
	}

/*	// 添加职位
public String saveCompanyjob(){
	
	companyjobService.addCompanyjob(companyjob);
	request.put("user", companyjob);
	return SUCCESS;
	
}
//删除职位
public String deleteCompanyjob(){
	companyjobService.deleteCompanyjob(companyjob);
   request.put("user", companyjob.getCjid()) ;
	return SUCCESS;
	
}
//更新操作
public String updateCompanyjob(){
	companyjobService.updateCompanyjob(companyjob);
	 request.put("user", companyjob.getCjid()) ;
	return SUCCESS;
	
}*/
//查询操作
/*public String queryallCompanyjob(){
	
	companyjobService.queryCompanyjob(companyjob);
	request.put("users", companyjobService.queryCompanyjob());
	return SUCCESS;
}*/
	public String companyQuery() {	//企业查询
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
	String searchType =  request.getParameter("searchType");
		
		String key = request.getParameter("searchcompany");
		int count = 0;
		pageSize = PAGE_SIZE;
		if ((searchType == null) || (searchType.equals(""))) {
		
			lst = companyService.getCompany(currentPage, pageSize);
			count = companyService.getCompanyCount();

		} else if (searchType.equals("query_cname")) {	
			//根据公司名查询
			pageSize =PAGE_MAXSIZE;
			lst = companyService.getCompanyBycname(key, currentPage, pageSize);
			count = companyService.getCompanyBycnameCount(key);
/*			pageSize = PAGE_MAXSIZE;
			lst = new ArrayList<Companyjob>();
			Companyjob tmp = companyjobService.getCompanyByCjob(key);
			
			if (tmp != null) {
				lst.add(tmp);
			}
			count = lst.size();*/
		
		}else if(searchType.equals("query_caddress")){
		
			//根据区域
			pageSize =PAGE_MAXSIZE;
			lst = companyService.getCompanyByCaddress(key, currentPage, pageSize);
			System.out.println(key);
			count = companyService.getCompanyByCaddressCount(key);
			
		}
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return SUCCESS;
	}
	
	
	@Override
	public Company getModel() {
		// TODO Auto-generated method stub
		company = new Company();
		return company;
	}

	private Map<String, Object> request = new HashMap<String, Object>();

	@Override
	public void setRequest(Map<String, Object> arg0) {
		request = arg0;
	}

}
