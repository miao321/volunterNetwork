package com.xxx.volunterNetwork.web;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xxx.volunterNetwork.domain.Acti;
import com.xxx.volunterNetwork.domain.Comment;
import com.xxx.volunterNetwork.domain.Enroll;
import com.xxx.volunterNetwork.domain.Img;
import com.xxx.volunterNetwork.domain.Share;
import com.xxx.volunterNetwork.domain.User;
import com.xxx.volunterNetwork.dto.CommentQueryDTO;
import com.xxx.volunterNetwork.dto.ShareQueryDTO;
import com.xxx.volunterNetwork.service.IActiService;
import com.xxx.volunterNetwork.service.ICommentService;
import com.xxx.volunterNetwork.service.IEnrollService;
import com.xxx.volunterNetwork.service.IImgService;
import com.xxx.volunterNetwork.service.IShareService;
import com.xxx.volunterNetwork.service.IUserService;
import com.xxx.volunterNetwork.service.impl.CommentServiceImpl;
import com.xxx.volunterNetwork.util.ExtAjaxResponse;
import com.xxx.volunterNetwork.util.ExtPageable;

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
	@Autowired 
	private ICommentService commentService;
	@Autowired
	private IUserService userService;
	
	@RequestMapping("/saveOrUpdate")
	public @ResponseBody ExtAjaxResponse saveOrUpdate(Share share,HttpSession session) {		
		String author = (String) session.getAttribute("userName");
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findOne(userId);
		share.setState(0);
		share.setAuthor(author);
		share.setImg(user.getImg());
		share.setFbtime(new Date(System.currentTimeMillis()));
		
		try {		
			shareService.saveOrUpdate(share);
			return new ExtAjaxResponse(true, "添加数据成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "添加数据失败");
		}	
	}
	@RequestMapping("/blog")
	public String index(HttpSession session,ShareQueryDTO shareQueryDTO,ExtPageable extPageable) {
		Page<Share> page = shareService.findAll(shareQueryDTO.getSpecification(shareQueryDTO), extPageable.getPageable());
		List<Share> shareLists = shareService.findShare();
		session.setAttribute("shareLists", shareLists);//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数
		/*List<Share> shareLists = shareService.findAll();
		session.setAttribute("shareLists", shareLists);*/
		return "/WEB-INF/pages/blog/blog";
	}
	@RequestMapping("/blogDetail")
	public String findOne(@RequestParam Long id,HttpSession session) {
		Share share = shareService.findOne(id);		
		session.setAttribute("share", share);
		session.setAttribute("shareId", share.getId());
		List<CommentQueryDTO> commentList = commentService.findComment(share.getId());
		/*for(CommentQueryDTO obj :commentList) {
			obj.getId()
		}*/
		session.setAttribute("commentList", commentList);
		return "/WEB-INF/pages/blog/blogDetail";
	}		
	
}
