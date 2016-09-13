package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.entity.Companyjob;
import com.entity.Message;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.MessageService;

public class MessageAction extends ActionSupport implements RequestAware,
		ModelDriven<Message> {
	public static final int PAGE_SIZE = 5; // 单页数据个数
	public static final int PAGE_MAXSIZE = 100; // 单页数据最大个数
	/**
* 
*/
	private List<Message> lst;
	private int currentPage = 1;
	private int totalPage;
	private int pageSize = PAGE_SIZE;

	private int totalSize;

	public List<Message> getLst() {
		return lst;
	}

	public void setLst(List<Message> lst) {
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

	public int getPageSize() {
		return pageSize;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public static int getPageMaxsize() {
		return PAGE_MAXSIZE;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	private Message message;
	private MessageService messageService;

	// 获取列表
	public String getMessage() {
		int count = 0;
		pageSize = PAGE_SIZE;
		lst = messageService.getMessage(currentPage, pageSize);
		count = messageService.getMessageCount();
		
		System.out.println(count);
		
		request.put("users", messageService.getUsers());
		
		if (count % pageSize == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = (count / pageSize) + 1;
		}
		return SUCCESS;
	}

	// 申请职位

	public String messageCompanyjob() {

		messageService.messageCompanyjob(message);
		System.out.println(message);
		request.put("message", message);

		return SUCCESS;
	}

	//
	public String deleteMessage() {

		/*
		 * String cjid=((ServletRequest) request).getParameter("cjid");//��ò���
		 * messageService.deleteMessageByID(message.getCjid());
		 */
		messageService.deleteMessageByID(message.getId());

		request.put("user", message.getId());
		return SUCCESS;

	}

	private static final long serialVersionUID = 1L;
	private Map<String, Object> request;

	@Override
	public Message getModel() {
		// TODO Auto-generated method stub
		message = new Message();
		return message;
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		request = arg0;
	}

	public MessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

}
