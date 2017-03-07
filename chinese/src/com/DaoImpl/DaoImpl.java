package com.DaoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.Dao.Dao;
import com.entity.Account;
import com.entity.Entitys;

public class DaoImpl implements Dao{
	private SessionFactory sessionFactory;
	private Session session;
	private String hql;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * add account
	 * @param Account account
	 */
	@Override
	public boolean addAccount(Entitys entity) {
		try{
			
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(entity);
			session.getTransaction().commit();
			return true;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return false;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
		
	}
	
	/**
	 * view entity
	 * @param String table
	 */
	@Override
	public List<Entitys> viewEntitys(String table) {
		List<Entitys> entitys = null;
		hql = "FROM "+table;
		try{
			
			session = sessionFactory.openSession();
			session.beginTransaction();
			entitys = session.createQuery(hql).list();
			session.getTransaction().commit();
			return entitys;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return entitys;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * modify account
	 * @param Entitys entity
	 */
	@Override
	public boolean modifyEntity(Entitys entity) {
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.update(entity);
			session.getTransaction().commit();
			return true;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return false;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}

	/**
	 * µÇÂ½
	 * @param Account account
	 * @return List<Entitys>
	 */
	@Override
	public List<Entitys> login(Account account) {
		List<Entitys> entitys = null;
		hql = "FROM Account WHERE username='"+account.getUsername()+"' AND password='"+account.getPassword()+"'";
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			entitys = session.createQuery(hql).list();
			session.getTransaction().commit();
			return entitys;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return entitys;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * view single entity
	 * @param id
	 * @return List<Entitys>
	 */
	@Override
	public List<Entitys> viewOneEntity(String id,String table) {
		List<Entitys> entitys = null;
		hql = "FROM "+table+" WHERE id="+id;
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			entitys = session.createQuery(hql).list();
			session.getTransaction().commit();
			return entitys;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return entitys;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * delete
	 * @param Entitys entity
	 */
	@Override
	public boolean delete(Entitys entity) {
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.delete(entity);
			session.getTransaction().commit();
			return true;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return false;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * upload head
	 */
	@Override
	public boolean uploadHead(String id, String head) {
		hql = "UPDATE t_userinformation SET head='"+head+"' WHERE accountId="+id;
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.createSQLQuery(hql).executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return false;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * view 
	 * @param table
	 * @param field
	 * @param condition
	 */
	@Override
	public List<Entitys> view(String table,String field,String condition,int page,int eachPage) {
		List<Entitys> entitys = null;
		hql = "FROM "+table+" WHERE "+field+" ='"+condition+"'";
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			Query query =  session.createQuery(hql);
			query.setFirstResult(page);
			query.setMaxResults(eachPage);
			entitys = query.list();
			session.getTransaction().commit();
			return entitys;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return entitys;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * check
	 * @param table
	 * @param field1
	 * @param field2
	 * @param value
	 */
	@Override
	public List<Entitys> check(String table, String field1, String value1, String field2,String value2) {
		List<Entitys> entitys = null;
		hql = "FROM "+table+" WHERE "+field1+" = '"+value1+"' AND "+field2+" ='"+value2+"'";
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			entitys = session.createQuery(hql).list();
			session.getTransaction().commit();
			return entitys;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return entitys;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * update two condition
	 * @param table
	 * @param col
	 * @param value
	 * @param id
	 * @param value2
	 */
	@Override
	public boolean update(String table, String col, String value, String id, String value2) {
		hql = "UPDATE "+table+" SET "+col+" = '"+value+"' WHERE "+id+" = '"+value2+"'";
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.createSQLQuery(hql).executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return false;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * check OR
	 * @param table
	 * @param field1
	 * @param field2
	 * @param value
	 * @param value2
	 * @param orderBy
	 * @parma upDown
	 */
	@Override
	public List<Entitys> check(String table,String field1,String value,String orderBy,String upDown,int page,int eachPage) {
		List<Entitys> entitys = null;
		hql = "FROM "+table+" WHERE "+field1+" = '"+value+"' ORDER BY "+orderBy+" "+upDown;
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			Query query =  session.createQuery(hql);
			query.setFirstResult(page);
			query.setMaxResults(eachPage);
			entitys = query.list();
			session.getTransaction().commit();
			return entitys;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return entitys;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}

	/**
	 * get count
	 * @param String table
	 * @param String col
	 * @param String value
	 */
	@Override
	public int getCount(String table, String col, String value) {
		hql = "SELECT count(*) FROM "+table+" WHERE "+col+"='"+value+"'";
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			Query query =  session.createQuery(hql);
			
			session.getTransaction().commit();
			return ((Number)query.uniqueResult()).intValue();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return 0;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * delete
	 * @param table
	 * @param field
	 * @param condition
	 */
	@Override
	public boolean delete(String table, String field, String condition) {
		hql = "DELETE FROM "+table+" WHERE "+field+" = '"+condition+"'";
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.createSQLQuery(hql).executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return false;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
	/**
	 * get count two condition
	 * @param String table
	 * @param String col
	 * @param String value
	 * @param String col2
	 * @param String value2
	 */
	@Override
	public int getCount(String table, String col, String value, String col2, String value2) {
		hql = "SELECT count(*) FROM  "+table+" WHERE "+col+" = '"+value+"' AND "+col2+" = '"+value2+"'";
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			Query query =  session.createQuery(hql);
			
			session.getTransaction().commit();
			return ((Number)query.uniqueResult()).intValue();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return 0;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}
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
	@Override
	public List<Entitys> check(String table, String field1, String value, String field2, String value2, String orderBy,
			String upDown, int page, int eachPage) {
		List<Entitys> entitys = null;
		hql = "FROM "+table+" WHERE "+field1+" = '"+value+"' AND "+field2+" = '"+value2+"' ORDER BY "+orderBy+" "+upDown;
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			Query query =  session.createQuery(hql);
			query.setFirstResult(page);
			query.setMaxResults(eachPage);
			entitys = query.list();
			session.getTransaction().commit();
			return entitys;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return entitys;
		}finally{
			if(session.isOpen()){
				session.close();
			}
		}
	}

}
