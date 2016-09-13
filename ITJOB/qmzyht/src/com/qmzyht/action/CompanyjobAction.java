package com.qmzyht.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.qmzyht.pojo.Companyjob;
import com.qmzyht.service.CompanyjobService;
import com.qmzyht.util.Util;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CompanyjobAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@Autowired
	private CompanyjobService companyjobService;
	private int cjid;
	private String cjob;
	private String csalary;
	private String crequest;
	private String cjaddress;
    private Date credate;
    private int cid;
    
	private List<Companyjob> lst;
	private int currentPage = 1;
	public int getCjid() {
		return cjid;
	}
	public void setCjid(int cjid) {
		this.cjid = cjid;
	}
	public String getCjob() {
		return cjob;
	}
	public void setCjob(String cjob) {
		this.cjob = cjob;
	}
	public String getCsalary() {
		return csalary;
	}
	public void setCsalary(String csalary) {
		this.csalary = csalary;
	}
	public String getCrequest() {
		return crequest;
	}
	public void setCrequest(String crequest) {
		this.crequest = crequest;
	}
	public String getCjaddress() {
		return cjaddress;
	}
	public void setCjaddress(String cjaddress) {
		this.cjaddress = cjaddress;
	}
	public Date getCredate() {
		return credate;
	}
	public void setCredate(Date credate) {
		this.credate = credate;
	}
	public List<Companyjob> getLst() {
		return lst;
	}
	public void setLst(List<Companyjob> lst) {
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
	private int totalPage;
	private int totalSize;
	private int pageSize = Util.PAGE_SIZE;
	

	public String companyjobQuery() {	//企业用户查询
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		String searchType = request.getParameter("searchType");
		String key = request.getParameter("searchname");
		int count = 0;
		pageSize = Util.PAGE_SIZE;
		if ((searchType == null) || (searchType.equals(""))) {
			lst = companyjobService.getCompanyjob(currentPage, pageSize);
			count = companyjobService.getCompanyjobCount();
		} else if (searchType.equals("query_cjob")) {	//根据职位名查询
			pageSize = Util.PAGE_MAXSIZE;
			lst = new ArrayList<Companyjob>();
			Companyjob tmp = companyjobService.getCompanyjobByJob(key);
			if (tmp != null) {
				lst.add(tmp);
			}
			count = lst.size();
		}else if (searchType.equals("query_cjaddress")) {
			//根据地域查询
			pageSize = Util.PAGE_MAXSIZE;
			lst = companyjobService.getCompanyByCjaddress(key, currentPage, pageSize);
			count = companyjobService.getCompanyByCjaddressCount(key);
		}
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return Util.RESULT_SUCCESS;
	}
	
	
	public String companyjobDelete() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_DELETECOMPANYJOB);	//设置操作类型
		
		@SuppressWarnings("unused")
		Companyjob companyjob = companyjobService.getCompanyjobByCjid(cjid);
		
		if (companyjobService.deleteCompanyjob(cjid) > 0) {
			
			//删除用户之后要把其头像文件也删除
			File file = new File(request.getSession().getServletContext().getRealPath(""));
			if (file.isFile() && file.exists()) {
				file.delete();
			}			
			return Util.RESULT_SUCCESS;
		}
		addFieldError(Util.MSG, "删除企业用户失败!");
		return Util.RESULT_FAILED;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
}
