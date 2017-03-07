package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;

import org.apache.commons.validator.Field;

import com.Service.AccountService;
import com.entity.Article;
import com.entity.Entitys;
import com.entity.Teach;
import com.entity.Teacher;

public class TeachAction extends SuperAction{
	private AccountService accountService;

	//file
	private List<File> file;
	private List<String> fileFileName;
	private List<String> fileContentType;
	//teach
	private Integer teachId;
	private java.lang.String title;
	private java.lang.String author;
	private java.lang.String time;
	private java.lang.String type;
	private Teach teach;
	private List<Teach> teachs;
	private List<Entitys> entitys;
	//teacher
	private Integer id;
	private String name;
	private String sex;
	private String major;
	private String job;
	private String mianClass;
	private String teachStyle;
	private String motto;
	private String head;
	
	private Teacher teacher;
	//page
	private int pageType;
	private int page;
	/**
	 * upload
	 * @return
	 */
	public String uploadTeach(){
		getData();
		
		String path = application.getRealPath("/upload");
		if(accountService.uploadTeach(teach, file,fileFileName,path,(int)session.getAttribute("permission")))
			return "success";
		return "failed";
	}
	/**
	 * view file
	 */
	public String viewFile(){
		//int all = accountService.getCount("Teach", "isShow", "1");
		int all = accountService.getCount("Teach", "isShow", "1", "type", type);
		int eachPage = 10;//每页
//		计算多少页
		int allPage=0;
		if(all%eachPage>0){
			allPage = (all/eachPage)+1;
		}else{
			allPage = all/eachPage;
		}
		//判断是上一页还是下一页
		if(pageType==1){
			//下一页
			page+=1;
		}else if(pageType==0){
			page-=1;
		}
		//判断page的大小是否小于0，或者大于最大数
		if(page<0){
			page=0;
		}else if(page>allPage){
			page = allPage;
		}
		
//		获取查看类型
		
		//entitys = accountService.view("Teach", "isShow","1", page*eachPage, eachPage);
		entitys = accountService.check("Teach", "type", type, "isShow","1","id","asc",page*eachPage, eachPage);
		teachs = new ArrayList<Teach>();
		for(int i=0;i<entitys.size();i++){
			teachs.add((Teach)entitys.get(i));
		}
		request.setAttribute("teachs", teachs);
		request.setAttribute("all", all);
		request.setAttribute("page", page);
		request.setAttribute("allPage", allPage);
		request.setAttribute("type", type);
		return "view_file";
	}
	
