package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.Service.AccountService;
import com.entity.Account;
import com.entity.Entitys;
import com.entity.UserInformation;
import com.entity.Video;

/**
 * @author kone
 *
 */
public class AccountAction extends SuperAction{
	private AccountService accountService;
	private Account account;
	private List<Account> accounts;
	private Video video;
	private Entitys entity;
	private List<Entitys> entitys;
	private UserInformation userInfor;
	private List<UserInformation> userInfors;
	
	
	//information
	private java.lang.String name;
	private java.lang.String birthday;
	private java.lang.String sex;
	private java.lang.String address;
	private java.lang.String introduce;
	private String head;
	private Integer inforId;
	//account
	private Integer id;
	private String username;
	private String password;
	private String newpassword;
	private Integer permission;
	private String email;
	private String nationality;
	private String useingLanguage;
	private String inChina;
	private String chineseLevel;
	private String hsk;
	private String expectLevel;
	
	private String adminadd;

	/**
	 * main notify
	 */
	public String mainNotify(){
		int page=0;
		int eachPage = 50;
		entitys = accountService.view("Article", "isShow","0", page, eachPage);
		session.setAttribute("articleAuditNumber", entitys.size());
		entitys = accountService.view("Video", "isShow","0", page, eachPage);
		session.setAttribute("videoAuditNumber", entitys.size());
		return "view_notify";
	}
	public String login(){
		getData();
		//get notify message
		mainNotify();
		entitys = accountService.login(account);
		if(entitys.size()>0){
			account = (Account)entitys.get(0);
			request.getSession().setAttribute("username", account.getUsername());
			request.getSession().setAttribute("id", account.getId());
			request.getSession().setAttribute("permission", account.getPermission());
			session.setAttribute("exp", account.getExp());
			session.setAttribute("password", account.getPassword());
			//is sign in time
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String d = sdf.format(date);
			if(d.equals(account.getSignTime())){
				session.setAttribute("isSign", "1");
			}else{
				session.setAttribute("isSign", "0");
			}
			session.setAttribute("signTime", account.getSignTime());
			request.getSession().setAttribute("account", account);
			//如果是管理员进入管理员界面
			if(account.getPermission()==1){
				return "login_success";
			}else if(account.getPermission()==2|account.getPermission()==3){
				return "login_success_other";
			}else{
				try {
					response.sendRedirect("loginAdmin.html");
					
				} catch (IOException e) {
					e.printStackTrace();
				}
				return null;
			}
		}else{
			try {
					response.sendRedirect("login.html");
				} catch (IOException e) {
					e.printStackTrace();
				}
				return null;
			}
	}
	/**
	 * sign in time
	 */
	public String signInTime(){
		//get current time
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String d = sdf.format(date);
		String idS = String.valueOf(session.getAttribute("id"));
		List<Entitys> entity = accountService.viewOneEntity(idS, "Account");
		account = (Account) entity.get(0);
		if(d.equals(account.getSignTime())){
			System.out.print("same"+session.getAttribute("isSign"));
		}else{
			String expS = (String)session.getAttribute("exp");
			if(expS==null||expS==""){
				expS = "0";
			}
			int expI = Integer.valueOf(expS);
			expI+=10;
			accountService.update("t_account", "exp", String.valueOf(expI), "id",idS);
			accountService.update("t_account", "signTime", d, "id", idS);
			session.setAttribute("exp", expI);
			System.out.println(d+expI);
		}
		
		
		return null;
	}
	
