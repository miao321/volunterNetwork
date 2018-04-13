/*package front;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xxx.volunterNetwork.domain.Acti;
import com.xxx.volunterNetwork.domain.Borad;
import com.xxx.volunterNetwork.domain.Share;
import com.xxx.volunterNetwork.service.IActiService;
import com.xxx.volunterNetwork.service.IBoradService;
import com.xxx.volunterNetwork.service.IShareService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"classpath*:applicationContext-core.xml",
		"classpath*:applicationContext-jpa.xml"
		
})
public class BlogServiceTest {
	@Autowired
	private IShareService shareService;
	@Test
	@Rollback(value = false)
	public void save() {
		for(int i=1;i<=100;i++) {
			Share share = new Share();
			share.setAuthor("张三"+i);
			share.setContent("sanzhang"+i);
			share.setEndResp("31212"+i);
			share.setFbtime(new Date());
			share.setResp("3123");
			shareService.saveOrUpdate(share);
		}	
	}

}
*/