package com.xxx.volunterNetwork.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.StringUtils;

import com.xxx.volunterNetwork.domain.Borad;

/**
 * 
 * @author miao
 * @date 2018年1月20日下午4:07:01
 *
 */
public class BoradQueryDTO {	
	private String fblx;
	public String getFblx() {
		return fblx;
	}
	public void setFblx(String fblx) {
		this.fblx = fblx;
	}

	//提供static的工具方法： 根据当前boradQueryDTO对象来组装动态查询条件
	public static Specification<Borad> getSpecification(BoradQueryDTO boradQueryDTO){
		Specification<Borad> spec = new Specification<Borad>() {
			public Predicate toPredicate(Root<Borad> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				//1.Predicate查询条件集合
				List<Predicate> list = new ArrayList<Predicate>();				
				//2.根据QueryDTO数据字段的值进行判断以及条件的组装
				if(boradQueryDTO != null && !StringUtils.isEmpty(boradQueryDTO.getFblx())) {
					Predicate p1 = cb.like(root.get("hdlx").as(String.class), "%"+boradQueryDTO.getFblx()+"");
					list.add(p1);
				}
				//3.Predicate查询条件集合的size创建对应的Predicate查询条件数组
				Predicate[] p = new Predicate[list.size()];
				//4.CirteriaBuilder的and函数组装  查询条件数组
				return cb.and(list.toArray(p));				
			}
		};		
		return spec;
	}
}
