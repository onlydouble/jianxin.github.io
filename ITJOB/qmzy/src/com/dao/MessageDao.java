package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entity.Companyjob;
import com.entity.Message;



public class MessageDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public void save(Message message){
		getSession().save(message);
	}
	
	@SuppressWarnings("unchecked")
	public List<Message> getAll() {

/*		String hql = "from Message";*/
		String hql = "from Message as message order by message.id desc";
		return getSession().createQuery(hql).list();

	}

	public Message getById(int id) {
		// TODO Auto-generated method stub
		return (Message) getSession().get(Message.class, id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub

		String hql = "delete FROM Message where id =?";

		Query q = getSession().createQuery(hql);
		q.setInteger(0, id);
		int a = q.executeUpdate(); // .setInteger("cjid", cjid)
	}

	public List<Message> getMessage(int currentPage, int pageSize) {
		String hql = "from Message";
		Query query = getSession().createQuery(hql);
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Message> message = query.list();

		return message;
	}


	public int getMessageBymessageCount() {
		List<Message> list = findMessage();
		return list.size();
	}

	private List<Message> findMessage() {
		List<Message> list = new ArrayList<Message>();
		Criteria criteria = getSession().createCriteria(Message.class);
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}
	}
	
	

