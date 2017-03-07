package com.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name="t_userInformation")

public class UserInformation extends Entitys {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private java.lang.String name;
	private java.lang.String birthday;
	private java.lang.String sex;
	private java.lang.String address;
	private String email;
	private String nationality;
	private String useingLanguage;
	private String inChina;
	private String chineseLevel;
	private String hsk;
	private String expectLevel;
	@Type(type="text")
	private java.lang.String introduce;
	private String head;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="accountId")
	public Account account;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
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
