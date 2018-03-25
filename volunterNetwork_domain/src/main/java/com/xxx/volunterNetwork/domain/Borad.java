package com.xxx.volunterNetwork.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="t_borad")
public class Borad {
	private Long id;
	private String title;    //公告标题
	private String content;  //公告内容
	private String fbman;    //发布人
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date fbtime;     //发布时间
	private Integer state;   //显示状态
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getFbman() {
		return fbman;
	}
	public Date getFbtime() {
		return fbtime;
	}
	public Integer getState() {
		return state;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setFbman(String fbman) {
		this.fbman = fbman;
	}
	public void setFbtime(Date fbtime) {
		this.fbtime = fbtime;
	}
	public void setState(Integer state) {
		this.state = state;
	}

}
