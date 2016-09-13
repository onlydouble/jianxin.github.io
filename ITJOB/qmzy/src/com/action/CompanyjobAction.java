package com.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.entity.Companyjob;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.CompanyjobService;



public class CompanyjobAction extends ActionSupport implements RequestAware,ModelDriven<Companyjob> {
	public static final int PAGE_SIZE = 15; // 单页数据个数
	public static final int PAGE_MAXSIZE = 100; // 单页数据最大个数
	private List<Companyjob> lst;
	private int currentPage = 1;
	private int totalPage;
	private int totalSize;
	private int pageSize =PAGE_SIZE;
	
	//
	private static final long serialVersionUID = 1L;
	private static final String csalary = null;

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public List<Companyjob> getLst() {
		return lst;
	}

	public void setLst(List<Companyjob> lst) {
		this.lst = lst;
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

	public Map<String, Object> getRequest() {
		return request;
	}

	private CompanyjobService companyjobService;

	
	public void setCompanyjobService(CompanyjobService companyjobService) {

		this.companyjobService = companyjobService;
		
	}

	private Companyjob companyjob;
	
	
	public String list(){	
	
		request.put("users", companyjobService.getUsers());
	
		return SUCCESS;
	}
	
//增加员工
	
	public String addJob(){
		companyjobService.addCompanyjob(companyjob);
		return SUCCESS;
	}
	

	// 添out加职位
public String addCompanyjob(){
	companyjobService.addCompanyjob(companyjob);
	
	request.put("user", companyjob);
	System.out.println(companyjob);
	return SUCCESS;
	
}
//删除职位
public String deleteCompanyjob(){
	
	/*String cjid=((ServletRequest) request).getParameter("cjid");//��ò���
	companyjobService.deleteCompanyjobByID(companyjob.getCjid());
*/
	companyjobService.deleteCompanyjobByID(companyjob.getCjid());
	
    request.put("user", companyjob.getCjid()) ;
	return SUCCESS;
	
}


//更新操作
public String updateCompanyjob(){
	companyjobService.updateCompanyjob(companyjob);
	 request.put("user", companyjob.getCjid()) ;
	 
	return SUCCESS;
	
}
/*//查询操作
public String queryallCompanyjob(){
	
	companyjobService.queryCompanyjob(companyjob);
	request.put("users", companyjobService.queryCompanyjob());
	return SUCCESS;
}*/

	public String cjobQuery() {	//职业查询
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
	String searchType =  request.getParameter("searchType");
		
		String key = request.getParameter("searchcjob");

		int count = 0;
		pageSize = PAGE_SIZE;
		if ((searchType == null) || (searchType.equals(""))) {
		
			lst = companyjobService.getCompanyjob(currentPage, pageSize);
			count = companyjobService.getCompanyjobCount();

		} else if (searchType.equals("query_cjob")) {	
			
			//根据职位查询
			pageSize =PAGE_MAXSIZE;
			lst = companyjobService.getCompanyjobByjob(key, currentPage, pageSize);
			count = companyjobService.getCompanyjobByjobCount(key);
/*			pageSize = PAGE_MAXSIZE;
			lst = new ArrayList<Companyjob>();
			Companyjob tmp = companyjobService.getCompanyByCjob(key);
			
			if (tmp != null) {
				lst.add(tmp);
			}
			count = lst.size();*/
		} else  if(searchType.equals("query_csalary")) {	//根据薪酬
			pageSize =PAGE_MAXSIZE;
			lst = companyjobService.getCompanyjobBycjob(key, currentPage, pageSize);
			count = companyjobService.getCompanyjobByCjobCount(key);
		}else if(searchType.equals("query_cjaddress")){
		
			//根据区域
			pageSize =PAGE_MAXSIZE;
			lst = companyjobService.getCompanyjobBycjobBycj(key, currentPage, pageSize);
			System.out.println(key);
			count = companyjobService.getCompanyjobByCjobcjCount(key);
			
		}
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return SUCCESS;
	}
	
	
	
	/*
	 public String cjobfromQuery() {	//职业查询
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
	
		
		String key = request.getParameter("searchcjob");
		int count = 0;
		pageSize = PAGE_SIZE;
		if (searchType.equals("query_cjob")) {	
			
			//薪酬范围查询
			 //模糊职位查询
			pageSize = PAGE_MAXSIZE;
			lst = new ArrayList<Companyjob>();
			Companyjob tmp = companyjobService.getCompanyByCjob(key);
			
			if (tmp != null) {
				lst.add(tmp);
			}
			count = lst.size();
		} else  if(searchType.equals("query_csalary")) {	//根据薪酬
			pageSize =PAGE_MAXSIZE;
			lst = companyjobService.getCompanyjobBycjob(key, currentPage, pageSize);
			count = companyjobService.getCompanyjobByCjobCount(key);
		}
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return SUCCESS;
	}
	 */
	
	@Override
	public Companyjob getModel() {
		companyjob = new Companyjob();
		return companyjob;
	}

	
	
	private Map<String, Object> request= new HashMap<String, Object>();
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		request=arg0;
	}



}
