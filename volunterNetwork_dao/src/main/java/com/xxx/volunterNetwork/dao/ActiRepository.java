package com.xxx.volunterNetwork.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.xxx.volunterNetwork.domain.Acti;
import com.xxx.volunterNetwork.domain.Img;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:35:19
 *
 */

@Repository
public interface ActiRepository extends PagingAndSortingRepository<Acti, Long>,JpaSpecificationExecutor<Acti> {
	@Query(value="select * from t_acti where state = 1 and hdlx=\"青少年服务\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi();
	@Query(value="select * from t_acti where state = 1 and hdlx=\"敬老助残\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi2();
	@Query(value="select * from t_acti where state = 1 and hdlx=\"扶贫帮困\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi3();
	@Query(value="select * from t_acti where state = 1 and hdlx=\"文明礼仪\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi4();
	@Query(value="select * from t_acti where state = 1 and hdlx=\"平安守护\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi5();
	@Query(value="select * from t_acti where state = 1 and hdlx=\"环境保护\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi6();
	@Query(value="select * from t_acti where state = 1 and hdlx=\"文化体育\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi7();
	@Query(value="select * from t_acti where state = 1 and hdlx=\"便民服务\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi8();
	@Query(value="select * from t_acti where state = 1 and hdlx=\"其他\" ORDER BY id desc limit 15",nativeQuery=true)
	public List<Acti> findActi9();
	
	@Modifying
	@Query("update Acti acti set acti.state = ?2 where acti.id = ?1")
	public void updateState(Long id,Integer state);
}
