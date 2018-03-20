package com.xxx.volunterNetwork.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import com.xxx.volunterNetwork.domain.User;
/**
 * 
 * @author miao
 * @date 2018年1月20日下午4:07:01
 *
 */
public class UserQueryDTO {	
	private Long id;
	private Long users_id;
	private Long roles_id;
	private String roleName;
	public void setId(Long id) {
		this.id = id;
	}
	public void setUsers_id(Long users_id) {
		this.users_id = users_id;
	}
	public void setRoles_id(Long roles_id) {
		this.roles_id = roles_id;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public Long getId() {
		return id;
	}
	public Long getUsers_id() {
		return users_id;
	}
	public Long getRoles_id() {
		return roles_id;
	}
	public String getRoleName() {
		return roleName;
	}
	//提供static的工具方法： 根据当前userQueryDTO对象来组装动态查询条件
	public static Specification<User> getSpecification(UserQueryDTO userQueryDTO){
		Specification<User> spec = new Specification<User>() {
			public Predicate toPredicate(Root<User> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
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