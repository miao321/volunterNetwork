package system;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
/**
 * 
 * @author miao
 * @date 2018年1月21日上午8:55:40
 *
 */

import com.xxx.volunterNetwork.domain.College;
import com.xxx.volunterNetwork.domain.Module;
import com.xxx.volunterNetwork.domain.Role;
import com.xxx.volunterNetwork.domain.User;
import com.xxx.volunterNetwork.service.ICollegeService;
import com.xxx.volunterNetwork.service.IModuleService;
import com.xxx.volunterNetwork.service.IRoleService;
import com.xxx.volunterNetwork.service.IUserService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"classpath*:applicationContext-core.xml",
		"classpath*:applicationContext-jpa.xml"
		
})
public class ModuleServiceTest {
	@Autowired
	private IModuleService moduleService;	
	@Test
	@Rollback(value = false)
	public void save() {
		for(int i=1;i<=100;i++) {
			Module module = new Module();
			module.setModuleName("用户管理"+i);
			module.setState(1);
			module.setBelong("系统管理"+i);
			moduleService.saveOrUpdate(module);
		}
		

	
		
	}

}
