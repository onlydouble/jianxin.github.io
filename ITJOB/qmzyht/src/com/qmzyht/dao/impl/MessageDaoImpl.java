package com.qmzyht.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qmzyht.pojo.Admin;
import com.qmzyht.pojo.Message;
import com.qnzyht.dao.BaseDaoHibernate;
import com.qnzyht.dao.MessageDao;
@Repository(value = "messageDao")
public class MessageDaoImpl extends BaseDaoHibernate implements MessageDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Message getMessageByMeno(String meno) {
		Session session = sessionFactory.getCurrentSession();
		List<Message> list = new ArrayList<Message>();
		// 通过 Hibernate 的Criteria查询
		Criteria criteria = session.createCriteria(Message.class);
		if (!(null == meno && "".equals(meno))) {
			criteria.add(Restrictions.eq("meno", meno));
		}
		list = criteria.list();

		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public int deleteMessage(int id) {
		int ret = id;
		Session session = sessionFactory.openSession();
		String hql = "DELETE FROM Message WHERE id=?";
		Transaction t = null;
		try {
			t = session.beginTransaction();
			Query q = session.createQuery(hql);
			q.setInteger(0, id);
			q.executeUpdate();
			t.commit();
		} catch (Exception ex) {
			if (t != null) {
				ex.printStackTrace();
				t.rollback();
			}
			ret = 0;
		} finally {
			session.close();
		}
		return ret;
	}
	@Override
	public List<Message> getMessage(int currentPaging, int pageSize) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("FROM Message");
		int startRow = (currentPaging - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Message> message = query.list();
		session.close();
		return message;
	}

	@Override
	public int getMessageCount() {
		List<Message> list = findAllMessage();
		return list.size();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Message> findAllMessage() {
		Session session = sessionFactory.getCurrentSession();
		List<Message> list = new ArrayList<Message>();
		Criteria criteria = session.createCriteria(Message.class);
		list = criteria.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

}
