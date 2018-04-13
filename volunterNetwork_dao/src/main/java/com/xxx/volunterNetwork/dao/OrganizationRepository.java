package com.xxx.volunterNetwork.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.xxx.volunterNetwork.domain.Organization;
import com.xxx.volunterNetwork.domain.Img;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:35:19
 *
 */

@Repository
public interface OrganizationRepository extends PagingAndSortingRepository<Organization, Long>,JpaSpecificationExecutor<Organization> {
	@Modifying
	@Query("update Organization organization set organization.state = ?2 where organization.id = ?1")
	public void updateState(Long id,Integer state);
}
