package com.xxx.volunterNetwork.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.xxx.volunterNetwork.domain.Organization;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:34:55
 *
 */

@Repository
public interface CollegeRepository extends PagingAndSortingRepository<Organization, Long>,JpaSpecificationExecutor<Organization> {
	/**
	 * 查询根节点
	 */
/*	@Query("from College o where o.parentName.id = null")
	public List<College> findParentNodes();
	*//**
	 * 根据父节点ID查询出子节点, 父节点为null的时候被data jpa过滤掉。所以无法传null
	 *//*
	@Query("from College o where o.parentName.id = ?1")
	public List<College> findChildNodes(Long parentId);//null
	*/
	@Query("from College college where college.collegeName =?1")
	public Organization findCollege(String collegeName);
	@Modifying
	@Query("update College college set college.state = ?2 where college.id = ?1")
	public void updateState(Long id,Integer state);
}
