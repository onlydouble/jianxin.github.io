/*package com.dao;
import java.io.Serializable;  

import org.hibernate.*;  
import org.hibernate.cfg.*;  
import org.hibernate.tool.hbm2ddl.SchemaExport;  
  
  
@SuppressWarnings("deprecation")
public class HibernateUtil {  
  
    private static final SessionFactory sessionFactory;  
  
    static {  
        try {  
            // Create the SessionFactory from hibernate.cfg.xml  
            sessionFactory = new Configuration().configure()  
                    .buildSessionFactory();  
        } catch (Throwable ex) {  
            // Make sure you log the exception, as it might be swallowed  
            System.err.println("Initial SessionFactory creation failed." + ex);  
            throw new ExceptionInInitializerError(ex);  
        }  
    }  
  
    public static SessionFactory getSessionFactory() {  
        return sessionFactory;  
    }  
  
    public static Serializable addObject(Object o) {  
        // 获得session对象  
        Serializable s = null;  
        Session session = HibernateUtil.getSessionFactory().openSession();  
        // 开启事务  
        Transaction tx = session.beginTransaction();  
        try {  
             s = session.save(o);// 把对象保存到db，并且返回新建列的主键值  
            // 提交事务  
            tx.commit();  
        } catch (Exception e) {  
            System.out.println(e.getMessage());  
            tx.rollback();  
        } finally {  
            session.close();  
        }  
        return s;  
    }  
  
    public static void main(String[] args) {  
        Configuration cfg =new Configuration().configure();  
        SchemaExport e = new SchemaExport(cfg);  
        e.create(true, true);  
    }  
  
}
	
  

*/