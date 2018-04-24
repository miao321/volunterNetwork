package com.xxx.volunterNetwork.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import com.xxx.volunterNetwork.domain.Organization;
import com.xxx.volunterNetwork.dto.OrganizationQueryDTO;

/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:32:12
 *
 */

public interface IOrganizationService {
	public void saveOrUpdate(Organization organization);
	public void delete(Organization organization);
	public void delete(List<Long> ids);
	public Organization findOne(Long id);
	public List<Organization> findAll();
	public void updateState(Long id,Integer state);
	
	public List<OrganizationQueryDTO> findOrganization1();
	public List<OrganizationQueryDTO> findOrganization2();
	public List<OrganizationQueryDTO> findOrganization3();
	public List<OrganizationQueryDTO> findOrganization4();
	public List<OrganizationQueryDTO> findOrganization5();
	public List<OrganizationQueryDTO> findOrganization6();
	public List<OrganizationQueryDTO> findOrganization7();
	public List<OrganizationQueryDTO> findOrganization8();
	public List<OrganizationQueryDTO> findOrganization9();
	public List<OrganizationQueryDTO> findOrganization10();
	public List<OrganizationQueryDTO> findOrganization11();
	public List<OrganizationQueryDTO> findOrganization12();
	public List<OrganizationQueryDTO> findOrganization13();
	public List<OrganizationQueryDTO> findOrganization14();
	public List<OrganizationQueryDTO> findOrganization15();
	//动态条件查询
	public Page<Organization> findAll(Specification<Organization> spec,Pageable pageable);


}
