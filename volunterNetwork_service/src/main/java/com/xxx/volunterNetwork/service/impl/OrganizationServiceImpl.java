package com.xxx.volunterNetwork.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.xxx.volunterNetwork.anno.SysLog;
import com.xxx.volunterNetwork.dao.OrganizationRepository;
import com.xxx.volunterNetwork.domain.Organization;
import com.xxx.volunterNetwork.service.IOrganizationService;


/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:43:36
 *
 */
@Service
@Transactional
public class OrganizationServiceImpl implements IOrganizationService {
	private static final Logger logger = LoggerFactory.getLogger(OrganizationServiceImpl.class);
	@Autowired
	private OrganizationRepository organizationRepository;
	@SysLog(module="模块管理",methods="保存或者更新数据")
	public void saveOrUpdate(Organization organization) {
		organizationRepository.save(organization);
	}
	@SysLog(module="模块管理",methods="删除一条数据")
	public void delete(Organization organization) {
		organizationRepository.delete(organization);
	}
	@SysLog(module="模块管理",methods="删除多条数据")
	public void delete(List<Long> ids) {
		List<Organization> organizationLists = (List<Organization>) organizationRepository.findAll(ids);
		if (organizationLists != null) {
			organizationRepository.delete(organizationLists);
		}

	}
	@SysLog(module="模块管理",methods="查找一条数据")
	public Organization findOne(Long id) {
		return organizationRepository.findOne(id);
	}
	@SysLog(module="模块管理",methods="查找所有数据")
	public List<Organization> findAll() {
		return (List<Organization>) organizationRepository.findAll();
	}
	@SysLog(module="模块管理",methods="查找所有数据并分页排序")
	public Page<Organization> findAll(Specification<Organization> spec, Pageable pageable) {
		return organizationRepository.findAll(spec, pageable);
	}
/*	@Override
	public Organization findOrganization(String organizationName) {
		return organizationRepository.findOrganization(organizationName);
	}*/
	@Override
	public void updateState(Long id, Integer state) {
		organizationRepository.updateState(id, state);
		
	}
	
	

}
