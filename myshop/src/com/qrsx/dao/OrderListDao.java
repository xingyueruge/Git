package com.qrsx.dao;

import java.io.Serializable;
import java.util.List;

import com.qrsx.pojo.Orderinfo;
import com.qrsx.pojo.Orderlist;
import com.qrsx.pojo.User;
import com.qrsx.util.BaseDao;

public class OrderListDao extends BaseDao<Orderlist> implements IOrderListDao{

	public void save(Orderlist s){
		super.save(s);
	}
	
	public void delete(Orderlist s){
		super.delete(s);
	}
	
	public void update(Orderlist s){
		super.update(s);
	}
	
	public Orderlist get(String id){
		return (Orderlist)super.get(Orderlist.class, id);
	}

	public List<Orderlist> list(){
		String hql="select stu from Orderlist stu";
		return super.list(hql);
	}
	
	public List<Object[]> selectProps(){
		String hql="select  from Orderlist";
		return super.selectProps(hql);
	}
	public List<Orderlist> selectOrderIds(String id){
		String hql="select u from Orderlist u where u.orderid='"+id+"'";
		return (List<Orderlist>)super.list(hql);
	}
	
	public List<Orderlist> selectLikeName(String name){
		String hql="select u from Orderlist u where u.name like ?";
		return (List<Orderlist>)super.selectLikeName(name, hql);
	}
	
	public long count(){
		String hql="select count(user) from Orderlist user";
		return super.count(hql);
	}
	
	public long getPageNum(int pageSize){
		return super.getPageNum(this.count(), pageSize);
	}
	
	public List<Orderlist> getPageRecord(int pageNo,int pageSize){
		String hql="select u from Orderlist u order by u.userid";
		return super.getPageRecord(hql,pageNo,pageSize);
	}
	
	public List<Orderlist> getStuClass(String cname){
		//String hql="from Student stu inner join fetch stu.cl where stu.cl.cname='"+cname+"'";
		//x String hql="from Student stu inner join fetch Classes cl where cl.cname='"+cname+"'";
		String hql="select stu from Orderlist stu inner join fetch stu.cl";
		return super.list(hql);
	}
	
	
	public boolean isUniqueName(String uname) {
		return false;
	}
	
	public static void main(String[] args) {
		
		
		
		
		OrderListDao dao=new OrderListDao();
		
		System.out.println(dao.selectOrderIds("oder833784765").size());
		
	}
	

}
