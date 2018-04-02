/*package system;


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
import com.xxx.volunterNetwork.domain.Role;
import com.xxx.volunterNetwork.domain.User;
import com.xxx.volunterNetwork.service.IRoleService;
import com.xxx.volunterNetwork.service.IUserService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"classpath*:applicationContext-core.xml",
		"classpath*:applicationContext-jpa.xml"
		
})
public class UserServiceTest {
	@Autowired
	private IUserService userService;
	@Autowired
	private IRoleService roleService;
	
	@Test
	@Rollback(value = false)
	public void save() {
		
		User user = new User();
		user.setStudentNo("201441402302");
		user.setPassword("123");
		user.setUserName("aaa");
		
		Role role = new Role();
		role.setRoleName("管理员");
		role.setOrderNo(1);
		 
		College college = new College();
		college.setCollegeName("计院");
		
		user.getRoles().add(role);
		user.getCollege().add(college);
		college.setUser(user);
		role.getUsers().add(user);
		
		userService.saveOrUpdate(user);
	
		
	}

}
*/