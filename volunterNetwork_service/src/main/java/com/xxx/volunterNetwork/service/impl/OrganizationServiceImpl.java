package com.xxx.volunterNetwork.service.impl;

import java.util.ArrayList;
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
import com.xxx.volunterNetwork.dto.OrganizationQueryDTO;
import com.xxx.volunterNetwork.service.IOrganizationService;
import com.xxx.volunterNetwork.util.DateUtil;


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
	@Override
	public List<OrganizationQueryDTO> findOrganization1() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization1();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization2() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization2();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization3() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization3();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization4() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization4();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization5() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization5();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization6() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization6();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization7() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization7();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization8() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization8();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization9() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization9();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization10() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization10();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization11() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization11();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization12() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization12();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization13() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization13();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization14() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization14();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
	@Override
	public List<OrganizationQueryDTO> findOrganization15() {
		List<OrganizationQueryDTO>  list = new ArrayList<OrganizationQueryDTO>();
		List<Object[]> organization = organizationRepository.findOrganization15();
		System.out.println("organization++++:"+organization);
		for(Object[] obj : organization) {
			OrganizationQueryDTO dto = new OrganizationQueryDTO();
			dto.setFbzz(obj[0]+"");
			dto.setMenNum(obj[1]+"");
			list.add(dto);
		}
		return list;		
	}
}
