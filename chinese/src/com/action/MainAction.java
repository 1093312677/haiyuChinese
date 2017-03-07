package com.action;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.Service.AccountService;
import com.entity.Article;
import com.entity.Entitys;
import com.entity.History;
import com.entity.Institution;
import com.entity.Teach;
import com.entity.Teacher;
import com.entity.Video;

public class MainAction extends SuperAction{
	private AccountService accountService;

	//file
	private List<File> file;
	private List<String> fileFileName;
	private List<String> fileContentType;
	
	//Article
	private Integer articleId;
	private java.lang.String title;
	private java.lang.String content;
	private java.lang.String author;
	private java.lang.String time;
	private java.lang.String type;
	//Video
	private Integer videoId;
	private String videoName;
	private String imageUrl;
	private String updateTime;
	private String introduce;
	private String saveType;//1为第三方视频，2为本地上传视频
	private String lessonType;
	private String speaker;
	//history
	private History history;
	private List<History> historys;
	private Integer historyId;
	private java.lang.String username;
	
	
	private String filename = null;
	private String head;
	
	private String isShow;
	private Integer permission;
	
	private Video video;
	private List<Video> videos;
	private Article article;
	private List<Article> articles;
	private Entitys entity;
	private List<Entitys> entitys;

	private Institution institution;
	private List<Institution> institutions;
	private String instituName;
	private String url;
	private String instroduce;
	private Integer instituId;
	//page
	private int page;
	private int eachPage;
	private int pageType;
	
	
	//teacher
	private String name;
	private String sex;
	private String major;
	private String job;
	private String mianClass;
	private String teachStyle;
	private String motto;
	
	//type
	private String viewType;
	/**
	 * main page
	 */
	public String mainPage() {
		//video
		page=0;
		eachPage = 6;
		entitys = accountService.view("Video", "isShow","1", page, eachPage);
		videos = new ArrayList<Video>();
		for(int i=0;i<entitys.size();i++){
			videos.add((Video)entitys.get(i));
		}
		request.setAttribute("videos", videos);
		
		//history
		getData();
		page = 0;
		eachPage = 10;
		entitys = accountService.check("History","username",(String)request.getSession().getAttribute("username"),"time","desc",page,eachPage);
		historys = new ArrayList<History>();
		for(int i=0;i<entitys.size();i++){
			historys.add((History)entitys.get(i));
		}
		request.setAttribute("historys", historys);
		
		//Institution
		entitys = accountService.viewEntitys("Institution");
		institutions = new ArrayList<Institution>();
		if(entitys.size()>=2){
			for(int i=0;i<2;i++){
				institutions.add((Institution)entitys.get(i));
			}
		}else{
			for(int i=0;i<entitys.size();i++){
				institutions.add((Institution)entitys.get(i));
			}
		}
		request.setAttribute("institutions", institutions);
		return "main_page";
	}
	
	
	//--------------------------------------------------article-----------------------------------
	/**
	 * add article
	 */
	public String addArticle(){
		getData();
		permission = (Integer)session.getAttribute("permission"); 
		if(permission==1){
			article.setIsShow("1");
		}else{
			article.setIsShow("0");
		}
		entity = article;
		accountService.addAccount(entity);
		return "success";
	}
	
