package com.qrsx.dao;

import java.io.Serializable;

import com.qrsx.pojo.User;

public interface IUserDao {

	public void save(User obj);
	
	public void delete(User obj);
	
	public void update(User obj);
	
	public User get(String id);
	
	public boolean isUniqueName(String uname);
}