	/**
	 * download file
	 */
	public String downloadFile(){
		try {
			//获取客户端输出流
			OutputStream outputStream = response.getOutputStream();
//			输出文件用的字符数组
			byte b[] = new byte[1024];
			String path = application.getRealPath("/upload/"+title);
			//System.out.println(path);
			File file = new File(path);
//			保存文件对话框
			 response.setHeader("Content-disposition", "attachment;filename="+title);  
		     //通知客服文件的MIME类型  
		     response.setContentType("application/msword");  
		     //通知客服文件的长度  
		     long fileLength = file.length();  
		      String length = String.valueOf(fileLength);  
		      response.setHeader("Content_length", length); 
			FileInputStream fileInputStream = new FileInputStream(file);
			int n =0 ;
			while((n = fileInputStream.read(b))!=-1){
				outputStream.write(b, 0,n);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "view_file";
	}
	
	
	/**
	 * delete teach file
	 */
	public String deleteTeach(){
		getData();
		String path = application.getRealPath("/upload/"+title);
		accountService.deleteTeach(teach, path);
		return "success";
	}
	/**
	 * view teach user
	 */
	public String viewTeachUser(){
		int eachPage = 500;
		page = 0;
		entitys = accountService.view("Teach", "author",(String)session.getAttribute("username"), page*eachPage, eachPage);
		teachs = new ArrayList<Teach>();
		for(int i=0;i<entitys.size();i++){
			teachs.add((Teach)entitys.get(i));
		}
		request.setAttribute("teachs", teachs);
		return "view_file";
	}
	/**
	 * view Teach to be audited
	 */
	public String viewTeachAudited(){
		page=0;
		int eachPage = 5000;
		entitys = accountService.view("Teach", "isShow","0", page, eachPage);
		teachs = new ArrayList<Teach>();
		for(int i=0;i<entitys.size();i++){
			teachs.add((Teach)entitys.get(i));
		}
		request.setAttribute("teachs", teachs);
		return "view_file_audit";
	}
	/**
	 * Teach throught the audit
	 */
	public String throughtAuditTeach(){
		accountService.update("tb_teach", "isShow", "1", "id", String.valueOf(teachId));
		viewTeachAudited();
		return "view_file_audit";
	}
	/**
	 * article don't pass the audit
	 */
	public String notThroughtAuditTeach(){
		accountService.update("tb_teach", "isShow", "2", "id", String.valueOf(teachId));
		viewTeachAudited();
		return "view_file_audit";
	}
	
	/**
	 * view don't pass the audit
	 */
	public String viewNotPassTeach(){
		entitys = accountService.check("Teach", "isShow", "2", "author",(String)session.getAttribute("username"));
		teachs = new ArrayList<Teach>();
		for(int i=0;i<entitys.size();i++){
			teachs.add((Teach) entitys.get(i));
		}
		request.setAttribute("teachs", teachs);
		
		
		return "view_file";
	}
	
	/**
	 * view don't pass the audit
	 */
	public String viewPassTeach(){
		entitys = accountService.check("Teach", "isShow", "1", "author",(String)session.getAttribute("username"));
		teachs = new ArrayList<Teach>();
		for(int i=0;i<entitys.size();i++){
			teachs.add((Teach) entitys.get(i));
		}
		request.setAttribute("teachs", teachs);
		
		
		return "view_file";
	}
	/**
	 * view don't passing the audit
	 */
	public String viewPassingTeach(){
		entitys = accountService.check("Teach", "isShow", "0", "author",(String)session.getAttribute("username"));
		teachs = new ArrayList<Teach>();
		for(int i=0;i<entitys.size();i++){
			teachs.add((Teach) entitys.get(i));
		}
		request.setAttribute("teachs", teachs);
		
		
		return "view_file";
	}
	
	//-------------------------------------------teacher------------------
	/**
	 * add teacher
	 * @return
	 */
	public String addTeacher(){
		getData();
		String path = application.getRealPath("/upload");
		if(accountService.uploadTeacher(teacher, file, fileFileName, path))
			return "success";
		return "failed";
	}
	/**
	 * view teacher
	 * 
	 */
	public String viewTeacher(){
		entitys = accountService.viewEntitys("Teacher");
		List<Teacher> teachers = new ArrayList<Teacher>();
		for(int i=0;i<entitys.size();i++){
			teachers.add((Teacher) entitys.get(i));
		}
		request.setAttribute("teachers", teachers);
		return "view_teacher_bg";
	}
	/**
	 * delete teacher
	 */
	public  String deleteTeacher(){
		
		getData();
		String path = application.getRealPath("/upload/"+head);
		File file = new File(path);
		if(file.exists()){
			file.delete();
		}
		accountService.delete(teacher);
		viewTeacher();
		return "view_teacher_bg";
	}
	/**
	 * get data
	 * @return
	 */
	private void getData(){
		teach = new Teach();
		teach.setAuthor((String)session.getAttribute("username"));
		teach.setId(teachId);
		teach.setTime(time);
		teach.setTitle(title);
		teach.setType(type);
		
		teacher = new Teacher();
		teacher.setHead(head);
		teacher.setId(id);
		teacher.setJob(job);
		teacher.setMajor(major);
		teacher.setMianClass(mianClass);
		teacher.setMotto(motto);
		teacher.setName(name);
		teacher.setSex(sex);
		teacher.setTeachStyle(teachStyle);
	}
	
	public AccountService getAccountService() {
		return accountService;
	}
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}
	public List<File> getFile() {
		return file;
	}
	public void setFile(List<File> file) {
		this.file = file;
	}
	public List<String> getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}
	public List<String> getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}
	public Integer getTeachId() {
		return teachId;
	}
	public void setTeachId(Integer teachId) {
		this.teachId = teachId;
	}
	public java.lang.String getTitle() {
		return title;
	}
	public void setTitle(java.lang.String title) {
		this.title = title;
	}
	public java.lang.String getAuthor() {
		return author;
	}
	public void setAuthor(java.lang.String author) {
		this.author = author;
	}
	public java.lang.String getTime() {
		return time;
	}
	public void setTime(java.lang.String time) {
		this.time = time;
	}
	public java.lang.String getType() {
		return type;
	}
	public void setType(java.lang.String type) {
		this.type = type;
	}
	public int getPageType() {
		return pageType;
	}
	public void setPageType(int pageType) {
		this.pageType = pageType;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public Teach getTeach() {
		return teach;
	}
	public void setTeach(Teach teach) {
		this.teach = teach;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getMianClass() {
		return mianClass;
	}
	public void setMianClass(String mianClass) {
		this.mianClass = mianClass;
	}
	public String getTeachStyle() {
		return teachStyle;
	}
	public void setTeachStyle(String teachStyle) {
		this.teachStyle = teachStyle;
	}
	public String getMotto() {
		return motto;
	}
	public void setMotto(String motto) {
		this.motto = motto;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	
	
	
	
	
	
	
	
	
	
	
}
