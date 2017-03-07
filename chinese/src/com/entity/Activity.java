package com.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name="t_activity")
public class Activity extends Entitys{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String title;
	private String time;
	@Type(type="text")
	private String content;
	@OneToMany(mappedBy="activity",fetch=FetchType.EAGER,cascade={CascadeType.ALL})
	private List<ActivityImage> activityImages = new ArrayList<ActivityImage>();

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

	public List<ActivityImage> getActivityImages() {
		return activityImages;
	}

	public void setActivityImages(List<ActivityImage> activityImages) {
		this.activityImages = activityImages;
	}
	
	
}
