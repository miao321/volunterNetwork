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

import com.xxx.volunterNetwork.anno.SysControllerLog;
import com.xxx.volunterNetwork.domain.Acti;
import com.xxx.volunterNetwork.dto.ActiQueryDTO;
import com.xxx.volunterNetwork.service.IActiService;
import com.xxx.volunterNetwork.util.ExtAjaxResponse;
import com.xxx.volunterNetwork.util.ExtPageable;



@Controller
@RequestMapping("/acti")
public class ActiController {
	private static final Logger logger = LoggerFactory.getLogger(ActiController.class);
	@Autowired
	private IActiService actiService;
	String sPath = System.getProperty("evan.webapp");
	@RequestMapping("/saveOrUpdate")
	public @ResponseBody ExtAjaxResponse saveOrUpdate(Acti acti) {
		
		/*if (actiService.findActi(acti.getActiName()) != null) {
			return new ExtAjaxResponse(false, "该模块已经存在不用再添加");
		}*/
		try {
			actiService.saveOrUpdate(acti);
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}	
	}
	@RequestMapping("/update")
	public @ResponseBody ExtAjaxResponse update(Acti acti) {
		/*if (collegeService.findCollege(college.getCollegeName()) != null) {
			return new ExtAjaxResponse(false, "该部门已经存在 不用再添加");
		}*/
		Acti m = actiService.findOne(acti.getId());
		
		try {
			actiService.saveOrUpdate(m);
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}	
	}	
	@RequestMapping("/delete")
	public @ResponseBody ExtAjaxResponse delete(@RequestParam Long id) {
		try {
			Acti acti = actiService.findOne(id);
			if (acti != null) {
				actiService.delete(acti);
			}
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}		
	}
	@RequestMapping("/deleteActis")
	public @ResponseBody ExtAjaxResponse delete(@RequestParam Long[] ids) {
		try {
			List<Long> idsLists = Arrays.asList(ids);
			if (idsLists != null) {
				actiService.delete(idsLists);
			}
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}
	}	
	@RequestMapping("/findOne")
	public @ResponseBody Acti findOne(@RequestParam Long id,HttpSession session) {
		Acti acti = actiService.findOne(id);
		session.setAttribute("acti", acti);
		return acti;
	}	
	@RequestMapping("/findAll")
	public @ResponseBody List<Acti> findAll(){
		List<Acti> actiLists = actiService.findAll();
		return actiLists;		
	}	
	@RequestMapping("/findPage")
	@SysControllerLog(module="模块管理",methods="查找所有数据并分页排序")
	public String findPage(HttpSession session,ActiQueryDTO actiQueryDTO,ExtPageable extPageable){
		Page<Acti> page = actiService.findAll(actiQueryDTO.getSpecification(actiQueryDTO), extPageable.getPageable());
		session.setAttribute("actiLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数
		return "/WEB-INF/pages/system/activityDetail";	
	}


}
