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
import com.xxx.volunterNetwork.dao.PersonalRepository;
import com.xxx.volunterNetwork.domain.Opinion;

import com.xxx.volunterNetwork.service.IPersonalService;
import com.xxx.volunterNetwork.util.DateUtil;


/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:43:36
 *
 */
@Service
@Transactional
public class PersonalServiceImpl implements IPersonalService {
	private static final Logger logger = LoggerFactory.getLogger(PersonalServiceImpl.class);
	@Autowired
	private PersonalRepository personalRepository;
	@Override
	public List<Opinion> findOpinion(String userName) {		
		return personalRepository.findOpinion(userName);
	}
	
	
	

}
