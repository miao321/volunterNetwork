package com.xxx.volunterNetwork.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xxx.volunterNetwork.anno.SysLog;
import com.xxx.volunterNetwork.dao.CollegeRepository;
import com.xxx.volunterNetwork.domain.Organization;
import com.xxx.volunterNetwork.service.ICollegeService;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:42:03
 *
 */



@Service
@Transactional
public class CollegeServiceImpl implements ICollegeService {
	private static final Logger logger = LoggerFactory.getLogger(CollegeServiceImpl.class);
	@Autowired
	private CollegeRepository collegeRepository;
	@SysLog(module="部门管理",methods="保存数据或者更新数据")
	public void saveOrUpdate(Organization college) {
		collegeRepository.save(college);
	}
	@SysLog(module="部门管理",methods="删除数据")
	public void delete(Organization college) {
		collegeRepository.delete(college);
	}
	@SysLog(module="部门管理",methods="删除多条数据")
	public void delete(List<Long> ids) {
		List<Organization> collegeLists = (List<Organization>) collegeRepository.findAll(ids);
		if (collegeLists != null) {
			collegeRepository.delete(collegeLists);
		}			
	}
	@SysLog(module="部门管理",methods="查找一条数据")
	public Organization findOne(Long id) {
		return collegeRepository.findOne(id);
	}
	@SysLog(module="部门管理",methods="查找所有数据")
	public List<Organization> findAll() {
		return (List<Organization>) collegeRepository.findAll();
	}
	@SysLog(module="部门管理",methods="查找所有数据并分页排序")
	public Page<Organization> findAll(Specification<Organization> spec, Pageable pageable) {
		return collegeRepository.findAll(spec, pageable);
	}
	@Override
	public Organization findCollege(String collegeName) {
		return collegeRepository.findCollege(collegeName);
	}
	@Override
	public void updateState(Long id, Integer state) {
		collegeRepository.updateState(id, state);
		
	}

}
