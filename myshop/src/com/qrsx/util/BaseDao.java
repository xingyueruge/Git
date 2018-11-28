package com.qrsx.util;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.qrsx.po.PropsType;

public class BaseDao<T> implements IBaseDao{


	public void delete(Object obj) {
		Session session=DBUtil.getSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			session.delete(obj);
			tx.commit();//事务提交
		}catch(Exception e){
			tx.rollback();//事务回滚
		}
		DBUtil.closeSession(session);
		
	}

	
	public Object get(Class clazz, Serializable id) {
		Session session=DBUtil.getSession();
		Object obj=session.get(clazz, id);
		DBUtil.closeSession(session);
		return obj;
	}

	
	public void save(Object obj) {
		Session session=DBUtil.getSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			session.save(obj);
			tx.commit();//事务提交
		}catch(Exception e){
			tx.rollback();//事务回滚
		}
		DBUtil.closeSession(session);
	}
	

	public void update(Object obj) {
		Session session=DBUtil.getSession();
		Transaction tx=null;
		try{
			tx=session.beginTransaction();
			session.update(obj);
			tx.commit();//事务提交
		}catch(Exception e){
			tx.rollback();//事务回滚
		}
		DBUtil.closeSession(session);
	}

	public List<T> list(String hql){
		Session session=DBUtil.getSession();
		Query query=session.createQuery(hql);
		List<T> list=query.list();
		DBUtil.closeSession(session);
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> selectLikeProps(String[] params, String hql) {
		Session session=DBUtil.getSession();
		Query query=session.createQuery(hql);
		for(int i=0;i<params.length;i++){
			query.setString(i,"%"+params[i]+"%");
		}
		List<T> list=query.list();
		DBUtil.closeSession(session);
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> selectLikeName(List<PropsType> params, String hql) {
		Session session=DBUtil.getSession();
		Query query=session.createQuery(hql);
		for(int i=0;i<params.size();i++){
			PropsType pt=params.get(i);
			if(pt.getType().equals("String"))
				query.setString(i, (String)pt.getProval());
			if(pt.getType().equals("int"))
				query.setInteger(i, (Integer)pt.getProval());
			if(pt.getType().equals("long"))
				query.setLong(i, (Long)pt.getProval());
			if(pt.getType().equals("float"))
				query.setFloat(i, (Float)pt.getProval());
			if(pt.getType().equals("double"))
				query.setDouble(i, (Double)pt.getProval());
			if(pt.getType().equals("Date"))
				query.setDate(i, (Date)pt.getProval());
		}
		List<T> list=query.list();
		DBUtil.closeSession(session);
		return list;
	}
	
	public Long count(String hql){
		Session session=DBUtil.getSession();
		long count=(Long)session.createQuery(hql).uniqueResult();
		DBUtil.closeSession(session);
		return count;
	}

	public long getPageNum(long count,int pageSize){
		if(count%pageSize!=0)
			return count/pageSize+1;
		return count/pageSize;
	}
	
	public List<T> getPageRecord(String hql,int pageNo,int pageSize) {
		Session session=DBUtil.getSession();
		int index=pageSize*(pageNo-1);
		List<T> list=session.createQuery(hql).setFirstResult(index).setMaxResults(pageSize).list();
		DBUtil.closeSession(session);
		return list;
	}
	//-------------------------------------------------------
	
	public List<Object[]> selectProps(String hql){
		Session session=DBUtil.getSession();
		List<Object[]> list=session.createQuery(hql).list();
		DBUtil.closeSession(session);
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> selectLikeName(String sname, String hql) {
		Session session=DBUtil.getSession();
		Query query=session.createQuery(hql);
		query.setString(0,"%"+sname+"%");
		List<T> list=query.list();
		DBUtil.closeSession(session);
		return list;
	}

	
}
