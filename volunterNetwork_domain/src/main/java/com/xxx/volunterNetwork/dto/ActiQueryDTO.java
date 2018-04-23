package com.xxx.volunterNetwork.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.StringUtils;

import com.xxx.volunterNetwork.domain.Acti;

/**
 * 
 * @author miao
 * @date 2018年1月20日下午4:07:01
 *
 */
public class ActiQueryDTO {	
	private String hdlx;
	public String getHdlx() {
		return hdlx;
	}
	public void setHdlx(String hdlx) {
		this.hdlx = hdlx;
	}
	//提供static的工具方法： 根据当前actiQueryDTO对象来组装动态查询条件
	public static Specification<Acti> getSpecification(ActiQueryDTO actiQueryDTO){
		Specification<Acti> spec = new Specification<Acti>() {
			public Predicate toPredicate(Root<Acti> root, CriteriaQuery<?> query, CriteriaBuilder cb) {							
				//1.Predicate查询条件集合
				List<Predicate> list = new ArrayList<Predicate>();				
				//2.根据QueryDTO数据字段的值进行判断以及条件的组装	
				if(actiQueryDTO != null && !StringUtils.isEmpty(actiQueryDTO.getHdlx())) {
					Predicate p1 = cb.like(root.get("hdlx").as(String.class), "%"+actiQueryDTO.getHdlx()+"");
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
