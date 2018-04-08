/*package front;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xxx.volunterNetwork.domain.Enroll;
import com.xxx.volunterNetwork.service.IEnrollService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"classpath*:applicationContext-core.xml",
		"classpath*:applicationContext-jpa.xml"
		
})
public class EnrollServiceTest {
	@Autowired
	private IEnrollService enrollService;
	@Test
	@Rollback(value = false)
	public void save() {
		for(int i=1;i<=100;i++) {
			Enroll enroll = new Enroll();
			enroll.setUserName("张三"+i);
			enroll.setDuration(1+i);
			enroll.setImg("/upload/4e8e0675-aee7-4fa1-88b2-f42332a06c2c.png");
			enrollService.saveOrUpdate(enroll);
		}	
	}

}
*/