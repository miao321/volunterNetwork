/*package system;


import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
*//**
 * 
 * @author miao
 * @date 2018年1月21日上午8:55:40
 *
 *//*

import com.xxx.volunterNetwork.domain.College;
import com.xxx.volunterNetwork.domain.Permission;
import com.xxx.volunterNetwork.domain.Role;
import com.xxx.volunterNetwork.domain.User;
import com.xxx.volunterNetwork.service.ICollegeService;
import com.xxx.volunterNetwork.service.IRoleService;
import com.xxx.volunterNetwork.service.IUserService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"classpath*:applicationContext-core.xml",
		"classpath*:applicationContext-jpa.xml"
		
})
public class RoleServiceTest {
	@Autowired
	private IRoleService roleService;	
	@Test
	@Rollback(value = false)
	public void save() {
		for(int i=1;i<=100;i++) {
			Role role = new Role();
			role.setRemark("备注"+i);
			role.setRoleName("管理员"+i);
			role.setCreateTime(new Date());
			roleService.saveOrUpdate(role);
		}
		Permission permission = new Permission();
		permission.setState(1);
		permission.setUrl("332");
		
		Role role = new Role();
		role.setRoleName("管理员");
		role.setOrderNo(1);
		 
		role.getPermission().add(permission);
		permission.getRole().add(role);
		
	
		
		roleService.saveOrUpdate(role);
	
		
	}

}
}
*/