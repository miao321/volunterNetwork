package com.xxx.volunterNetwork.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 
 * @author miao
 * @date 2017年12月3日下午2:58:31
 *
 */
@Entity
@Table(name="t_userInfo")
public class UserInfo implements Serializable {
	private Long id;
	private String userName;  //用户姓名
	private Date inTake;      //入学时间
	private Date birthday;    //出生年月
	private String sex;       //性别
	private String phone;     //手机号
	private String email;     //邮箱
	private String remark;    //备注
	private String ancestor;  //籍贯
	private String politicalStatus;   //政治面貌	
	//private User manager;  //用户跟上级管理者   多对一
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	public String getUserName() {
		return userName;
	}
	
	public Date getInTake() {
		return inTake;
	}
	public Date getBirthday() {
		return birthday;
	}
	public String getSex() {
		return sex;
	}
	public String getPhone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	public String getRemark() {
		return remark;
	}
	public String getAncestor() {
		return ancestor;
	}
	public String getPoliticalStatus() {
		return politicalStatus;
	}
	/*public User getManager() {
		return manager;
	}*/
	
	public void setId(Long id) {
		this.id = id;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setInTake(Date inTake) {
		this.inTake = inTake;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public void setAncestor(String ancestor) {
		this.ancestor = ancestor;
	}
	public void setPoliticalStatus(String politicalStatus) {
		this.politicalStatus = politicalStatus;
	}
	/*public void setManager(User manager) {
		this.manager = manager;
	}*/
}
