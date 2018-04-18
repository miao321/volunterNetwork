package com.xxx.volunterNetwork.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxx.volunterNetwork.domain.Opinion;
import com.xxx.volunterNetwork.service.IActiService;
import com.xxx.volunterNetwork.service.IEnrollService;
import com.xxx.volunterNetwork.service.IPersonalService;

@Controller
public class PersonalController {
	@Autowired
	private IPersonalService personalService;
	@Autowired
	private IActiService actiService;
	@Autowired
	private IEnrollService enrollService;
	@RequestMapping("/personal")
	public String index(HttpSession session) {
		String userName = (String) session.getAttribute("userName");
		List<Opinion> opinions = personalService.findOpinion(userName);
		session.setAttribute("opinions", opinions);
		return "/WEB-INF/pages/front/personal";
	}
	/*@RequestMapping("/detail")
	public String findOne(@RequestParam Long id,HttpSession session) {
		Acti acti = actiService.findOne(id);
		session.setAttribute("acti", acti);
		return "/WEB-INF/pages/front/detail";
	}		
	@RequestMapping("/pageDetail")
	public String pageDetail(HttpSession session) {
		List<Acti> actis = actiService.findActi();
		System.out.println("actis:++"+actis);
		session.setAttribute("actiLists", actis);
		return "/WEB-INF/pages/front/volunterPage";
	}	*/
}
