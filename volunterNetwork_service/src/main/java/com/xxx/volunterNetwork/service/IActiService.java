package com.xxx.volunterNetwork.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import com.xxx.volunterNetwork.domain.Acti;

/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:32:12
 *
 */

public interface IActiService {
	public void saveOrUpdate(Acti acti);
	public void delete(Acti acti);
	public void delete(List<Long> ids);
	public Acti findOne(Long id);
	public List<Acti> findAll();
	
	/*public Acti findActi(String actiName);*/
	//动态条件查询
	public Page<Acti> findAll(Specification<Acti> spec,Pageable pageable);


}
