/*package front;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xxx.volunterNetwork.domain.Acti;

import com.xxx.volunterNetwork.service.IActiService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"classpath*:applicationContext-core.xml",
		"classpath*:applicationContext-jpa.xml"
		
})
public class ActDetailServiceTest {
	@Autowired
	private IActiService activityService;
	@Test
	@Rollback(value = false)
	public void save() {
		for(int i=1;i<=100;i++) {
			Acti activity = new Acti();
			activity.setTitle("312");
			activity.setContent("333");
			activity.setFbtime(new Date());
			activity.setFbzz("000");
			activityService.saveOrUpdate(activity);
		}	
	}

}
*/