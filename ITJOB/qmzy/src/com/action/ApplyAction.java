package com.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.entity.Apply;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.ApplyService;

public class ApplyAction extends ActionSupport implements RequestAware,
		ModelDriven<Apply> {

	/**
	 * 
	 */
	private Apply apply;
	private ApplyService applyService;
//获取列表
	public String getApply() {
System.out.println("11111111111111111111111111111111111");
		request.put("users", applyService.getUsers());

		return SUCCESS;
	}
//申请职位
	
	public String applyCompanyjob(){
	
	applyService.applyCompanyjob(apply);
	System.out.println(apply);
	request.put("apply", apply);
	
	return SUCCESS;
	}
	
	private static final long serialVersionUID = 1L;
	private Map<String, Object> request;

	@Override
	public Apply getModel() {
		// TODO Auto-generated method stub
		apply = new Apply();
		return apply;
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		request = arg0;
	}

	public ApplyService getApplyService() {
		return applyService;
	}

	public void setApplyService(ApplyService applyService) {
		this.applyService = applyService;
	}

}
