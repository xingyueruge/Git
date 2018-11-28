package com.qrsx.dao;

import java.io.Serializable;
import java.util.List;

import com.qrsx.pojo.Commodity;
import com.qrsx.util.BaseDao;

public class CommodityDao extends BaseDao<Commodity> implements ICommodityDao{

	public void save(Commodity s){
		super.save(s);
	}
	
	public void delete(Commodity s){
		super.delete(s);
	}
	
	public void update(Commodity s){
		super.update(s);
	}
	
	public Commodity get(String id){
		return (Commodity)super.get(Commodity.class, id);
	}

	public List<Commodity> list(){
		String hql="select stu from Commodity stu";
		return super.list(hql);
	}
	
	public List<Commodity> listByTypeId(String typeid){
		String hql="select stu from Commodity stu where stu.tid='"+typeid+"'";
		return super.list(hql);
	}
	
	public List<Object[]> selectProps(){
		String hql="select  from Commodity";
		return super.selectProps(hql);
	}
	
	public List<Commodity> selectLikeName(String name){
		String hql="select u from Commodity u where u.cname like ?";
		return (List<Commodity>)super.selectLikeName(name, hql);
	}
	
	public long count(){
		String hql="select count(user) from Commodity user";
		return super.count(hql);
	}
	
	public long getPageNum(int pageSize){
		return super.getPageNum(this.count(), pageSize);
	}
	
	public List<Commodity> getPageRecord(int pageNo,int pageSize){
		String hql="select u from Commodity u order by u.cid";
		return super.getPageRecord(hql,pageNo,pageSize);
	}
	
	public List<Commodity> getStuClass(String cname){
		//String hql="from Student stu inner join fetch stu.cl where stu.cl.cname='"+cname+"'";
		//x String hql="from Student stu inner join fetch Classes cl where cl.cname='"+cname+"'";
		String hql="select stu from Commodity stu inner join fetch stu.cl";
		return super.list(hql);
	}
	
	
	public boolean isUniqueName(String uname) {
		return false;
	}
	
	public static void main(String[] args) {
		
		
		
		
		CommodityDao dao=new CommodityDao();

        System.out.println(dao.list().size());
	
	
		
		
	}
	

}
