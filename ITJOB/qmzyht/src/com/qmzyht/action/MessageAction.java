package com.qmzyht.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qmzyht.pojo.Admin;
import com.qmzyht.pojo.Message;
import com.qmzyht.service.MessageService;
import com.qmzyht.util.Util;

public class MessageAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final int PAGE_SIZE = 5;	//单页数据个数
	public static final int PAGE_MAXSIZE = 100;	//单页数据最大个数
	private String msg;
	
	@Autowired
	private MessageService messageService;
	private int id;
	private String meno;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMeno() {
		return meno;
	}
	public void setMeno(String meno) {
		this.meno = meno;
	}
	private List<Message> lst;
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public MessageService getMessageService() {
		return messageService;
	}
	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}
	public List<Message> getLst() {
		return lst;
	}
	public void setLst(List<Message> lst) {
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
	private int currentPage = 1;
	private int totalPage;
	private int totalSize;
	private int pageSize = Util.PAGE_SIZE;
	
	
	public String messageQuery() {
		ActionContext cxt = ActionContext.getContext();
		HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
		String searchType = request.getParameter("searchType");
		String key = request.getParameter("searchname");
		int count = 0;
		pageSize = Util.PAGE_SIZE;
		if ((searchType == null) || (searchType.equals(""))) {
			lst = messageService.getMessage(currentPage, pageSize);
			count = messageService.getMessageCount();
		} else if (searchType.equals("query_meno")) {	//根据用户名查询
			pageSize = Util.PAGE_MAXSIZE;
			lst = new ArrayList<Message>();
			Message tmp = messageService.getMessageByMeno(key);
			if (tmp != null) {
				lst.add(tmp);
			}
			count = lst.size();
		}
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return Util.RESULT_SUCCESS;
	}
	
	public String messageDelete(){
	ActionContext cxt = ActionContext.getContext();
	HttpServletRequest request = (HttpServletRequest) cxt.get(ServletActionContext.HTTP_REQUEST);
	request.getSession().setAttribute(Util.OPTTYPE, Util.OPTTYPE_DELETEMESSAGE);	
	//设置操作类型
	
	if (messageService.deleteMessage(id) > 0) {
		return Util.RESULT_SUCCESS;
	}
	addFieldError(Util.MSG, "删除留言失败!");
	return Util.RESULT_FAILED;
	}
}
