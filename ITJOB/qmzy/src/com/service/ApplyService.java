package com.service;

import java.util.List;

import com.dao.ApplyDao;
import com.entity.Apply;
import com.entity.Companyjob;

public class ApplyService {

	private ApplyDao applyDao;

	public ApplyDao getApplyDao() {
		return applyDao;
	}

	public void setApplyDao(ApplyDao applyDao) {
		this.applyDao = applyDao;
	}
	//添加申请
	public void applyCompanyjob(Apply apply) {
		applyDao.save(apply);
		
	}	

	//显示列表
		public List<Apply> getUsers(){
		System.out.println("000000000000000000000000000000000000000");
		return applyDao.getAll();
		
	}

	
}
