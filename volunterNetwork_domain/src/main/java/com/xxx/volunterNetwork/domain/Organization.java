package com.xxx.volunterNetwork.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_organization")
public class Organization {
	private Long id;
	private String organization;//组织
	private String xjorganization;//下级组织
	private String img;//组织标识图片
	private Integer state;//状态
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}

	public String getOrganization() {
		return organization;
	}

	public String getXjorganization() {
		return xjorganization;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public void setXjorganization(String xjorganization) {
		this.xjorganization = xjorganization;
	}

	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}

}
