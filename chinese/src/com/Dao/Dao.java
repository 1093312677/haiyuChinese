package com.Dao;

import java.util.List;

import com.entity.Account;
import com.entity.Entitys;

public interface Dao {
	/**
	 * add account
	 * @param Account account
	 */
	public boolean addAccount(Entitys entity);
	/**
	 * view entity
	 * @param String table
	 */
	public List<Entitys> viewEntitys(String table);

	/**
	 * view single entity
	 * @param id
	 * @return List<Entitys>
	 */
	public List<Entitys> viewOneEntity(String id,String table);
	
	/**
	 * modify account
	 * @param Entitys entity
	 */
	public boolean modifyEntity(Entitys entity);
	
	/**
	 * login
	 * @param Account account
	 * @return List<Entitys>
	 */
	public List<Entitys> login(Account account);
	
	/**
	 * delete
	 * @param Entitys entity
	 */
	public boolean delete(Entitys entity);
	/**
	 * delete
	 * @param table
	 * @param field
	 * @param condition
	 */
	public boolean delete(String table,String field,String condition);
	/**
	 * upload head
	 */
	public boolean uploadHead(String id,String head);
	
	/**
	 * view 
	 * @param table
	 * @param field
	 * @param condition
	 * @param  page
	 * @param eachPage
	 */
	public List<Entitys> view(String table,String field,String condition,int page,int eachPage);
	
	/**
	 * check OR
	 * @param table
	 * @param field1
	 * @param field2
	 * @param value
	 */
	public List<Entitys> check(String table,String field1,String field2,String value1,String value2);
	/**
	 * check OR
	 * @param table
	 * @param field1
	 * @param value
	 * @param orderBy
	 * @parma upDown
	 */
	public List<Entitys> check(String table,String field1,String value,String orderBy,String upDown,int page,int eachPage);
	/**
	 * check OR two condition
	 * @param table
	 * @param field1
	 * @param value
	 *@param field2
	 * @param value2
	 * @param orderBy
	 * @parma upDown
	 */
	public List<Entitys> check(String table,String field1,String value,String field2,String value2,String orderBy,String upDown,int page,int eachPage);

	/**
	 * update two condition
	 * @param table
	 * @param col
	 * @param value
	 * @param id
	 * @param value2
	 */
	public boolean update(String table,String col,String value,String id,String value2);
	
	/**
	 * get count
	 * @param String table
	 * @param String col
	 * @param String value
	 */
	public int getCount(String table,String col,String value);
	
	/**
	 * get count two condition
	 * @param String table
	 * @param String col
	 * @param String value
	 * @param String col2
	 * @param String value2
	 */
	public int getCount(String table,String col,String value,String col2,String value2);
}
