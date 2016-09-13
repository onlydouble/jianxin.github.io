package com.qmzyht.service;

import java.util.List;

import com.qmzyht.pojo.Message;


public interface MessageService {

	public int deleteMessage(int id);
	
	public List<Message> getMessage(int currentPaging, int pageSize);
	
	public int getMessageCount();
	
	public Message getMessageByMeno(String meno);
}
