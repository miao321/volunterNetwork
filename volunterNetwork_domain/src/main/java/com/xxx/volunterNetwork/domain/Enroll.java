package com.xxx.volunterNetwork.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_enroll")
public class Enroll {
	private Long id;
	private String userName;//用户名
	private String studentNo;//学号
	private String college;//学院
	private String major;//专业
	private String sex;//性别
	private String phone; //手机号
	private String idCard;//身份证号
	private String organization;//组织
	private String xjorganization;//下级组织
	private Integer duration;//时长
	private String img;//头像
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	public String getUserName() {
		return userName;
	}
	public String getStudentNo() {
		return studentNo;
	}
	public String getCollege() {
		return college;
	}
	public String getMajor() {
		return major;
	}
	public String getSex() {
		return sex;
	}
	public String getIdCard() {
		return idCard;
	}
	public String getOrganization() {
		return organization;
	}
	public String getXjorganization() {
		return xjorganization;
	}
	public Integer getDuration() {
		return duration;
	}
	public String getImg() {
		return img;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public void setDuration(Integer duration) {
		this.duration = duration;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public void setXjorganization(String xjorganization) {
		this.xjorganization = xjorganization;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	

}
