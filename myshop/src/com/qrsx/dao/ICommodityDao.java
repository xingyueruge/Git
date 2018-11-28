package com.qrsx.dao;

import com.qrsx.pojo.Commodity;

public interface ICommodityDao {

	public void save(Commodity obj);
	
	public void delete(Commodity obj);
	
	public void update(Commodity obj);
	
	public Commodity get(String id);
	
	public boolean isUniqueName(String uname);
}
