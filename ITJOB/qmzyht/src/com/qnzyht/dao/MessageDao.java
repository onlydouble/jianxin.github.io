package com.qnzyht.dao;

import java.util.List;

import com.qmzyht.pojo.Message;


public interface MessageDao {
        
	public Message getMessageByMeno(String meno);	//查询留言-根据名字
	
	public int deleteMessage(int id);	//删除留言
	
	public List<Message> getMessage(int currentPaging, int pageSize);	//查找留言-按页

	public int getMessageCount();	//得到所有留言数

	public List<Message> findAllMessage();	//得到全部留言
}
