package com.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import com.DaoImpl.DaoImpl;
import com.entity.Account;
import com.entity.Entitys;
import com.entity.Teach;
import com.entity.Teacher;

public class AccountService {
	private DaoImpl daoImpl;

	/**
	 * add account
	 * @param Account account
	 */
	public boolean addAccount(Entitys entity){
		
		return daoImpl.addAccount(entity);
	}
	/**
	 * view entity
	 * @param String table
	 */
	public List<Entitys> viewEntitys(String table) {
		return daoImpl.viewEntitys(table);
	}
	
	/**
	 * modify account
	 * @param Entitys entity
	 */
	public boolean modifyEntity(Entitys entity) {
		return daoImpl.modifyEntity(entity);
	}
	/**
	 * 登陆
	 * @param Account account
	 * @return List<Entitys>
	 */
	public List<Entitys> login(Account account){
		
		return daoImpl.login(account);
	}
	/**
	 * view single entity
	 * @param id
	 * @return List<Entitys>
	 */
	public List<Entitys> viewOneEntity(String id,String table){
		return daoImpl.viewOneEntity(id,table);
	}
	/**
	 * delete
	 * @param Entitys entity
	 */
	public boolean delete(Entitys entity){
		return daoImpl.delete(entity);
	}
	/**
	 * upload head
	 */
	public boolean uploadHead(String id,String head){
		return daoImpl.uploadHead(id, head);
	}
	/**
	 * view 
	 * @param table
	 * @param field
	 * @param condition
	 */
	public List<Entitys> view(String table,String field,String condition,int page,int eachPage){
		return daoImpl.view(table, field, condition,page,eachPage);
	}
	/**
	 * check OR
	 * @param table
	 * @param field1
	 * @param field2
	 * @param value
	 */
	public List<Entitys>  check(String table,String field1,String field2,String value1,String value2){
		return daoImpl.check(table, field1, field2, value1,value2);
	}
	/**
	 * update two condition
	 * @param table
	 * @param col
	 * @param value
	 * @param id
	 * @param value2
	 */
	public boolean update(String table,String col,String value,String id,String value2){
		
		return daoImpl.update(table, col, value, id, value2);
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
	public List<Entitys> check(String table,String field1,String value,String orderBy,String upDown,int page,int eachPage){
		return daoImpl.check(table, field1, value, orderBy, upDown, page, eachPage);
	}

	/**
	 * get count
	 * @param String table
	 * @param String col
	 * @param String value
	 */
	public int getCount(String table,String col,String value){
		return daoImpl.getCount(table, col, value);
	}
	/**
	 * upload teach
	 * @return
	 */
	public boolean uploadTeach(Teach teach,List<File> file,List<String> fileFileName,String path,int userType){
		String filename = null;
		//上传文件，获取文件名
		FileInputStream in = null;
		FileOutputStream out = null;
//		get path
		File filedir2 = new File(path);
		if(!filedir2.exists()){
			filedir2.mkdir();
		}
		try{
			for(int i=0;i<file.size();i++){
				Date date = new Date();
				in = new FileInputStream(file.get(i));
				filename = fileFileName.get(i);
				int index = filename.lastIndexOf(".");
				String dex = filename.substring(index+1);
				filename = date.getTime()+""+(int)((Math.random())*10000000)+"."+dex;
				out = new FileOutputStream(new File(path,filename));
				byte []buffer = new byte[1024];
				while((in.read(buffer,0,buffer.length))!=-1){
					out.write(buffer);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		teach.setFileName(filename);
		//根据权限设置是否显示文件
		if(userType==1){
			teach.setIsShow("1");
		}else{
			teach.setIsShow("0");
		}
		return daoImpl.addAccount(teach);
		
	}
	/**
	 * delete teach file
	 * @param Teach teach
	 * @param String path
	 */
	public boolean deleteTeach(Teach teach,String path){
		File file = new File(path);
		if(daoImpl.delete(teach)){
			if(file.exists()){
				file.delete();
			}
			return true;
		}
		return false;
	}
	/**
	 * upload teach
	 * @return
	 */
	public boolean uploadTeacher(Teacher teacher,List<File> file,List<String> fileFileName,String path){
		String filename = null;
		//上传文件，获取文件名
		FileInputStream in = null;
		FileOutputStream out = null;
//		get path
		File filedir2 = new File(path);
		if(!filedir2.exists()){
			filedir2.mkdir();
		}
		try{
			for(int i=0;i<file.size();i++){
				Date date = new Date();
				in = new FileInputStream(file.get(i));
				filename = fileFileName.get(i);
				int index = filename.lastIndexOf(".");
				String dex = filename.substring(index+1);
				filename = date.getTime()+""+(int)((Math.random())*10000000)+"."+dex;
				out = new FileOutputStream(new File(path,filename));
				byte []buffer = new byte[1024];
				while((in.read(buffer,0,buffer.length))!=-1){
					out.write(buffer);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		teacher.setHead(filename);
		return daoImpl.addAccount(teacher);
		
	}
	
	/**
	 * upload file
	 * @return
	 */
	public String[]	uploadFile(List<File> file,List<String> fileFileName,String path){
		String []names = new String[file.size()];
		String filename = null;
		//上传文件，获取文件名
		FileInputStream in = null;
		FileOutputStream out = null;
//		get path
		File filedir2 = new File(path);
		if(!filedir2.exists()){
			filedir2.mkdir();
		}
		try{
			for(int i=0;i<file.size();i++){
				Date date = new Date();
				in = new FileInputStream(file.get(i));
				filename = fileFileName.get(i);
				int index = filename.lastIndexOf(".");
				String dex = filename.substring(index+1);
				filename = date.getTime()+""+(int)((Math.random())*10000000)+"."+dex;
				names[i] = filename;
				out = new FileOutputStream(new File(path,filename));
				byte []buffer = new byte[1024];
				while((in.read(buffer,0,buffer.length))!=-1){
					out.write(buffer);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
			return names;
		}
		return names;
		
	}
	/**
	 * delete
	 * @param table
	 * @param field
	 * @param condition
	 */
	public boolean delete(String table, String field, String condition) {
		return daoImpl.delete(table, field, condition);
	}
	/**
	 * get count two condition
	 * @param String table
	 * @param String col
	 * @param String value
	 * @param String col2
	 * @param String value2
	 */
	public int getCount(String table, String col, String value, String col2, String value2) {
		return daoImpl.getCount(table, col, value, col2, value2);
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
	public List<Entitys> check(String table, String field1, String value, String field2, String value2, String orderBy,
			String upDown, int page, int eachPage) {
		
		return daoImpl.check(table, field1, value, field2, value2, orderBy, upDown, page, eachPage);
	}
	
	
	
	
	
	
	
	
	public DaoImpl getDaoImpl() {
		return daoImpl;
	}

	public void setDaoImpl(DaoImpl daoImpl) {
		this.daoImpl = daoImpl;
	}
	
	
	
}
