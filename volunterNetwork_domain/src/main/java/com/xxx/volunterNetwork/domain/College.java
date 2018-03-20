package com.xxx.volunterNetwork.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
/**
 * 
 * @author miao
 * @date 2017年12月2日下午7:48:28
 *
 */
@Entity
@Table(name="t_college")
public class College implements Serializable {
	private Long id;
	private String collegeName;  //学院名字
	private String major;        //专业名字
	private Integer state;       //1启用  0停用
	private User user;//用户跟学院是一对多关系	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	@ManyToOne(cascade=CascadeType.ALL)
	@JsonIgnore
	public User getUser() {
		return user;
	}
	
	public String getCollegeName() {
		return collegeName;
	}

	public String getMajor() {
		return major;
	}
	public Integer getState() {
		return state;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "College [id=" + id + ", collegeName=" + collegeName + ", major=" + major + ", state=" + state
				+ ", user=" + user + "]";
	}
	
	
}