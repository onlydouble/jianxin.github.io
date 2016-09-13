package com.qmzyht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qmzyht.pojo.Message;
import com.qmzyht.service.MessageService;
import com.qnzyht.dao.MessageDao;

@Service(value = "messageService")
public class MessageServiceImpl implements MessageService{

	@Autowired
	private MessageDao messageDao;
	
	
	@Override
	public int deleteMessage(int id) {
		return messageDao.deleteMessage(id);
	}

	@Override
	public List<Message> getMessage(int currentPaging, int pageSize) {
		List<Message> list = messageDao.getMessage(currentPaging, pageSize);
		return list;
	}

	@Override
	public int getMessageCount() {
		return messageDao.getMessageCount();
	}


	@Override
	public Message getMessageByMeno(String meno) {
		Message message = messageDao.getMessageByMeno(meno);
		return message;
	}

	
}
