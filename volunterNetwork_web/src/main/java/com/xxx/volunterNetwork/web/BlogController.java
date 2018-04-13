package com.xxx.volunterNetwork.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xxx.volunterNetwork.domain.Acti;
import com.xxx.volunterNetwork.domain.Enroll;
import com.xxx.volunterNetwork.domain.Img;
import com.xxx.volunterNetwork.domain.Share;
import com.xxx.volunterNetwork.service.IActiService;
import com.xxx.volunterNetwork.service.IEnrollService;
import com.xxx.volunterNetwork.service.IImgService;
import com.xxx.volunterNetwork.service.IShareService;

@Controller
public class BlogController {
	@Autowired
	private IImgService imgService;
	@Autowired
	private IActiService actiService;
	@Autowired
	private IEnrollService enrollService;
	@Autowired
	private IShareService shareService;
	@RequestMapping("/blog")
	public String index(HttpSession session) {
		
		List<Share> shareLists = shareService.findAll();
		session.setAttribute("shareLists", shareLists);
		return "/WEB-INF/pages/blog/blog";
	}
	@RequestMapping("/blogDetail")
	public String findOne(@RequestParam Long id,HttpSession session) {
		Share share = shareService.findOne(id);
		session.setAttribute("share", share);
		return "/WEB-INF/pages/blog/blogDetail";
	}		
	
}
