package com.xxx.volunterNetwork.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.xxx.volunterNetwork.domain.Organization;
import com.xxx.volunterNetwork.domain.Acti;
import com.xxx.volunterNetwork.domain.Img;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:35:19
 *
 */


@Repository
public interface OrganizationRepository extends PagingAndSortingRepository<Organization, Long>,JpaSpecificationExecutor<Organization> {
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"计算机与网络安全学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization1();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"校志愿中心\"",nativeQuery=true)
	public List<Object[]> findOrganization2();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"电子工程与智能化学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization3();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"机械工程学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization4();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"生态环境与建筑工程学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization5();	
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"经济与管理学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization6();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"文学与传媒学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization7();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"法律与社会工作学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization8();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"教育学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization9();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"化学工程与能源技术学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization10();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"中法联合学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization11();
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"马克思主义学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization12();	
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"继续教育学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization13();	
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"粤台产业技术学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization14();	
	@Query(value="select count(a.fbzz),c.menNum from t_acti a,t_college c where a.fbzz = c.organization and c.organization=\"国际学院志愿服务站\"",nativeQuery=true)
	public List<Object[]> findOrganization15();	
	
	@Modifying
	@Query("update Organization organization set organization.state = ?2 where organization.id = ?1")
	public void updateState(Long id,Integer state);
}
