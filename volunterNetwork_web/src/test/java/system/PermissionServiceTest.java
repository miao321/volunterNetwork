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

import com.xxx.volunterNetwork.domain.Permission;
import com.xxx.volunterNetwork.service.IPermissionService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"classpath*:applicationContext-core.xml",
		"classpath*:applicationContext-jpa.xml"
		
})
public class PermissionServiceTest {
	@Autowired
	private IPermissionService permissionService;	
	@Test
	@Rollback(value = false)
	public void save() {
		for(int i=1;i<=100;i++) {
			Permission permission = new Permission();
			permission.setDescription("描述"+i);
			permission.setToken("token"+i);
			permission.setUrl("user/delete"+i);
			permissionService.saveOrUpdate(permission);
			
		}
		

	
		
	}

}
