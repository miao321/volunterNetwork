package com.xxx.volunterNetwork.web;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xxx.volunterNetwork.domain.Permission;
import com.xxx.volunterNetwork.domain.Share;
import com.xxx.volunterNetwork.dto.PermissionQueryDTO;
import com.xxx.volunterNetwork.dto.ShareQueryDTO;
import com.xxx.volunterNetwork.service.IPermissionService;
import com.xxx.volunterNetwork.service.IShareService;
import com.xxx.volunterNetwork.util.ExtAjaxResponse;
import com.xxx.volunterNetwork.util.ExtJsonResult;
import com.xxx.volunterNetwork.util.ExtPageable;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午11:09:18
 *
 */

@Controller
@RequestMapping("/share")
public class ShareController {
	private static final Logger logger = LoggerFactory.getLogger(ShareController.class);
	@Autowired
	private IShareService shareService;
	@Autowired
	private IPermissionService permissionService;
	
	@RequestMapping("/saveOrUpdate")
//	@RequiresPermissions("share/saveOrUpdate")
//	@RequiresShares("管理员")
	public @ResponseBody ExtAjaxResponse saveOrUpdate(Share share) {
		
		/*if (shareService.findShare(share.getShareName()) != null) {
			return new ExtAjaxResponse(false, "该角色已经存在不用再添加");
		}*/
		try {
			shareService.saveOrUpdate(share);
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}	
	}
	
	
	@RequestMapping("/delete")
//	@RequiresPermissions("share/delete")
//	@RequiresShares("管理员")
	public @ResponseBody ExtAjaxResponse delete(@RequestParam Long id) {
		try {
			Share share = shareService.findOne(id);
			shareService.delete(share);
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}		
	}
	@RequestMapping("/deleteShares")
//	@RequiresPermissions("share/deleteShares")
//	@RequiresShares("管理员")
	public @ResponseBody ExtAjaxResponse delete(@RequestParam Long[] ids) {
		try {
			List<Long> idsLists = Arrays.asList(ids);
			if (idsLists != null) {
				shareService.delete(idsLists);
			}
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}
	}	
	@RequestMapping("/findOne")
	public @ResponseBody Share findOne(@RequestParam Long id) {
		Share share = shareService.findOne(id);
		return share;
	}	
	
	@RequestMapping("/findAll")
	public @ResponseBody ExtJsonResult<Share> findAll(HttpSession session){
		List<Share> shareLists = shareService.findAll();
		session.setAttribute("shareLists", shareLists);
		System.out.println("shareLists:"+shareLists);
		return new ExtJsonResult<Share>(shareLists);
	}
	@RequestMapping("/findPage")
	public String findPage(HttpSession session,ShareQueryDTO shareQueryDTO,ExtPageable extPageable){
		Page<Share> page = shareService.findAll(shareQueryDTO.getSpecification(shareQueryDTO), extPageable.getPageable());
		session.setAttribute("shareLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数
		return "/WEB-INF/pages/blog/share";
		
	}
	/*
	@RequestMapping("/findSharePermission")
	public @ResponseBody ExtJsonResult<SharePermissionQueryDTO> findSharePermission(){
		List<SharePermissionQueryDTO> findSharePermission = sharePermissionService.findSharePermission();
		return new ExtJsonResult<SharePermissionQueryDTO>(findSharePermission);
	}
	@RequestMapping("/findPermission")
	public @ResponseBody ExtJsonResult<SharePermissionQueryDTO> findPermission(){
		List<SharePermissionQueryDTO> findPermission = sharePermissionService.findPermission();
		return new ExtJsonResult<SharePermissionQueryDTO>(findPermission);
	}*/
	
	@RequestMapping("disableShare")
	public @ResponseBody Share disableShare(@RequestParam Long id) {
		Share share = shareService.findOne(id);
		if (share.getState() != null) {
			shareService.updateState(id, 0);
		}
		return share;
	}
	@RequestMapping("enableShare")
	public @ResponseBody Share enableShare(@RequestParam Long id) {
		Share share = shareService.findOne(id);
		if (share.getState() != null) {
			shareService.updateState(id, 1);
		}
		return share;
	}

}
