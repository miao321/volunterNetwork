package com.xxx.volunterNetwork.web;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import com.xxx.volunterNetwork.domain.College;
import com.xxx.volunterNetwork.dto.CollegeQueryDTO;
import com.xxx.volunterNetwork.service.ICollegeService;
import com.xxx.volunterNetwork.util.ExtAjaxResponse;
import com.xxx.volunterNetwork.util.ExtJsonResult;
import com.xxx.volunterNetwork.util.ExtPageable;
/**
 * 
 * @author miao
 * @date 2018年1月20日上午11:03:19
 *
 */

@Controller
@RequestMapping("/college")
public class CollegeController {
	private static final Logger logger = LoggerFactory.getLogger(CollegeController.class);
	@Autowired
	private ICollegeService collegeService;
	@RequestMapping("/saveOrUpdate")
	public @ResponseBody ExtAjaxResponse saveOrUpdate(College college) {
		/*if (collegeService.findCollege(college.getCollegeName()) != null) {
			return new ExtAjaxResponse(false, "该部门已经存在 不用再添加");
		}*/
		try {
			collegeService.saveOrUpdate(college);
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}	
	}
	@RequestMapping("/update")
	public @ResponseBody ExtAjaxResponse update(College college) {
		/*if (collegeService.findCollege(college.getCollegeName()) != null) {
			return new ExtAjaxResponse(false, "该部门已经存在 不用再添加");
		}*/
		College coll = collegeService.findOne(college.getId());
		coll.setCollegeName(college.getCollegeName());
		coll.setMajor(college.getMajor());
		coll.setState(college.getState());		
		try {
			collegeService.saveOrUpdate(coll);
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}	
	}	
	@RequestMapping("/delete")
	public String delete(@RequestParam Long id) {
		try {
			College college = collegeService.findOne(id);
			if (college != null) {
				collegeService.delete(college);
			}
			return "system/college";
		} catch (Exception e) {
			return "system/college";
		}		
	}
	@RequestMapping("/deleteColleges")
	public @ResponseBody ExtAjaxResponse delete(@RequestParam Long ids[]) {
		try {
			List<Long> idsLists = Arrays.asList(ids);
			if (idsLists != null) {
				collegeService.delete(idsLists);
			}
			return new ExtAjaxResponse(true, "操作成功");
		} catch (Exception e) {
			return new ExtAjaxResponse(false, "操作失败");
		}
	}	
	@RequestMapping("/findOne")
	public @ResponseBody College findOne(@RequestParam Long id,HttpSession session) {		
		College college = collegeService.findOne(id);
		session.setAttribute("college", college);
		System.out.println("college:"+college);
		return college;
	}	
	@RequestMapping("/findAll")
	public @ResponseBody College findAll(HttpSession session){
		List<College> collegeLists = collegeService.findAll();
		session.setAttribute("collegeLists", collegeLists);
		return (College) collegeLists;
	}
	@RequestMapping("/findPage")
	@SysControllerLog(module="部门管理",methods="查找多条数据并分页排序")
	public String findPage(HttpSession session,CollegeQueryDTO collegeQueryDTO,ExtPageable extPageable){
		Page<College> page = collegeService.findAll(collegeQueryDTO.getSpecification(collegeQueryDTO), extPageable.getPageable());	
		session.setAttribute("collegeLists", page.getContent());//内容
		session.setAttribute("pageNumber", page.getNumber());//当前页
		session.setAttribute("pageSize", page.getSize());//当前页条数
		session.setAttribute("pageTotalPages", page.getTotalPages());//共几页
		session.setAttribute("pageTotalElements", page.getTotalElements());//总条数
		return "system/college";
	}

	@RequestMapping("disableCollege")
	public @ResponseBody College disableCollege(@RequestParam Long id) {
		College college = collegeService.findOne(id);
		if (college.getState() != null) {
			collegeService.updateState(id, 0);
		}
		return college;
	}
	@RequestMapping("enableCollege")
	public @ResponseBody College enableCollege(@RequestParam Long id) {
		College college = collegeService.findOne(id);
		if (college.getState() != null) {
			collegeService.updateState(id, 1);
		}
		return college;
	}

}
