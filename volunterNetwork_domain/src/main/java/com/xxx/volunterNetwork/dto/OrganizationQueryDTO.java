package com.xxx.volunterNetwork.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import com.xxx.volunterNetwork.domain.Organization;

/**
 * 
 * @author miao
 * @date 2018年1月20日下午4:07:01
 *
 */
public class OrganizationQueryDTO {
	private Long id;
	private String oNum;   //项目数
	private String organization;  //组织名
	private String menNum;  //人数
	private String img;//图片
	private String mNum;
	private String orNum;
	private String xjorNum;
	private String durationNum;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getoNum() {
		return oNum;
	}
	public void setoNum(String oNum) {
		this.oNum = oNum;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	
	public String getMenNum() {
		return menNum;
	}
	public void setMenNum(String menNum) {
		this.menNum = menNum;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getmNum() {
		return mNum;
	}
	public void setmNum(String mNum) {
		this.mNum = mNum;
	}
	public String getOrNum() {
		return orNum;
	}
	public void setOrNum(String orNum) {
		this.orNum = orNum;
	}
	public String getXjorNum() {
		return xjorNum;
	}
	public void setXjorNum(String xjorNum) {
		this.xjorNum = xjorNum;
	}
	public String getDurationNum() {
		return durationNum;
	}
	public void setDurationNum(String durationNum) {
		this.durationNum = durationNum;
	}
	//提供static的工具方法： 根据当前OrganizationQueryDTO对象来组装动态查询条件
	public static Specification<Organization> getSpecification(OrganizationQueryDTO organizationQueryDTO){
		Specification<Organization> spec = new Specification<Organization>() {
			public Predicate toPredicate(Root<Organization> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				//1.Predicate查询条件集合
				List<Predicate> list = new ArrayList<Predicate>();				
				//2.根据QueryDTO数据字段的值进行判断以及条件的组装				
				//3.Predicate查询条件集合的size创建对应的Predicate查询条件数组
				Predicate[] p = new Predicate[list.size()];
				//4.CirteriaBuilder的and函数组装  查询条件数组
				return cb.and(list.toArray(p));				
			}
		};		
		return spec;
	}
}
