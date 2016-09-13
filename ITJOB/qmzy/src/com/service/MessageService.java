package com.service;

import java.util.List;

import com.dao.MessageDao;
import com.entity.Message;
import com.entity.Message;



public class MessageService {

	private MessageDao messageDao;

	public MessageDao getmessageDao() {
		return messageDao;
	}

	public void setmessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}
	//添加申请
	public void messageCompanyjob(Message message) {
		messageDao.save(message);
		
	}	

	//显示列表
		public List<Message> getUsers(){
		return messageDao.getAll();
		
	}


		
		public void deleteMessage(Message message){
		messageDao.delete(message.getId());
	}
	public void deleteMessageByID(int messageID){

		messageDao.delete(messageID);
	}

	public List<Message> getMessage(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return  messageDao.getMessage(currentPage, pageSize);	
	}


	public int getMessageCount() {
		// TODO Auto-generated method stub
		System.out.println("getMessageCount");
		return messageDao.getMessageBymessageCount();
	}
	
}
