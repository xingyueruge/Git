package com.qrsx.dao;

import java.io.Serializable;
import java.util.List;

import com.qrsx.pojo.Orderinfo;
import com.qrsx.pojo.Orderlist;
import com.qrsx.pojo.User;
import com.qrsx.util.BaseDao;

public class OrderInfoDao extends BaseDao<Orderinfo> implements IOrderInfoDao{

	public void save(Orderinfo s){
		super.save(s);
	}
	
	public void delete(Orderinfo s){
		super.delete(s);
	}
	
	public void update(Orderinfo s){
		super.update(s);
	}
	
	public Orderinfo get(String id){
		return (Orderinfo)super.get(Orderinfo.class, id);
	}

	public List<Orderinfo> list(){
		String hql="select stu from Orderinfo stu";
		return super.list(hql);
	}
	
	public List<Object[]> selectProps(){
		String hql="select  from Orderinfo";
		return super.selectProps(hql);
	}
	
	public List<Orderinfo> selectLikeName(String name){
		String hql="select u from Orderinfo u where u.name like ?";
		return (List<Orderinfo>)super.selectLikeName(name, hql);
	}
	
	public List<Orderinfo> selectOrderIds(String userid){
		String hql="select u from Orderinfo u where u.userid='"+userid+"'";
		return (List<Orderinfo>)super.list(hql);
	}
	
	public long count(){
		String hql="select count(*) from Orderinfo user";
		return super.count(hql);
	}
	
	public long getPageNum(int pageSize){
		return super.getPageNum(this.count(), pageSize);
	}
	
	public List<Orderinfo> getPageRecord(int pageNo,int pageSize){
		String hql="select u from User u order by u.userid";
		return super.getPageRecord(hql,pageNo,pageSize);
	}
	
	public List<Orderinfo> getStuClass(String cname){
		//String hql="from Student stu inner join fetch stu.cl where stu.cl.cname='"+cname+"'";
		//x String hql="from Student stu inner join fetch Classes cl where cl.cname='"+cname+"'";
		String hql="select stu from Orderinfo stu inner join fetch stu.cl";
		return super.list(hql);
	}
	
	
	public boolean isUniqueName(String uname) {
		return false;
	}
	

	

}
