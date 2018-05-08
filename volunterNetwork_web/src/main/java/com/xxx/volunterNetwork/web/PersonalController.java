package com.xxx.volunterNetwork.web;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xxx.volunterNetwork.anno.SysControllerLog;
import com.xxx.volunterNetwork.domain.Acti;
import com.xxx.volunterNetwork.domain.Borad;
import com.xxx.volunterNetwork.domain.Enroll;
import com.xxx.volunterNetwork.domain.Opinion;
import com.xxx.volunterNetwork.domain.User;
import com.xxx.volunterNetwork.dto.ActiQueryDTO;
import com.xxx.volunterNetwork.dto.EnrollQueryDTO;
import com.xxx.volunterNetwork.service.IActiService;
import com.xxx.volunterNetwork.service.IBoradService;
import com.xxx.volunterNetwork.service.IEnrollService;
import com.xxx.volunterNetwork.service.ILoginService;
import com.xxx.volunterNetwork.service.IPersonalService;
import com.xxx.volunterNetwork.service.IUserService;
import com.xxx.volunterNetwork.util.ExtAjaxResponse;
import com.xxx.volunterNetwork.util.ExtPageable;

@Controller
public class PersonalController {
	@Autowired
	private IPersonalService personalService;
	@Autowired
	private IActiService actiService;
	@Autowired
	private IEnrollService enrollService;
	@Autowired
	private IBoradService boradService;
	@Autowired
	private IUserService userService;
	@Autowired
	private ILoginService loginService;
	@RequestMapping("/personal")
	public String index(HttpSession session) {
		String userName = (String) session.getAttribute("userName");
		Long id = (Long) session.getAttribute("userId");
		List<Opinion> opinions = personalService.findOpinion(userName);
		List<Enroll> enrolls = personalService.findEnroll(userName);
		List<Borad> borads = boradService.findCulture();
		List<Enroll> enrollLists = personalService.findRecord(userName);
		Integer duration = personalService.findDuration(userName);
		Integer pxTime = personalService.findpxTime(userName);
		Integer enrollCount = personalService.findCount(userName);
		User user = userService.findOne(id);
		session.setAttribute("opinions", opinions);
		session.setAttribute("enrolls", enrolls);
		session.setAttribute("borads", borads);
		session.setAttribute("enrollLists", enrollLists);
		session.setAttribute("duration", duration);
		session.setAttribute("pxTime", pxTime);
		session.setAttribute("enrollCount", enrollCount);
		session.setAttribute("user", user);
		return "/WEB-INF/pages/front/personal";
	}
	//修改密码
	@RequestMapping("/changePassword")
	@SysControllerLog(module="用户管理",methods="修改密码")
	public @ResponseBody ExtAjaxResponse changePassword(@RequestParam String password3,@RequestParam String password1,@RequestParam String password2,HttpSession session) throws NoSuchAlgorithmException {		
		System.out.println(password3);
		System.out.println("pass:"+session.getAttribute("password"));
		String confirPassword = (String) session.getAttribute("password");
		Long id = (Long) session.getAttribute("userId");
		if (!password3.equals(confirPassword)) {
			return new ExtAjaxResponse(false, "旧密码错误，请重新输入");
		}else if (!password1.equals(password2)) {
			return new ExtAjaxResponse(false, "两次密码不一致，请重新输入");
		}else if(password1 ==null ||password1 =="") {
			return new ExtAjaxResponse(false, "密码不能为空，请重新输入");
		}
		try {
			loginService.changePassword(id,password3, password1);			
			return new ExtAjaxResponse(true, "密码修改成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "密码修改失败");			
		}
	}
	
	@RequestMapping("/record")
	public String record(HttpSession session,EnrollQueryDTO enrollQueryDTO,ExtPageable extPageable) {
		String userName = (String) session.getAttribute("userName");
		Long id = (Long) session.getAttribute("userId");	
		enrollQueryDTO.setUserName(userName);
		Page<Enroll> page = enrollService.findAll(enrollQueryDTO.getSpecification2(enrollQueryDTO),extPageable.getPageable2());
		session.setAttribute("enrollLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数	
		return "/record";
	}
	
}