	/**
	 * add head
	 */
	public String addHead(){
		
		String path = application.getRealPath("/upload"+head);
//		get path
		File filedir = new File(path);
		if(filedir.exists()){
			filedir.delete();
		}
		//上传文件，获取文件名
		FileInputStream in = null;
		FileOutputStream out = null;
		
		String path2 = application.getRealPath("/upload");
//		get path
		File filedir2 = new File(path2);
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
				
				String id = String.valueOf(request.getSession().getAttribute("id"));
				accountService.uploadHead(id, filename);
				
				out = new FileOutputStream(new File(path,filename));
				byte []buffer = new byte[1024];
				while((in.read(buffer,0,buffer.length))!=-1){
					out.write(buffer);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return "success";
	}
	
	
	/**
	 * view Article
	 */
	public String viewArticle(){
		int all = accountService.getCount("Article", "isShow", "1");
		eachPage = 20;//每页
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
		entitys = accountService.view("Article", "isShow","1", page*eachPage, eachPage);
		articles = new ArrayList<Article>();
		for(int i=0;i<entitys.size();i++){
			articles.add((Article)entitys.get(i));
		}
		request.setAttribute("articles", articles);
		request.setAttribute("all", all);
		request.setAttribute("page", page);
		request.setAttribute("allPage", allPage);
		return "view_article";
	}
	
	/**
	 * view Article main page
	 */
	public String viewArticleMainPage(){
		page=0;
		eachPage = 50;
////		查看文章
//		entitys = accountService.view("Article", "isShow","1", page, eachPage);
//		articles = new ArrayList<Article>();
//		for(int i=0;i<entitys.size();i++){
//			articles.add((Article)entitys.get(i));
//		}
//		request.setAttribute("articles", articles);
//		查看教案
		entitys = accountService.view("Teach", "isShow","1", 0, eachPage*1000);
		List<Teach> teachs = new ArrayList<Teach>();
		for(int i=0;i<entitys.size();i++){
			teachs.add((Teach)entitys.get(i));
		}
		request.setAttribute("teachs", teachs);
		session.setAttribute("viewType",viewType);
		return "view_article_mainPage";
	}
	/**
	 * view Article to be audited
	 */
	public String viewArticleAudited(){
		page=0;
		eachPage = 50;
		entitys = accountService.view("Article", "isShow","0", page, eachPage);
		articles = new ArrayList<Article>();
		for(int i=0;i<entitys.size();i++){
			articles.add((Article)entitys.get(i));
		}
		request.setAttribute("articles", articles);
		return "view_article_audit";
	}
	/**
	 * article throught the audit
	 */
	public String throughtAuditArticle(){
		accountService.update("t_article", "isShow", "1", "id", String.valueOf(articleId));
		viewArticleAudited();
		return "view_article_audit";
	}
	/**
	 * article don't pass the audit
	 */
	public String notThroughtAuditArticle(){
		accountService.update("t_article", "isShow", "2", "id", String.valueOf(articleId));
		viewArticleAudited();
		return "view_article_audit";
	}
	/**
	 * view don't pass ths audit
	 */
	public String viewNotPassArticle(){
		entitys = accountService.check("Article", "isShow", "2", "author",(String)session.getAttribute("username"));
		articles = new ArrayList<Article>();
		for(int i=0;i<entitys.size();i++){
			articles.add((Article) entitys.get(i));
		}
		request.setAttribute("articles", articles);
		return "view_article";
	}
	
	/**
	 * delete Article
	 */
	public String deleteArticle(){
		getData();
		accountService.delete("t_history", "articleId", String.valueOf(article.getId()));
		accountService.delete(article);
		viewArticle();
//		显示成功信息
		if(((Integer)session.getAttribute("permission"))==2){
			return "success";
		}
		return "view_article";
	}
	/**
	 * viewArticleDetials
	 * 
	 */
	public String viewArticleDetials(){
		getData();
		entitys = accountService.viewOneEntity(String.valueOf(articleId),"Article");
		articles = new ArrayList<Article>();
		for(int i=0;i<entitys.size();i++){
			articles.add((Article)entitys.get(i));
		}
		request.setAttribute("articles", articles);
		//add article history
		if(viewType!=null){
			if(!viewType.equals("teach"))
				addArticleHistory();
		}
		return "view_article_detials";
	}
	/**
	 * get update article
	 */
	public String getUpdateArticle(){
		getData();
		entitys = accountService.viewOneEntity(String.valueOf(articleId),"Article");
		articles = new ArrayList<Article>();
		for(int i=0;i<entitys.size();i++){
			articles.add((Article)entitys.get(i));
		}
		
		request.setAttribute("articles", articles);
		return "update_article";
	}
	/**
	 * update article
	 */
	public String updateArticle(){
		getData();
		entity = article;
		if((int)session.getAttribute("permission")==2){
			article.setIsShow("0");
		}
		accountService.modifyEntity(entity);
		return "success";
	}
	
	
	//-----------------------------------------video-------------------------
	/**
	 * add video
	 * @return
	 */
	public String addVideo(){
		getData();
		upload();
		permission = (Integer)session.getAttribute("permission"); 
		if(permission==1){
			video.setIsShow("1");
		}else{
			video.setIsShow("0");
		}
		entity = video;
		accountService.addAccount(entity);
		return "success";
	}
	/**
	 * add video local
	 */
	public String addVideoLocal(){
		
		getData();
		
		upload();
		permission = (Integer)session.getAttribute("permission"); 
		if(permission==1){
			video.setIsShow("1");
		}else{
			video.setIsShow("0");
		}
		entity = video;
		accountService.addAccount(entity);
		return "success";
	}
	
	
	/**
	 * view Video
	 */
	public String viewVieo(){
		int all = accountService.getCount("Video", "isShow", "1");
		eachPage = 10;//每页
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
		
		entitys = accountService.view("Video", "isShow","1", page*eachPage, eachPage);
		videos = new ArrayList<Video>();
		for(int i=0;i<entitys.size();i++){
			videos.add((Video)entitys.get(i));
		}
		request.setAttribute("videos", videos);
		request.setAttribute("all", all);
		request.setAttribute("page", page);
		
		request.setAttribute("allPage", allPage);
		return "view_video";
	}
	/**
	 * view Video MainPage
	 */
	public String viewVieoMainPage(){
		int all = accountService.getCount("Video", "isShow", "1");
		eachPage = 10;
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
		
		entitys = accountService.view("Video", "isShow","1", page*eachPage, eachPage);
		videos = new ArrayList<Video>();
		for(int i=0;i<entitys.size();i++){
			videos.add((Video)entitys.get(i));
		}
		request.setAttribute("videos", videos);
		request.setAttribute("all", all);
		request.setAttribute("page", page);
		
		request.setAttribute("allPage", allPage);
		return "view_video_mainPage";
	}
	/**
	 * view Video to be audited
	 */
	public String viewVieoAudited(){
		if(String.valueOf(page)==null){
			page=0;
		}
		
		eachPage = 50;
		entitys = accountService.view("Video", "isShow","0", page, eachPage);
		videos = new ArrayList<Video>();
		for(int i=0;i<entitys.size();i++){
			videos.add((Video)entitys.get(i));
		}
		request.setAttribute("videos", videos);
		return "view_video_audit";
	}
	/**
	 * video throught the audit
	 */
	public String throughtAudit(){
		accountService.update("t_video", "isShow", "1", "id", String.valueOf(videoId));
		viewVieoAudited();
		return "view_video_audit";
	}
	/**
	 * video don't pass the audit
	 */
	public String notThroughtAudit(){
		accountService.update("t_video", "isShow", "2", "id", String.valueOf(videoId));
		viewVieoAudited();
		return "view_video_audit";
	}
	/**
	 * delete Video
	 */
	public String deleteVideo(){
		getData();
		String path = application.getRealPath("/upload/"+video.getImageUrl());
		File imageFile = new File(path);
		
		accountService.delete("t_history", "videoId", String.valueOf(video.getId()));
		if(accountService.delete(video)){
			if(imageFile.exists()){
				imageFile.delete();
			}
		}
//		显示成功信息
		if(((Integer)session.getAttribute("permission"))==2){
			return "success";
		}
		viewVieo();
		return "view_video";
	}
	
	/**
	 * play video
	 */
	public String playVideo(){
		getData();
		entitys = accountService.viewOneEntity(String.valueOf(videoId),"Video");
		
		videos = new ArrayList<Video>();
		for(int i=0;i<entitys.size();i++){
			videos.add((Video)entitys.get(i));
		}
		//System.out.print(videos.get(0).getVideoName());
		//save history
		
		request.setAttribute("videos", videos);
		addVideoHistory();
//		判断主页和视频区播放视频的不同方式
		String type="2";
	    type = request.getParameter("type");
		if(type.equals("1"))
			return "play_video";
		return "play_video_main";
	}
	//--------------------------------------------history------------------------------------
	/**
	 * add video history
	 */
	public String addVideoHistory(){
		getData();
		int id = videoId;
		page = 0;
		eachPage = 10;
		entitys = accountService.check("History","videoId",String.valueOf(id),"username",author);
		videos = new ArrayList<Video>();
		videos.add(video);
		if(entitys.size()>0){
			history.setVideo(video);
			history.setId(((History)entitys.get(0)).getId());
			entity = history;
			accountService.modifyEntity(entity);
		}else{
			history.setVideo(video);
			entity = history;
			accountService.addAccount(entity);
		}
		
		
		return null;
	}
	
	/**
	 * add article history
	 */
	public String addArticleHistory(){
		getData();
		int id = articleId;
		page = 0;
		eachPage = 10;
		entitys = accountService.check("History","articleId",String.valueOf(id),"username",author);
		articles = new ArrayList<Article>();
		articles.add(article);
		if(entitys.size()>0){
			history.setArticle(article);
			
			history.setId(((History)entitys.get(0)).getId());
			entity = history;
			accountService.modifyEntity(entity);
		}else{
			history.setArticle(article);
			entity = history;
			accountService.addAccount(entity);
		}
		
		
		return null;
	}
	
	/**
	 * view history
	 */
	public String viewHistory(){
		getData();
		page = 0;
		eachPage = 10;
		entitys = accountService.check("History","username",(String)request.getSession().getAttribute("username"),"time","desc",page,eachPage);
		historys = new ArrayList<History>();
		for(int i=0;i<entitys.size();i++){
			historys.add((History)entitys.get(i));
		}
		request.setAttribute("historys", historys);
		return "view_history";
	}
	
	
	
	
	/**
	 * upload
	 */
	public void upload(){
		FileInputStream in = null;
		FileOutputStream out = null;
		
		String path = application.getRealPath("/upload");
//		get path
		File filedir = new File(path);
		if(!filedir.exists()){
			filedir.mkdir();
		}
		try{
			for(int i=0;i<file.size();i++){
				Date date = new Date();
				in = new FileInputStream(file.get(i));
				filename = fileFileName.get(i);
				int index = filename.lastIndexOf(".");
				String dex = filename.substring(index+1);
				filename = date.getTime()+""+(int)((Math.random())*10000000)+"."+dex;
				
				//判断封面还是视频
				if(i==0){
					video.setImageUrl(filename);
				}else{
					video.setVideoName("upload/"+filename);
				}
				
				out = new FileOutputStream(new File(path,filename));
				byte []buffer = new byte[1024];
				while((in.read(buffer,0,buffer.length))!=-1){
					out.write(buffer);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//---------------------------------------------------------teacher=--------------------------
	private String yesNo;
	
	

	/**
	 * teacher view article
	 */
	public String viewArticleTeacher(){
		articles = new ArrayList<Article>();
		if(yesNo.equals("yes")){
			entitys = accountService.check("Article", "isShow", "1", "author", String.valueOf(session.getAttribute("username")));
			for(int i=0;i<entitys.size();i++){
				articles.add((Article)entitys.get(i));
			}
			request.setAttribute("articles", articles);
		}else if(yesNo.equals("no")){
			entitys = accountService.check("Article", "isShow", "2", "author", String.valueOf(session.getAttribute("username")));
			for(int i=0;i<entitys.size();i++){
				articles.add((Article)entitys.get(i));
			}
			request.setAttribute("articles", articles);
		}else{
			entitys = accountService.check("Article", "isShow", "0", "author", String.valueOf(session.getAttribute("username")));
			for(int i=0;i<entitys.size();i++){
				articles.add((Article)entitys.get(i));
			}
			request.setAttribute("articles", articles);
		}
		return "view_article";
	}
	
	/**
	 * teacher view video
	 */
	public String viewVideoTeacher(){
		videos = new ArrayList<Video>();
		if(yesNo.equals("yes")){
			entitys = accountService.check("Video", "isShow", "1", "author", String.valueOf(session.getAttribute("username")));
			for(int i=0;i<entitys.size();i++){
				videos.add((Video)entitys.get(i));
			}
			request.setAttribute("videos", videos);
		}else if(yesNo.equals("no")){
			entitys = accountService.check("Video", "isShow", "2", "author", String.valueOf(session.getAttribute("username")));
			for(int i=0;i<entitys.size();i++){
				videos.add((Video)entitys.get(i));
			}
			request.setAttribute("videos", videos);
		}else{
			entitys = accountService.check("Video", "isShow", "0", "author", String.valueOf(session.getAttribute("username")));
			for(int i=0;i<entitys.size();i++){
				videos.add((Video)entitys.get(i));
			}
			request.setAttribute("videos", videos);
		}
		return "view_video";
	}
	
	
	//-----------------------------------------institution------------------------------
	/**
	 * add institution
	 * 
	 */
	public String addInstitution(){
		getData();
		uploadOne();
		institution.setImageUrl(filename);
		if(accountService.addAccount(institution)){
			return "success";
		}
		return "failed";
	}
	/**
	 * view institution
	 */
	public String viewInstitution(){
		entitys = accountService.viewEntitys("Institution");
		institutions = new ArrayList<Institution>();
		for(int i=0;i<entitys.size();i++){
			institutions.add((Institution)entitys.get(i));
		}
		request.setAttribute("institutions", institutions);
		return "view_institution";
	}
	
	/**
	 * view institution main page
	 */
	public String viewInstitutionMainPage(){
		entitys = accountService.viewEntitys("Institution");
		institutions = new ArrayList<Institution>();
		for(int i=0;i<entitys.size();i++){
			institutions.add((Institution)entitys.get(i));
		}
		request.setAttribute("institutions", institutions);
		return "view_institution_main_page";
	}
	/**
	 * delete institution
	 */
	public String deleteInstitution(){
		getData();
		if(accountService.delete(institution)){
			File file = new File(imageUrl);
			if(file.exists()){
				file.delete();
			}
		}
		viewInstitution();
		return "view_institution";
	}
	
	/**
	 * view one institution
	 */
	public String viewOneInstitution(){
		entitys = accountService.viewOneEntity(String.valueOf(instituId),"Institution");
		institutions = new ArrayList<Institution>();
		for(int i=0;i<entitys.size();i++){
			institutions.add((Institution)entitys.get(i));
		}
		request.setAttribute("institutions", institutions);
		return "view_one_institution";
	}
	/**
	 * update institution
	 */
	public String updateInstitution(){
		getData();
		accountService.modifyEntity(institution);
		return "success";
	}
	
	
	//---------------------------------------------view teacher--------------------------------
	
	public String viewTeacher(){
		entitys = accountService.viewEntitys("Teacher");
		List<Teacher> teachers = new ArrayList<Teacher>();
		for(int i=0;i<entitys.size();i++){
			teachers.add((Teacher)entitys.get(i));
		}
		request.setAttribute("teachers", teachers);
		
		return "view_teacher";
	}
	
	
	//---------------------------------------------view activity--------------------------------
	public String viewActivity(){
		
		return "view_activity";
	}
	/**
	 * get data
	 * @return
	 */
	public void getData(){
		author = (String) request.getSession().getAttribute("username");
		video = new Video();
		video.setAuthor(author);
		video.setId(videoId);
		video.setImageUrl(imageUrl);
		video.setIntroduce(introduce);
		video.setSaveType(saveType);
		video.setTitle(title);
		video.setType(type);
		video.setUpdateTime(updateTime);
		video.setVideoName(videoName);
		video.setLessonType(lessonType);
		video.setSpeaker(speaker);
		
		//article
		article = new Article();
		article.setAuthor(author);
		article.setContent(content);
		article.setId(articleId);
		article.setTime(time);
		article.setTitle(title);
		article.setType(type);
		article.setIsShow(isShow);
		//history
		history = new History();
		history.setId(historyId);
		history.setUsername(author);
		Date d = new Date();  
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
        String dateNowStr = sdf.format(d); 
		history.setTime(dateNowStr);
//		history.setVideo(video);
//		history.setArticle(article);
		
		//institution
		institution = new Institution();
		institution.setId(instituId);
		institution.setImageUrl(imageUrl);
		institution.setInstituName(instituName);
		institution.setInstroduce(instroduce);
		institution.setUrl(url);
	}
	
	/**
	 * upload
	 */
	public void uploadOne(){
		FileInputStream in = null;
		FileOutputStream out = null;
		
		String path = application.getRealPath("/upload");
//		get path
		File filedir = new File(path);
		if(!filedir.exists()){
			filedir.mkdir();
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
		}
	}
	
	public AccountService getAccountService() {
		return accountService;
	}

	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public java.lang.String getTitle() {
		return title;
	}

	public void setTitle(java.lang.String title) {
		this.title = title;
	}

	public java.lang.String getContent() {
		return content;
	}

	public void setContent(java.lang.String content) {
		this.content = content;
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

	

	public Integer getVideoId() {
		return videoId;
	}

	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}

	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getSaveType() {
		return saveType;
	}

	public void setSaveType(String saveType) {
		this.saveType = saveType;
	}

	public Integer getHistoryId() {
		return historyId;
	}

	public void setHistoryId(Integer historyId) {
		this.historyId = historyId;
	}

	public java.lang.String getUsername() {
		return username;
	}

	public void setUsername(java.lang.String username) {
		this.username = username;
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
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}

	public String getIsShow() {
		return isShow;
	}

	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}
	public String getYesNo() {
		return yesNo;
	}

	public void setYesNo(String yesNo) {
		this.yesNo = yesNo;
	}

	public String getInstituName() {
		return instituName;
	}

	public void setInstituName(String instituName) {
		this.instituName = instituName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getInstroduce() {
		return instroduce;
	}

	public void setInstroduce(String instroduce) {
		this.instroduce = instroduce;
	}

	public Integer getInstituId() {
		return instituId;
	}

	public void setInstituId(Integer instituId) {
		this.instituId = instituId;
	}

	public String getLessonType() {
		return lessonType;
	}

	public void setLessonType(String lessonType) {
		this.lessonType = lessonType;
	}

	public String getSpeaker() {
		return speaker;
	}

	public void setSpeaker(String speaker) {
		this.speaker = speaker;
	}

	public String getViewType() {
		return viewType;
	}

	public void setViewType(String viewType) {
		this.viewType = viewType;
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

	
	
	
	
}
