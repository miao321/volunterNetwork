package com.xxx.volunterNetwork.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import com.xxx.volunterNetwork.domain.Organization;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:33:12
 *
 */

public interface ICollegeService {
	public void saveOrUpdate(Organization college);
	public void delete(Organization college);
	public void delete(List<Long> ids);
	public Organization findOne(Long id);
	public List<Organization> findAll();
	
	public Organization findCollege(String collegeName);
	public void updateState(Long id,Integer state);
	//动态条件查询
	public Page<Organization> findAll(Specification<Organization> spec,Pageable pageable);


}
