package com.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.Service.AccountService;
import com.entity.Activity;
import com.entity.ActivityImage;
import com.entity.Entitys;

public class ActivityAction extends SuperAction{
	private AccountService accountService;
	private Integer id;
	private String title;
	private String time;
	private String content;
	private List<ActivityImage> activityImages;
	
	private Activity activity;
	private List<Activity> activitys;
	
	private List<Entitys> entitys;
	//file
	private List<File> file;
	private List<String> fileFileName;
	private List<String> fileContentType;
	/**
	 * save activity
	 * @return
	 */
	public String saveActivity(){
		getData();
		String [] names;
		activityImages = new ArrayList<ActivityImage>();
		String path = application.getRealPath("/upload");
//		判断是否有照片上传
		if(file!=null){
			names = accountService.uploadFile(file, fileFileName, path);
			for(int i=0;i<names.length;i++){
				ActivityImage activityImage = new ActivityImage();
				activityImage.setImageName(names[i]);
				activityImages.add(activityImage);
				activityImage.setActivity(activity);
				accountService.addAccount(activityImage);
			}
		}
		else{
			accountService.addAccount(activity);
		}
		return "success";
	}
	/**
	 * view activity
	 */
	public String viewActivitys(){
		activitys = new ArrayList<Activity>();
		entitys = accountService.viewEntitys("Activity");
		for(int i=0;i<entitys.size();i++){
			activitys.add((Activity) entitys.get(i));
		}
		request.setAttribute("activitys", activitys);
		return "view_activitys";
	}
	/**
	 * view activity
	 */
	public String viewActivity(){
		activitys = new ArrayList<Activity>();
		entitys = accountService.viewOneEntity(String.valueOf(id), "Activity");
		for(int i=0;i<entitys.size();i++){
			activitys.add((Activity) entitys.get(i));
		}
		request.setAttribute("activitys", activitys);
		return "view_activity";
	}
	
	/**
	 * view activitys background
	 */
	public String viewActivitysBg(){
		activitys = new ArrayList<Activity>();
		entitys = accountService.viewEntitys("Activity");
		for(int i=0;i<entitys.size();i++){
			activitys.add((Activity) entitys.get(i));
		}
		request.setAttribute("activitys", activitys);
		return "view_activity_bg";
	}
	/**
	 * delete activity
	 */
	public String deleteActivity(){
		getData();
		entitys = accountService.view("ActivityImage", "activityId", String.valueOf(id), 0, 200);
		activityImages = new ArrayList<ActivityImage>();
		File file;
		if(entitys.size()>0){
			String activityId = String.valueOf(((ActivityImage) entitys.get(0)).getActivity().getId());
			accountService.delete("t_images", "activityId",activityId );
		}
		
//		删除数据
		if(accountService.delete(activity)){
//			删除文件
			for(int i=0;i<entitys.size();i++){
				activityImages.add((ActivityImage) entitys.get(i));
				String path  = application.getRealPath("/upload/"+((ActivityImage) entitys.get(i)).getImageName());
				file = new File(path);
				if(file.exists()){
					file.delete();
				}
			}
		}
		viewActivitysBg();
		return "view_activity_bg"; 
	}
	
	/**
	 * get data
	 * @return
	 */
	private void getData(){
		activity = new Activity();
		activity.setContent(content);
		activity.setId(id);
		activity.setTime(time);
		activity.setTitle(title);
		
	}
	
	public AccountService getAccountService() {
		return accountService;
	}

	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
	
	
	
}
