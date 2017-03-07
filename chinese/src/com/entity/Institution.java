package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name="t_institution")
public class Institution extends Entitys{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String instituName;
	private String url;
	@Type(type ="text")
	private String instroduce;
	private String imageUrl;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	
}
