package com.xxx.volunterNetwork.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;



/**
 * 
 * @author miao
 * @date 2017年12月2日下午7:46:03
 *
 */
@Entity
@Table(name="t_user")
public class User implements Serializable {
	private Long id;
	private String collegeId;   //学院id
	private String studentNo;   //学号
	private String userName;    //姓名
	private String password;
	private String img;//头像
	private Integer state;       //状态  1启用  0停用
	private String createBy; //创建者id
	private String createCollege;  //创建者学院
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date createTime;  //创建时间
	private String updateBy;   //修改者id
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date updateTime;   //修改时间
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date inTake;      //入学时间
	@DateTimeFormat(pattern="yyyy/MM/dd HH:mm:ss")
	private Date birthday;    //出生年月
	private String sex;       //性别
	private String phone;     //手机号
	private String email;     //邮箱
	private String remark;    //备注
	private String ancestor;  //籍贯
	private String politicalStatus;   //政治面貌	
	//private College college;     //用户跟学院是一对多关系
	//private UserInfo userInfo;  //用户跟用户信心扩展是一对一关系
	private Set<Role> roles = new HashSet<Role>();       //用户跟角色是多对多关系
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}
	
	
	/*@OneToOne(cascade=CascadeType.ALL)
	public UserInfo getUserInfo() {
		return userInfo;
	}*/
	
	/*@ManyToMany(cascade={CascadeType.MERGE,CascadeType.PERSIST},  
			   mappedBy = "users", targetEntity = Role.class) 
	@JsonIgnore*/
	@ManyToMany(cascade=CascadeType.ALL,mappedBy="users",fetch=FetchType.EAGER)
	public Set<Role> getRoles() {
		return roles;
	}
	public String getCollegeId() {
		return collegeId;
	}
	public String getStudentNo() {
		return studentNo;
	}
	public String getPassword() {
		return password;
	}
	public Integer getState() {
		return state;
	}
	public String getCreateBy() {
		return createBy;
	}
	public String getCreateCollege() {
		return createCollege;
	}
	@JsonFormat(pattern = "yyyy/MM/dd HH:mm:ss",timezone = "GMT+8")
	public Date getCreateTime() {
		return createTime;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	@JsonFormat(pattern = "yyyy/MM/dd HH:mm:ss",timezone = "GMT+8")
	public Date getUpdateTime() {
		return updateTime;
	}
	@JsonFormat(pattern = "yyyy/MM/dd HH:mm:ss",timezone = "GMT+8")
	public Date getInTake() {
		return inTake;
	}
	@JsonFormat(pattern = "yyyy/MM/dd HH:mm:ss",timezone = "GMT+8")
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
	public void setId(Long id) {
		this.id = id;
	}
	public void setCollegeId(String collegeId) {
		this.collegeId = collegeId;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public void setCreateCollege(String createCollege) {
		this.createCollege = createCollege;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/*public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}*/
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	public String getUserName() {
		return userName;
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
/*	@Override
	public String toString() {
		return "User [id=" + id + ", collegeId=" + collegeId + ", studentNo=" + studentNo + ", userName=" + userName
				+ ", password=" + password + ", state=" + state + ", createBy=" + createBy + ", createCollege="
				+ createCollege + ", createTime=" + createTime + ", updateBy=" + updateBy + ", updateTime=" + updateTime
				+ ", inTake=" + inTake + ", birthday=" + birthday + ", sex=" + sex + ", phone=" + phone + ", email="
				+ email + ", remark=" + remark + ", ancestor=" + ancestor + ", politicalStatus=" + politicalStatus
				+ ", roles=" + roles + ", college=" + college + "]";
	}*/
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
	

}
