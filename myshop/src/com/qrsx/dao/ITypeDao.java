package com.qrsx.dao;

import java.io.Serializable;

import com.qrsx.pojo.Type;

public interface ITypeDao {

	public void save(Type obj);
	
	public void delete(Type obj);
	
	public void update(Type obj);
	
	public Type get(String id);
	
	public boolean isUniqueName(String tname);
}
