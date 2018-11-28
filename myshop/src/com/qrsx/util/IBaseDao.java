package com.qrsx.util;

import java.io.Serializable;
import java.util.List;

public interface IBaseDao<T> {
	/**
	 * 
	 * @param obj
	 */
	public void save(T obj);
	/**
	 * 
	 * @param obj
	 */
	public void delete(T obj);
	/**
	 * 
	 * @param obj
	 */
	public void update(T obj);
	/**
	 * 
	 * @param clazz
	 * @param id
	 * @return
	 */
	public T get(Class clazz,Serializable id);
	/**
	 * 
	 * @param hql
	 * @return
	 */
	public List<T> list(String hql);
	/**
	 * 
	 * @param params
	 * @param hql
	 * @return
	 */
	public List<T> selectLikeProps(String[] params, String hql);
	/**
	 * 
	 * @param hql
	 * @return
	 */
	public Long count(String hql);
	/**
	 * 
	 * @param count
	 * @param pageSize
	 * @return
	 */
	public long getPageNum(long count,int pageSize);
	/**
	 * 
	 * @param hql
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public List<T> getPageRecord(String hql,int pageNo,int pageSize);
}
