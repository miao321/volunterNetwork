package com.xxx.volunterNetwork.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.xxx.volunterNetwork.domain.Comment;
import com.xxx.volunterNetwork.domain.Opinion;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:35:19
 *
 */

@Repository
public interface PersonalRepository extends PagingAndSortingRepository<Comment, Long>,JpaSpecificationExecutor<Comment> {	
	@Modifying
	@Query("update Comment comment set comment.state = ?2 where comment.id = ?1")
	public void updateState(Long id,Integer state);
	@Query("from Opinion opinion where opinion.author =?1")
	public List<Opinion> findOpinion(String userName);
}
