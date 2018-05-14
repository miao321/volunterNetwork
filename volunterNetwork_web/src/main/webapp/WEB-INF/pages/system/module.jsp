<%@ page import="com.xxx.volunterNetwork.domain.*" %>
<%@ page import="com.xxx.volunterNetwork.dao.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
<script type="text/javascript">
//点击全选
function checkAll(who, obj){
	var curCheckBox = document.getElementsByName(who);
	for(i = 0; i < curCheckBox.length; i++){
		curCheckBox.item(i).checked = obj.checked;
	}
}
//判断是否选择了数据
function isOnlyChecked(){
	 var checkBoxArray = document.getElementsByName('id');
		var count=0;
		for(var index=0; index<checkBoxArray.length; index++) {
			if (checkBoxArray[index].checked) {
				count++;
			}	
		} 
	if(count==1)
		return true;
	else
		return false;
}
//查看单条数据
function toView(){
   	  var checkbox = document.getElementsByName("id");   
      var id ="";  
      for ( var i = 0; i < checkbox.length; i++) {  
          if(checkbox[i].checked){  
              id = id + checkbox[i].value;  
          }  
      }  
	 if(isOnlyChecked()){		 
		 $.ajax({			 
			 type : "POST",
			 url : "findOne",
			 data : {id:id},
			 cache : false,
			 async : true,
			 success : function(result) {
				if (result.state != 0) {
					$('#seeModule').modal('show');
					$("#parentName1").val(result.parentName);
					$("#moduleName1").val(result.moduleName);
					$("#layerNum1").val(result.layerNum);
					$("#isLeaf1").val(result.isLeaf);
					$("#icon1").val(result.icon);
					$("#cpermission1").val(result.cpermission);
					$("#curl1").val(result.curl);
					$("#ctype1").val(result.ctype);
					$("#belong1").val(result.belong);
					$("#remark1").val(result.remark);
					$("#orderNo1").val(result.orderNo);
					$("#createBy1").val(result.createBy);
					$("#createCollege1").val(result.createCollege);
					$("#createTime1").val(result.createTime);
					$("#updateBy1").val(result.updateBy);
					$("#updateTime1").val(result.updateTime);
					
					
					if(result.state == 1){
						$("#state1").val("启用");
					}else{
						$("#state1").val("停用");
					}	
				}else{
					alert("该数据是禁用状态无法查看!");
				}
					
			 }}); 
		 
	 }else{
		 alert("请先选择一项并且只能选择一项，再进行操作！");
	 }
}  	
//删除单条数据
function deleteModule(id){
	var flag = confirm("确定删除吗?");
	if (flag) {
		$.ajax({			 
			 type : "POST",
			 url : "delete",
			 data : {id:id},
			 cache : false,
			 async : true,
			 success : function(result) {	
				 $("#tr_"+id).remove();
			 }
		}); 
	}
		 	
}
//删除多条数据
function deleteModules(){
	 var checkbox = document.getElementsByName("id"); 
     var strIds =[]; 
     var flag = confirm("确定删除吗?");
     for ( var i = 0; i < checkbox.length; i++) {  
         if(checkbox[i].checked){  
        	 strIds.push(checkbox[i].value); 
         }  
     }  
     if (flag) {
    	 $.ajax({			 
    		 type : "POST",	
             dataType : "json",
    		 url : "deleteModules",
    		 data : {ids:strIds.toString()},
    		 cache : false,
    		 async : true,
    		 success : function(result) {	
    			 for(var i= 0;i<strIds.length;i++){  
    				 $("#tr_"+strIds[i]).remove();
    		     } 
    			
    		 }
    	}); 	
	}
	 
}
//修改数据
function editModule(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editModule').modal('show');
				$("#id").val(result.id);				
				$("#parentName").val(result.parentName);
				$("#moduleName").val(result.moduleName);
				$("#layerNum").val(result.layerNum);
				$("#isLeaf").val(result.isLeaf);
				$("#icon").val(result.icon);
				$("#cpermission").val(result.cpermission);
				$("#curl").val(result.curl);
				$("#ctype").val(result.ctype);
				$("#belong").val(result.belong);
				$("#remark").val(result.remark);
				$("#orderNo").val(result.orderNo);
				$("#createBy").val(result.createBy);
				$("#createCollege").val(result.createCollege);
				$("#createTime").val(result.createTime);
				$("#updateBy").val(result.updateBy);
				$("#updateTime").val(result.updateTime);					
				if(result.state == 1){
					$("#state").val("启用");
				}else{
					$("#state").val("停用");
				}
			}else{
				alert("该数据是禁用状态无法编辑!");
			}
			
		 }
	}); 	
}
function saveModule() {
	var id = document.getElementById("id").value;
	var parentName = document.getElementById("parentName").value;
	var moduleName = document.getElementById("moduleName").value;
	var layerNum = document.getElementById("layerNum").value;
	var isLeaf = document.getElementById("isLeaf").value;	
	var icon = document.getElementById("icon").value;
	var cpermission = document.getElementById("cpermission").value;
	var curl = document.getElementById("curl").value;
	var ctype = document.getElementById("ctype").value;
	var belong = document.getElementById("belong").value;
	var remark = document.getElementById("remark").value;
	var orderNo = document.getElementById("orderNo").value;
	var createBy = document.getElementById("createBy").value;
	var createCollege = document.getElementById("createCollege").value;
	var createTime = document.getElementById("createTime").value;
	var updateBy = document.getElementById("updateBy").value;
	var updateTime = document.getElementById("updateTime").value;
	var state = document.getElementById("state").value;
	var parentName1 = /^[\u4e00-\u9fa5]+$/;
    var moduleName1 = /^[\u4e00-\u9fa5]+$/;
    var state1 = /^[1|0]$/ ;
    if (parentName == '') {
		alert("父模块名不能为空");
		return false;
	}
    if (!parentName1.test(parentName)) {
		alert("父模块名只能为中文");
		return false;
	}
    if (moduleName == '') {
		alert("模块名不能为空");
		return false;
	}
    if (!moduleName1.test(moduleName)) {
		alert("模块名只能为中文");
		return false;
	}
    if (!state1.test(state)) {
		alert("状态不能为空");
		return false;
	}
	if(state == "启用"){
		state = 1;
	}else{
		state = 0;
	}
	 $.ajax({			 
		 type : "POST",
		 url : "update",    
         dataType : "json",
         data:{id:id,parentName:parentName,moduleName:moduleName,layerNum:layerNum,isLeaf:isLeaf,icon:icon,
        	 cpermission:cpermission,curl:curl,ctype:ctype,belong:belong,remark:remark,orderNo:orderNo,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
//添加数据
function addModule(){
	var parentName = document.getElementById("parentName2").value;
	var moduleName = document.getElementById("moduleName2").value;
	var layerNum = document.getElementById("layerNum2").value;
	var isLeaf = document.getElementById("isLeaf2").value;	
	var icon = document.getElementById("icon2").value;
	var cpermission = document.getElementById("cpermission2").value;
	var curl = document.getElementById("curl2").value;
	var ctype = document.getElementById("ctype2").value;
	var belong = document.getElementById("belong2").value;
	var remark = document.getElementById("remark2").value;
	var orderNo = document.getElementById("orderNo2").value;
	var createBy = document.getElementById("createBy2").value;
	var createCollege = document.getElementById("createCollege2").value;
	var createTime = document.getElementById("createTime2").value;
	var updateBy = document.getElementById("updateBy2").value;
	var updateTime = document.getElementById("updateTime2").value;
    var state = $('#state2 input[name="radio"]:checked ').val(); 
    var parentName1 = /^[\u4e00-\u9fa5]+$/;
    var moduleName1 = /^[\u4e00-\u9fa5]+$/;
    var state1 = /^[1|0]$/ ;
    if (parentName == '') {
		alert("父模块名不能为空");
		return false;
	}
    if (!parentName1.test(parentName)) {
		alert("父模块名只能为中文");
		return false;
	}
    if (moduleName == '') {
		alert("模块名不能为空");
		return false;
	}
    if (!moduleName1.test(moduleName)) {
		alert("模块名只能为中文");
		return false;
	}
    if (!state1.test(state)) {
		alert("状态不能为空");
		return false;
	}
	 $.ajax({			 
		 type : "POST",
		 url : "saveOrUpdate",           
         dataType : "json",
         data:{parentName:parentName,moduleName:moduleName,layerNum:layerNum,isLeaf:isLeaf,icon:icon,
        	 cpermission:cpermission,curl:curl,ctype:ctype,belong:belong,remark:remark,orderNo:orderNo,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {				
			location.reload();
		 }
	}); 
}
//禁用数据
function disableModule(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableModule",           
         dataType : "json",
         data:{id:id},
		 cache : false,
		 async : true,
		 success : function(data) {				
			 //$("#sta").val(0);
			 if (data.state != 0) {
				 location.reload();
			}else{
				alert("该数据已经被禁用无需重复操作!");
			}
			 
		 }
	}); 
}
//启用数据
function enableModule(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableModule",           
         dataType : "json",
         data:{id:id},
		 cache : false,
		 async : true,
		 success : function(data) {				
			 //$("#state3").val("启用");
			 if (data.state != 1) {
				 location.reload();
			}else{
				alert("该数据已经被启用无需重复操作!");
			}
		 }
	}); 
}
function search(){
	var query = document.getElementById("searchActi").value;	
	window.location.href="findPage?query="+query;
}
</script>
</head>
<body>
<form>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<button class="btn btn-info" data-toggle="modal" data-target="#addModule" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
				</button>				
				<button  type="button" class="btn btn-info" onclick="toView()" style="margin: 6px 0;">					
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-edit" aria-hidden="true"></span> 查看					
				</button>
				<button class="btn btn-info" onclick="deleteModules()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-trash" aria-hidden="true"></span> 批量删除
				</button>
				<div class="form-search" style="float:right;margin-right: 70px;margin-bottom: 10px;">
					<input class="input-medium search-query" id="searchActi" type="text" placeholder="请输入关键字" style="height: 34px;margin-top: 10px;"/>
					<button type="button" class="btn btn-info" onclick="search()">查找</button>
				</div>
				<table class="table" id="table">
					<thead>
						<tr>
							<th><input type="checkbox" name="selid"
								onclick="checkAll('id',this)"></th>
							<!-- <th data-checkbox="true"></th> -->
							<th>编号</th>
							<th>父模块</th>
							<th>模块名称</th>							
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${moduleLists}" var="module" varStatus="status">
							<tr id="tr_${module.id }">
								<td><input type="checkbox" id="id" name="id" value="${module.id}" /></td>
								<td>${status.index+1}</td>
								<td>${module.parentName}</td>
								<td>${module.moduleName}</td>								
								<c:if test="${module.state ==1}">
								<td id="sta">启用</td>
								</c:if>
								<c:if test="${module.state ==0}">
								<td id="sta">停用</td>
								</c:if>
								<td>
									<a onclick="editModule(${module.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a>
									<a onclick="deleteModule(${module.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="禁用" onclick="disableModule(${module.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="启用" onclick="enableModule(${module.id})"></span>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav aria-label="Page navigation"
					style="margin:0 auto;margin-top:-16px;">
				<ul class="pager pagination-lg">
					<c:if test="${pageNumber>0 }">
						<li><a
							href="<c:url value="/module/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>		
					<c:if test="${pageNumber-3 >= 1 }">
						<li><a
								href="<c:url value="/module/findPage?page=${pageNumber-3}"/>">${pageNumber-3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-2 >= 1 }">
						<li><a
								href="<c:url value="/module/findPage?page=${pageNumber-2}"/>">${pageNumber-2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-1 >= 1 }">
						<li><a
								href="<c:url value="/module/findPage?page=${pageNumber-1}"/>">${pageNumber-1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber >= 1 }">
						<li><a
								href="<c:url value="/module/findPage?page=${pageNumber}"/>">${pageNumber}</a>
							</li>
					</c:if>					
					<c:if test="${pageNumber+1 <= pageTotalPages}">
					<c:set var="active" value="${active}" />
						<li class="${active}"><a
								href="<c:url value="/module/findPage?page=${pageNumber+1}"/>">${pageNumber+1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+2 <= pageTotalPages && !(pageNumber-3 >= 1)}">
						<li><a
								href="<c:url value="/module/findPage?page=${pageNumber+2}"/>">${pageNumber+2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+3 <= pageTotalPages && !(pageNumber-2 >= 1)}">
						<li><a
								href="<c:url value="/module/findPage?page=${pageNumber+3}"/>">${pageNumber+3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+4 <= pageTotalPages && !(pageNumber-1 >= 1)}">
						<li><a
								href="<c:url value="/module/findPage?page=${pageNumber+4}"/>">${pageNumber+4}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+5 <= pageTotalPages && !(pageNumber >= 1)}">
						<li><a
								href="<c:url value="/module/findPage?page=${pageNumber+5}"/>">${pageNumber+5}</a>
							</li>
					</c:if>
					
					<c:if test="${pageNumber+1 < pageTotalPages }">
					<li><a
						href="<c:url value="/module/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
					</li>
					</c:if>
				</ul>
				<ul class="pager pagination-lg">
					<li>共${pageTotalElements}条记录 共${pageTotalPages}页
						当前第${pageNumber+1}页</li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
</form>	
<!-- addModule -->
<div class="modal fade" id="addModule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加模块信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<c:set var="nowDate" value="<%=System.currentTimeMillis()%>"></c:set>
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">父模块名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="parentName2" name="parentName2" class="form-control" placeholder="请输入父模块名字">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">模块名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="moduleName2" name="moduleName2" class="form-control" placeholder="请输入模块名字">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">层数:</label>
					    <div class="col-sm-10">
					      <input type="text" id="layerNum2" name="layerNum2" class="form-control" placeholder="请输入层数">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">叶子节点:</label>
					    <div class="col-sm-10">
					      <input type="text" id="isLeaf2" name="isLeaf2" class="form-control" placeholder="请输入叶子节点">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">图片:</label>
					    <div class="col-sm-10">
					      <input type="text" id="icon2" name="icon2" class="form-control" placeholder="请输入图片">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">权限:</label>
					    <div class="col-sm-10">
					      <input type="text" id="cpermission2" name="cpermission2" class="form-control" placeholder="请输入权限">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">链接地址:</label>
					    <div class="col-sm-10">
					      <input type="text" id="curl2" name="curl2" class="form-control" placeholder="请输入链接地址">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">类型:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="ctype2" name="ctype2" class="form-control" placeholder="请输入类型">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">从属:</label>
					    <div class="col-sm-10">
					      <input type="text" id="belong2" name="belong2" class="form-control" placeholder="请输入从属">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="remark2" name="remark2" class="form-control" placeholder="请输入备注">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">序号:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="orderNo2" name="orderNo2" class="form-control" placeholder="请输入序号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createBy2" name="createBy2" class="form-control" placeholder="请输入创建者">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建者学院:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createCollege2" name="createCollege2" class="form-control" placeholder="请输入创建者学院">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建时间:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control Wdate" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy/MM/dd HH:mm:ss',minDate:${nowDate}})" id="createTime2" name="createTime2" placeholder="请输入创建时间" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">修改者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="updateBy2" name="updateBy2" class="form-control" placeholder="请输入修改者">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">修改时间:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control Wdate" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy/MM/dd HH:mm:ss',minDate:${nowDate}})" id="updateTime2" name="updateTime2" placeholder="请输入修改时间" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-4 control-label" id="state2" >模块状态:&nbsp;&nbsp;
					    	<input type="radio" name="radio" value="1" style="padding-left: 4px;"/> 启用					    	
						 	<input type="radio" name="radio" value="0"/> 停用
					    </label>
					  </div>
				</form>				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="addModule()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addModule').modal('hide')});
</script>
<!-- eidtModule -->
<div class="modal fade" id="editModule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					编辑模块信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">父模块名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="parentName" name="parentName" class="form-control" placeholder="请输入父模块名字">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">模块名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="moduleName" name="moduleName" class="form-control" placeholder="请输入模块名字">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">层数:</label>
					    <div class="col-sm-10">
					      <input type="text" id="layerNum" name="layerNum" class="form-control" placeholder="请输入层数">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">叶子节点:</label>
					    <div class="col-sm-10">
					      <input type="text" id="isLeaf" name="isLeaf" class="form-control" placeholder="请输入叶子节点">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">图片:</label>
					    <div class="col-sm-10">
					      <input type="text" id="icon" name="icon" class="form-control" placeholder="请输入图片">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">权限:</label>
					    <div class="col-sm-10">
					      <input type="text" id="cpermission" name="cpermission" class="form-control" placeholder="请输入权限">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">链接地址:</label>
					    <div class="col-sm-10">
					      <input type="text" id="curl" name="curl" class="form-control" placeholder="请输入链接地址">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">类型:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="ctype" name="ctype" class="form-control" placeholder="请输入类型">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">从属:</label>
					    <div class="col-sm-10">
					      <input type="text" id="belong" name="belong" class="form-control" placeholder="请输入从属">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="remark" name="remark" class="form-control" placeholder="请输入备注">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">序号:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="orderNo" name="orderNo" class="form-control" placeholder="请输入序号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createBy" name="createBy" class="form-control" placeholder="请输入创建者">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建者学院:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createCollege" name="createCollege" class="form-control" placeholder="请输入创建者学院">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建时间:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="createTime" name="createTime" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">修改者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="updateBy" name="updateBy" class="form-control" placeholder="请输入修改者">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">修改时间:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="updateTime" name="updateTime" style="height:34px;">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">模块状态:</label>
					    <div class="col-sm-10">
					    	<input type="text" id="state" class="form-control" readonly="true"/>
					    </div>
					    
					  </div>				
				</form>		
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveModule()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seeModule -->
<div class="modal fade" id="seeModule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					模块信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">父模块名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="parentName1" name="parentName1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">模块名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="moduleName1" name="moduleName1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">层数:</label>
					    <div class="col-sm-10">
					      <input type="text" id="layerNum1" name="layerNum1" class="form-control">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">叶子节点:</label>
					    <div class="col-sm-10">
					      <input type="text" id="isLeaf1" name="isLeaf1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">图片:</label>
					    <div class="col-sm-10">
					      <input type="text" id="icon1" name="icon1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">权限:</label>
					    <div class="col-sm-10">
					      <input type="text" id="cpermission1" name="cpermission1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">链接地址:</label>
					    <div class="col-sm-10">
					      <input type="text" id="curl1" name="curl1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">类型:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="ctype1" name="ctype1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">从属:</label>
					    <div class="col-sm-10">
					      <input type="text" id="belong1" name="belong1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="remark1" name="remark1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">序号:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="orderNo1" name="orderNo1" class="form-control">
					    </div>
					  </div>
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createBy1" name="createBy1" class="form-control" placeholder="请输入创建者">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建者学院:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createCollege1" name="createCollege1" class="form-control" placeholder="请输入创建者学院">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建时间:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="createTime1" name="createTime1" placeholder="请输入创建时间" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">修改者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="updateBy1" name="updateBy1" class="form-control" placeholder="请输入修改者">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">修改时间:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="updateTime1" name="updateTime1" placeholder="请输入修改时间" style="height:34px;">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">模块状态:</label>
					    <div class="col-sm-10">
					    	<input type="text" id="state1" class="form-control"/>
					    </div>
					    
					  </div>			
				</form>	
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>