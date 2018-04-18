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
import com.xxx.volunterNetwork.dao.CommentRepository;
import com.xxx.volunterNetwork.domain.Comment;
import com.xxx.volunterNetwork.dto.CommentQueryDTO;
import com.xxx.volunterNetwork.service.ICommentService;
import com.xxx.volunterNetwork.util.DateUtil;


/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:43:36
 *
 */
@Service
@Transactional
public class CommentServiceImpl implements ICommentService {
	private static final Logger logger = LoggerFactory.getLogger(CommentServiceImpl.class);
	@Autowired
	private CommentRepository commentRepository;
	@SysLog(module="模块管理",methods="保存或者更新数据")
	public void saveOrUpdate(Comment comment) {
		commentRepository.save(comment);
	}
	@SysLog(module="模块管理",methods="删除一条数据")
	public void delete(Comment comment) {
		commentRepository.delete(comment);
	}
	@SysLog(module="模块管理",methods="删除多条数据")
	public void delete(List<Long> ids) {
		List<Comment> commentLists = (List<Comment>) commentRepository.findAll(ids);
		if (commentLists != null) {
			commentRepository.delete(commentLists);
		}

	}
	@SysLog(module="模块管理",methods="查找一条数据")
	public Comment findOne(Long id) {
		return commentRepository.findOne(id);
	}
	@SysLog(module="模块管理",methods="查找所有数据")
	public List<Comment> findAll() {
		return (List<Comment>) commentRepository.findAll();
	}
	@SysLog(module="模块管理",methods="查找所有数据并分页排序")
	public Page<Comment> findAll(Specification<Comment> spec, Pageable pageable) {
		return commentRepository.findAll(spec, pageable);
	}
/*	@Override
	public Comment findComment(String commentName) {
		return commentRepository.findComment(commentName);
	}*/
	@Override
	public void updateState(Long id, Integer state) {
		commentRepository.updateState(id, state);
		
	}
	@Override
	public List<CommentQueryDTO> findComment(Long id) {
		List<CommentQueryDTO>  list = new ArrayList<CommentQueryDTO>();
		List<Object[]> comment = commentRepository.findComment(id);
		System.out.println("user++++:"+comment);
		for(Object[] obj : comment) {
			CommentQueryDTO dto = new CommentQueryDTO();
			dto.setId(Long.valueOf(obj[0]+""));
			
			dto.setUserName(obj[7]+"");
			dto.setContent(obj[6]+"");
			dto.setImg(obj[8]+"");
			dto.setRespTime(DateUtil.StringToHMS(obj[3]+""));	
			list.add(dto);
		}
		return list;
	}
	
	

}