	/**
	 * loginout
	 * @param Account account
	 */
	public String loginOut(){
		request.getSession().setAttribute("username", "");
		request.getSession().removeAttribute("id");
		request.getSession().invalidate();
		try {
			response.sendRedirect("loginAdmin.html");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * loginout
	 * @param Account account
	 */
	public String loginOutOther(){
		request.getSession().setAttribute("username", "");
		request.getSession().removeAttribute("id");
		request.getSession().invalidate();
		try {
			response.sendRedirect("Main_mainPage.action");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * add account
	 * @param Account account
	 */
	public String addAccount(){
		account = new Account();
		userInfor = new UserInformation();
		userInfor.setChineseLevel(chineseLevel);
		userInfor.setEmail(email);
		userInfor.setExpectLevel(expectLevel);
		userInfor.setHsk(hsk);
		userInfor.setInChina(inChina);
		userInfor.setNationality(nationality);
		userInfor.setUseingLanguage(useingLanguage);
		userInfor.setHead("nohead.png");
		
		userInfor.setAccount(account);
		
		account.setExp("0");
		account.setSignTime("0");
		account.setPassword(password);
		account.setUsername(username);
		account.setPermission(permission);
		account.setUserInformation(userInfor);
		entitys = accountService.view("Account", "username", username, 0, 10);
		if(entitys.size()<=0){
			if(accountService.addAccount(userInfor)){
				if(adminadd.equals("1")){
					try {
						response.sendRedirect("page/addUser.jsp");
					} catch (IOException e) {
						e.printStackTrace();
					}
				}else{
					try {
						response.sendRedirect("login.html");
					} catch (IOException e) {
						e.printStackTrace();
					}	
				}
				
			}else{
				try {
					response.sendRedirect("page/register.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}else{
			try {
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				
				out.print("<script>alert('该用户已存在');location='page/register.jsp'</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		
		return null;
	}

	/**
	 * check account used
	 */
	public String checkAccount(){
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		entitys = accountService.view("Account", "username", username, 0, 10);
		if(entitys.size()>0){
			out.print("1");
		}else{
			out.print("0");
		}
		return null;
	}
	/**
	 * view account
	 * 
	 */
	public String viewAccount(){
//		entitys = accountService.viewEntitys("UserInformation");
//		userInfors = new ArrayList<UserInformation>();
//		for(int i=0;i<entitys.size();i++){
//			userInfors.add((UserInformation)entitys.get(i));
//		}
		
		entitys = accountService.viewEntitys("Account");
		accounts = new ArrayList<Account>();
		for(int i=0;i<entitys.size();i++){
			accounts.add((Account)entitys.get(i));
		}
		request.setAttribute("userInfors", accounts);
		return "view_accounts";
	}
	/**
	 * view single entity
	 * @param id
	 * @return 
	 */
	public String viewOneEntity(){
		id = (int)session.getAttribute("id");
		int page = 0;
		int eachPage = 50;
		entitys = accountService.view("UserInformation", "accountId",String.valueOf(id), page, eachPage);
//		entitys = accountService.viewOneEntity(String.valueOf(id),"UserInformation");
		userInfors = new ArrayList<UserInformation>();
		for(int i=0;i<entitys.size();i++){
			userInfors.add((UserInformation)entitys.get(i));
		}
		if(userInfors.size()>0){
			request.getSession().setAttribute("userInfors", userInfors.get(0));
			return "view_one_infor";
		}
		return "view_one_infor";
	}
	/**
	 * modify infor
	 * @param Entitys entity
	 */
	public String modifyInfor() {
		getData();
		account = (Account)request.getSession().getAttribute("account");
		account.setId((Integer)request.getSession().getAttribute("id"));
		userInfor.setAccount(account);
		entity = userInfor;
		if(inforId == null){
			accountService.addAccount(entity);
		}else{
			accountService.modifyEntity(entity);
		}
		
		return "success";
	}
	
	/**
	 * modify account
	 * @param Entitys entity
	 */
	public String modifyAccount() {
		getData();
		entity = account;
		accountService.modifyEntity(entity);
		return "success";
	}
	
	/**
	 * delete user
	 */
	public String deleteUser(){
		getData();
		entity = account;
		accountService.delete(entity);
		entity = userInfor;
		accountService.delete(entity);
		viewAccount();
		return "view_accounts";
	}
	
	/**
	 * 添加信息
	 * @return
	 */
	public String addInformation(){
		getData();
		entity = userInfor;
		if(accountService.addAccount(entity)){
			try {
				response.sendRedirect("login.html");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			try {
				response.sendRedirect("page/register.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "success";
	}
	
	/**
	 * change password
	 */
	public String changePassword(){
		if(password.equals(session.getAttribute("password"))){
			if(accountService.update("t_account", "password", newpassword, "id", String.valueOf((int)session.getAttribute("id")))){
				session.removeAttribute("account");
				session.removeAttribute("password");
				session.removeAttribute("username");
				session.invalidate();
				try {
					response.sendRedirect("loginAdmin.html");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			return null;
		}else{
			return "failed";
		}
	}
	
	/**
	 * 获取数据
	 * @return
	 */
	private void getData(){
		account = new Account();
		account.setId(id);
		account.setPassword(password);
		account.setPermission(permission);
		account.setUsername(username);
		
		userInfor = new UserInformation();
		userInfor.setAccount(account);
		userInfor.setName(name);
		userInfor.setIntroduce(introduce);
		userInfor.setAddress(address);
		userInfor.setBirthday(birthday);
		userInfor.setHead(head);
		userInfor.setId(inforId);
		userInfor.setSex(sex);
		userInfor.setChineseLevel(chineseLevel);
		userInfor.setEmail(email);
		userInfor.setExpectLevel(expectLevel);
		userInfor.setHsk(hsk);
		userInfor.setInChina(inChina);
		userInfor.setNationality(nationality);
		userInfor.setUseingLanguage(useingLanguage);
	}
	
	
	
	public AccountService getAccountService() {
		return accountService;
	}
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public List<Account> getAccounts() {
		return accounts;
	}
	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	public Entitys getEntity() {
		return entity;
	}
	public void setEntity(Entitys entity) {
		this.entity = entity;
	}
	public List<Entitys> getEntitys() {
		return entitys;
	}
	public void setEntitys(List<Entitys> entitys) {
		this.entitys = entitys;
	}
	public UserInformation getUserInfor() {
		return userInfor;
	}
	public void setUserInfor(UserInformation userInfor) {
		this.userInfor = userInfor;
	}
	public List<UserInformation> getUserInfors() {
		return userInfors;
	}
	public void setUserInfors(List<UserInformation> userInfors) {
		this.userInfors = userInfors;
	}
	public java.lang.String getName() {
		return name;
	}
	public void setName(java.lang.String name) {
		this.name = name;
	}
	public java.lang.String getBirthday() {
		return birthday;
	}
	public void setBirthday(java.lang.String birthday) {
		this.birthday = birthday;
	}
	public java.lang.String getSex() {
		return sex;
	}
	public void setSex(java.lang.String sex) {
		this.sex = sex;
	}
	public java.lang.String getAddress() {
		return address;
	}
	public void setAddress(java.lang.String address) {
		this.address = address;
	}
	public java.lang.String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(java.lang.String introduce) {
		this.introduce = introduce;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getPermission() {
		return permission;
	}
	public void setPermission(Integer permission) {
		this.permission = permission;
	}
	public Integer getInforId() {
		return inforId;
	}
	public void setInforId(Integer inforId) {
		this.inforId = inforId;
	}
	public String getAdminadd() {
		return adminadd;
	}
	public void setAdminadd(String adminadd) {
		this.adminadd = adminadd;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getUseingLanguage() {
		return useingLanguage;
	}
	public void setUseingLanguage(String useingLanguage) {
		this.useingLanguage = useingLanguage;
	}
	public String getInChina() {
		return inChina;
	}
	public void setInChina(String inChina) {
		this.inChina = inChina;
	}
	public String getChineseLevel() {
		return chineseLevel;
	}
	public void setChineseLevel(String chineseLevel) {
		this.chineseLevel = chineseLevel;
	}
	public String getHsk() {
		return hsk;
	}
	public void setHsk(String hsk) {
		this.hsk = hsk;
	}
	public String getExpectLevel() {
		return expectLevel;
	}
	public void setExpectLevel(String expectLevel) {
		this.expectLevel = expectLevel;
	}
	
	
	
}
