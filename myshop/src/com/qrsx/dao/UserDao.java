package com.qrsx.dao;

import java.io.Serializable;
import java.util.List;
import com.qrsx.pojo.User;
import com.qrsx.util.BaseDao;

public class UserDao extends BaseDao<User> implements IUserDao{

	public void save(User s){
		super.save(s);
	}
	
	public void delete(User s){
		super.delete(s);
	}
	
	public void update(User s){
		super.update(s);
	}
	
	public User get(String id){
		return (User)super.get(User.class, id);
	}

	public List<User> list(){
		String hql="select stu from User stu";
		return super.list(hql);
	}
	
	public List<Object[]> selectProps(){
		String hql="select  from User";
		return super.selectProps(hql);
	}
	
	public List<User> selectLikeName(String name){
		String hql="select u from User u where u.name like ?";
		return (List<User>)super.selectLikeName(name, hql);
	}
	public List<User> selectName(String name){
		String hql="select u from User u where u.logname='"+name+"'";
		return (List<User>)super.list(hql);
	}
	public long count(){
		String hql="select count(user) from User user";
		return super.count(hql);
	}
	
	public long getPageNum(int pageSize){
		return super.getPageNum(this.count(), pageSize);
	}
	
	public List<User> getPageRecord(int pageNo,int pageSize){
		String hql="select u from User u order by u.userid";
		return super.getPageRecord(hql,pageNo,pageSize);
	}
	
	public List<User> getStuClass(String cname){
		//String hql="from Student stu inner join fetch stu.cl where stu.cl.cname='"+cname+"'";
		//x String hql="from Student stu inner join fetch Classes cl where cl.cname='"+cname+"'";
		String hql="select stu from Student stu inner join fetch stu.cl";
		return super.list(hql);
	}
	
	
	public boolean isUniqueName(String uname) {
		return false;
	}
	
	public static void main(String[] args) {
		
		
		System.out.println(new UserDao().selectName("hbb").get(0).getKeyword());
		
		
	}
	

}
