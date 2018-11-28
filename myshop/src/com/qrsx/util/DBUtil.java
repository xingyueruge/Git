package com.qrsx.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DBUtil {
	static SessionFactory sf=null;
	
	static{
		Configuration cfg=new Configuration().configure();
		sf=cfg.buildSessionFactory();
	}
	
	public static Session getSession(){
		return sf.openSession();
	}
	
	public static void closeSession(Session session){
		if(session!=null)
			session.close();
	}
}
