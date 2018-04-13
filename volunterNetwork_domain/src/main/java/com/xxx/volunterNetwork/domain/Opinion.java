package com.xxx.volunterNetwork.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name="t_opinion")
public class Opinion {
	private Long id;
	private String content;//内容
	private String author;//作者
	private String title;//标题
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date fbtime;//发布时间
	private Integer state;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	public String getContent() {
		return content;
	}
	public String getAuthor() {
		return author;
	}
	
	public String getTitle() {
		return title;
	}
	@JsonFormat(pattern = "yyyy/MM/dd HH:mm:ss",timezone = "GMT+8")
	public Date getFbtime() {
		return fbtime;
	}
	public Integer getState() {
		return state;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setFbtime(Date fbtime) {
		this.fbtime = fbtime;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	

}
