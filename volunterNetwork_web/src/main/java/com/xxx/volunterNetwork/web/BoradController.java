package com.xxx.volunterNetwork.web;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xxx.volunterNetwork.anno.SysControllerLog;
import com.xxx.volunterNetwork.domain.Borad;
import com.xxx.volunterNetwork.domain.Module;
import com.xxx.volunterNetwork.dto.BoradQueryDTO;
import com.xxx.volunterNetwork.dto.ModuleQueryDTO;
import com.xxx.volunterNetwork.service.IBoradService;
import com.xxx.volunterNetwork.util.ExtAjaxResponse;
import com.xxx.volunterNetwork.util.ExtPageable;
@Controller
@RequestMapping("/borad")
public class BoradController {
	@Autowired
	private IBoradService boradService;
	
	@RequestMapping("/saveOrUpdate")
	public String saveOrUpdate(Borad borad) {		
		try {		
			boradService.saveOrUpdate(borad);
			//return new ExtAjaxResponse(true, "操作成功");
			return "/WEB-INF/pages/borad/addBorad";
		} catch (Exception e) {
			//return new ExtAjaxResponse(false, "操作失败");
			return "/WEB-INF/pages/borad/addBorad";
		}	
	}
	@RequestMapping("/update")
	public @ResponseBody ExtAjaxResponse update(Borad borad) {
		/*if (collegeService.findCollege(college.getCollegeName()) != null) {
			return new ExtAjaxResponse(false, "该部门已经存在 不用再添加");
		}*/
		Borad b = boradService.findOne(borad.getId());
		
		try {
			boradService.saveOrUpdate(b);
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}	
	}	
	@RequestMapping("/delete")
	public @ResponseBody ExtAjaxResponse delete(@RequestParam Long id) {
		try {
			Borad borad = boradService.findOne(id);
			if (borad != null) {
				boradService.delete(borad);
			}
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}		
	}
	@RequestMapping("/deleteBorads")
	public @ResponseBody ExtAjaxResponse delete(@RequestParam Long[] ids) {
		try {
			List<Long> idsLists = Arrays.asList(ids);
			if (idsLists != null) {
				boradService.delete(idsLists);
			}
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}
	}	
	@RequestMapping("/findOne")
	public @ResponseBody Borad findOne(@RequestParam Long id,HttpSession session) {
		Borad borad = boradService.findOne(id);
		session.setAttribute("borad", borad);
		return borad;
	}	
	@RequestMapping("/findAll")
	public @ResponseBody List<Borad> findAll(){
		List<Borad>  boradLists = boradService.findAll();
		return  boradLists;		
	}	
	@RequestMapping("/findPage")
	@SysControllerLog(module="模块管理",methods="查找所有数据并分页排序")
	public String findPage(HttpSession session,BoradQueryDTO boradQueryDTO,ExtPageable extPageable){
		Page<Borad> page = boradService.findAll(boradQueryDTO.getSpecification(boradQueryDTO), extPageable.getPageable());
		session.setAttribute("boradLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数
		return "/WEB-INF/pages/borad/seeBorad";	
	}

}
