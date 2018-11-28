package com.qrsx.dao;

import java.io.Serializable;
import java.util.List;

import com.qrsx.pojo.Type;
import com.qrsx.util.BaseDao;

public class TypeDao extends BaseDao<Type> implements ITypeDao{

	public void save(Type s){
		super.save(s);
	}
	
	public void delete(Type s){
		super.delete(s);
	}
	
	public void update(Type s){
		super.update(s);
	}
	
	public Type get(String id){
		return (Type)super.get(Type.class, id);
	}

	public List<Type> list(){
		String hql="select stu from Type stu";
		return super.list(hql);
	}
	
	public List<Object[]> selectProps(){
		String hql="select  from Type";
		return super.selectProps(hql);
	}
	
	public List<Type> selectLikeName(String name){
		String hql="select u from Type u where u.name like ?";
		return (List<Type>)super.selectLikeName(name, hql);
	}
	
	public long count(){
		String hql="select count(user) from Type user";
		return super.count(hql);
	}
	
	public long getPageNum(int pageSize){
		return super.getPageNum(this.count(), pageSize);
	}
	
	public List<Type> getPageRecord(int pageNo,int pageSize){
		String hql="select u from Type u order by u.userid";
		return super.getPageRecord(hql,pageNo,pageSize);
	}
	
	public List<Type> getStuClass(String cname){
		//String hql="from Student stu inner join fetch stu.cl where stu.cl.cname='"+cname+"'";
		//x String hql="from Student stu inner join fetch Classes cl where cl.cname='"+cname+"'";
		String hql="select stu from Type stu inner join fetch stu.cl";
		return super.list(hql);
	}
	
	
	public boolean isUniqueName(String uname) {
		return false;
	}
	
	public static void main(String[] args) {
		
		
		
		
		TypeDao dao=new TypeDao();
		
		
		
		
		
		System.out.println(dao.count());
		
		//System.out.println(dao.selectLikeName("o").size());
		
		
	//	User u=new User();
	
		//dao.save(u);
		//dao.delete(u);
		
	//	System.out.println(dao.list().size());
		
	/*	List<User> al=(List<User>)dao.list();
		
		for (User user : al) {
			System.out.println(user.getId());
		}*/
		
		
		
		
	}
	

}
