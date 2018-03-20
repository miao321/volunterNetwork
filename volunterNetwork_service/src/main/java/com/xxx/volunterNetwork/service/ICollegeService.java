package com.xxx.volunterNetwork.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import com.xxx.volunterNetwork.domain.College;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:33:12
 *
 */

public interface ICollegeService {
	public void saveOrUpdate(College college);
	public void delete(College college);
	public void delete(List<Long> ids);
	public College findOne(Long id);
	public List<College> findAll();
	
	public College findCollege(String collegeName);
	public void updateState(Long id,Integer state);
	//动态条件查询
	public Page<College> findAll(Specification<College> spec,Pageable pageable);


}
