package com.xxx.volunterNetwork.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xxx.volunterNetwork.domain.Acti;
import com.xxx.volunterNetwork.domain.Borad;
import com.xxx.volunterNetwork.domain.Enroll;
import com.xxx.volunterNetwork.domain.Img;
import com.xxx.volunterNetwork.domain.Organization;
import com.xxx.volunterNetwork.domain.User;
import com.xxx.volunterNetwork.dto.ActiQueryDTO;
import com.xxx.volunterNetwork.service.IActiService;
import com.xxx.volunterNetwork.service.IBoradService;
import com.xxx.volunterNetwork.service.IEnrollService;
import com.xxx.volunterNetwork.service.IImgService;
import com.xxx.volunterNetwork.service.IOrganizationService;
import com.xxx.volunterNetwork.service.IUserService;
import com.xxx.volunterNetwork.util.ExtAjaxResponse;
import com.xxx.volunterNetwork.util.ExtPageable;

@Controller
public class IndexController {
	@Autowired
	private IImgService imgService;
	@Autowired
	private IUserService userService;
	@Autowired
	private IActiService actiService;
	@Autowired
	private IEnrollService enrollService;
	@Autowired
	private IBoradService boradService;
	@Autowired
	private IOrganizationService organizationService;
	@RequestMapping("/baoming/saveOrUpdate")
	public @ResponseBody ExtAjaxResponse saveOrUpdate(@RequestParam Long id,Enroll enroll,HttpSession session) {		
		Acti acti = actiService.findOne(id);
		enroll.setImg(acti.getImg());
		enroll.setHdName(acti.getTitle());
		enroll.setHdType(acti.getHdlx());
		enroll.setHdTime(acti.getBeginTime());
		enroll.setState(0);
		enroll.setOrganization(acti.getFbzz());
		try {		
			enrollService.saveOrUpdate(enroll);
			return new ExtAjaxResponse(true, "添加数据成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "添加数据失败");
		}	
	}
	@RequestMapping("/volunterNetwork")
	public String index(HttpSession session) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis = actiService.findActi();
		List<Acti> actis2 = actiService.findActi2();
		List<Acti> actis3 = actiService.findActi3();
		List<Acti> actis4 = actiService.findActi4();
		List<Acti> actis5 = actiService.findActi5();
		List<Acti> actis6 = actiService.findActi6();
		List<Acti> actis7 = actiService.findActi7();
		List<Acti> actis8 = actiService.findActi8();
		List<Acti> actis9 = actiService.findActi9();
		List<Borad> borads = boradService.findInfo();
		List<Borad> borads2 = boradService.findCulture();
		List<Borad> borads3 = boradService.findMessage();
		List<Enroll> enrolls = enrollService.findEnroll();
		
		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists", actis);
		session.setAttribute("actiLists2", actis2);
		session.setAttribute("actiLists3", actis3);
		session.setAttribute("actiLists4", actis4);
		session.setAttribute("actiLists5", actis5);
		session.setAttribute("actiLists6", actis6);
		session.setAttribute("actiLists7", actis7);
		session.setAttribute("actiLists8", actis8);
		session.setAttribute("actiLists9", actis9);
		session.setAttribute("boradLists", borads);
		session.setAttribute("boradLists2", borads2);
		session.setAttribute("boradLists3", borads3);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/index";
	}
	@RequestMapping("/organization")
	public String organization(HttpSession session) {
		List<Organization> organizationLists = organizationService.findAll();
		session.setAttribute("organizationLists", organizationLists);
		return "WEB-INF/pages/front/organization";
	}
	@RequestMapping("/xjorganization")
	public String xjorganization(@RequestParam Long id,HttpSession session) {
		Organization organization = organizationService.findOne(id);
		session.setAttribute("organization", organization);
		return "/WEB-INF/pages/front/xjorganization";
	}	
	@RequestMapping("/people")
	public String people(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis = actiService.findActi();
		List<Enroll> enrolls = enrollService.findEnroll();
		
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("userLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数
		
		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists", actis);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/people";
	}
	@RequestMapping("/oldman")
	public String oldman(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis2 = actiService.findActi2();	
		List<Enroll> enrolls = enrollService.findEnroll();
		
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("userLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数

		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists2", actis2);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/oldman";
	}
	@RequestMapping("/helpPoor")
	public String helpPoor(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis3 = actiService.findActi3();
		List<Enroll> enrolls = enrollService.findEnroll();
		
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("userLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数

		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists3", actis3);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/helpPoor";
	}
	@RequestMapping("/civilization")
	public String civilization(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis4 = actiService.findActi4();
		List<Enroll> enrolls = enrollService.findEnroll();
		
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("userLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数

		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists4", actis4);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/civilization";
	}
	@RequestMapping("/safety")
	public String safety(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis5 = actiService.findActi5();
		List<Enroll> enrolls = enrollService.findEnroll();
		
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("userLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数

		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists5", actis5);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/safety";
	}
	@RequestMapping("/tree")
	public String tree(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis6 = actiService.findActi6();
		List<Enroll> enrolls = enrollService.findEnroll();
		
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("userLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数

		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists6", actis6);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/tree";
	}
	@RequestMapping("/sport")
	public String sport(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis7 = actiService.findActi7();
		List<Enroll> enrolls = enrollService.findEnroll();
		
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("userLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数

		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists7", actis7);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/index";
	}
	@RequestMapping("/service")
	public String service(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable) {
		List<Img> imgs = imgService.findImg();
		List<Acti> actis8 = actiService.findActi8();
		List<Enroll> enrolls = enrollService.findEnroll();
		
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("userLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数

		session.setAttribute("imgLists", imgs);
		session.setAttribute("actiLists8", actis8);
		session.setAttribute("enrollLists", enrolls);
		return "/WEB-INF/pages/front/service";
	}

	@RequestMapping("/detail")
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
	}
	
	@RequestMapping("/voluntaryInfo")
	public String voluntaryInfo(@RequestParam Long id,HttpSession session) {
		Borad borad = boradService.findOne(id);
		List<Borad> borads = boradService.findInfo();
		session.setAttribute("boradLists", borads);
		session.setAttribute("borad", borad);
		return "/WEB-INF/pages/borad/voluntaryInfo";
	}
	@RequestMapping("/voluntaryCulture")
	public String voluntaryCulture(@RequestParam Long id,HttpSession session) {
		Borad borad1 = boradService.findOne(id);
		List<Borad> borads2 = boradService.findCulture();
		session.setAttribute("borad1", borad1);
		session.setAttribute("boradLists2", borads2);
		return "/WEB-INF/pages/borad/voluntaryCulture";
	}
	@RequestMapping("/messageBlog")
	public String messageBlog(@RequestParam Long id,HttpSession session) {
		Borad borad2 = boradService.findOne(id);
		List<Borad> borads3 = boradService.findMessage();
		session.setAttribute("borad2", borad2);
		session.setAttribute("boradLists3", borads3);
		return "/WEB-INF/pages/borad/messageBlog";
	}
	
}
