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
					$('#seeRole').modal('show');
					$("#roleName1").val(result.roleName);
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
function deleteRole(id){
	 $.ajax({			 
		 type : "POST",
		 url : "delete",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			 /* if (result.msg) {
				 alert(result.msg);
			}else{ */
				$("#tr_"+id).remove();
			/* } */
		 }
	}); 	
}
//删除多条数据
function deleteRoles(){
	 var checkbox = document.getElementsByName("id"); 
     var strIds =[];  
     for ( var i = 0; i < checkbox.length; i++) {  
         if(checkbox[i].checked){  
        	 strIds.push(checkbox[i].value); 
         }  
     }    
	 $.ajax({			 
		 type : "POST",	
         dataType : "json",
		 url : "deleteRoles",
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
//修改数据
function editRole(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editRole').modal('show');
				$("#id").val(result.id);			
				$("#roleName").val(result.roleName);
				$("#remark").val(result.remark);			
				$("#orderNo").val(result.orderNo);
				$("#createBy").val(result.createBy);
				$("#createCollege").val(result.createCollege);
				$("#createTime").val(result.createTime);
				$("#updateB").val(result.updateBy);
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
function saveRole() {
	var id = document.getElementById("id").value;
	var roleName = document.getElementById("roleName").value;
	var remark = document.getElementById("remark").value;
	var orderNo = document.getElementById("orderNo").value;
	var createBy = document.getElementById("createBy").value;
	var createCollege = document.getElementById("createCollege").value;
	var createTime = document.getElementById("createTime").value;
	var updateBy = document.getElementById("updateBy").value;
	var updateTime = document.getElementById("updateTime").value;
	var state = document.getElementById("state").value;
	var roleName1 = /^[\u4e00-\u9fa5]+$/;
    var state1 = /^[1|0]$/ ;
    if (roleName == '') {
		alert("角色名不能为空");
		return false;
	}
    if (!roleName1.test(roleName)) {
		alert("角色名只能为中文");
		return false;
	}
    if (createBy == '') {
		alert("创建者不能为空");
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
         data:{id:id,roleName:roleName,orderNo:orderNo,remark:remark,createBy:createBy,
        	 createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
//添加数据
function addRole(){
	var roleName = document.getElementById("roleName2").value;
	var orderNo = document.getElementById("orderNo2").value;
	var remark = document.getElementById("remark2").value;
	var createBy = document.getElementById("createBy2").value;
	var createCollege = document.getElementById("createCollege2").value;
	var createTime = document.getElementById("createTime2").value;
	var updateBy = document.getElementById("updateBy2").value;
	var updateTime = document.getElementById("updateTime2").value;
    var state = $('#state2 input[name="radio"]:checked ').val(); 
    var roleName1 = /^[\u4e00-\u9fa5]+$/;
    var state1 = /^[1|0]$/ ;
    if (roleName == '') {
		alert("角色名不能为空");
		return false;
	}
    if (!roleName1.test(roleName)) {
		alert("角色名只能为中文");
		return false;
	}
    if (createBy == '') {
		alert("创建者不能为空");
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
         data:{roleName:roleName,orderNo:orderNo,remark:remark,createBy:createBy,
        	 createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {				
			location.reload();
		 }
	}); 
}
//禁用数据
function disableRole(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableRole",           
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
function enableRole(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableRole",           
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
//添加权限
function addPermission(){
	$.ajax({			 
		 type : "POST",
		 url : "${pageContext.request.contextPath}/permission/findAll",           
        //dataType : "json",
      // data:{id:id},
		 cache : false,
		 async : true,
		 success : function(result) {				
			 $('#addPermission').modal('show');
			// alert(result);			
		 }
	}); 
}
function savePermission(){
	 var checkbox = document.getElementsByName("pId"); 
	 var checkbox2 = document.getElementsByName("id"); 
    var strIds =[];
    var roleIds =[];
    for ( var i = 0; i < checkbox.length; i++) {  
        if(checkbox[i].checked){  
       	 strIds.push(checkbox[i].value); 
        }  
    } 
    for ( var j = 0; j < checkbox2.length; j++) {  
        if(checkbox2[j].checked){  
        	roleIds.push(checkbox2[j].value); 
        }  
    }    
   
	 $.ajax({			 
		 type : "POST",	
        dataType : "json",
		 url : "savePermission",
		 data : {permissionId:strIds.toString(),roleId:roleIds.toString()},
		 cache : false,
		 async : true,
		 success : function(result) {	
			 location.reload(); 			
		 },
		 failure: function(result){
			 alert(result.msg);
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
				<button class="btn btn-info" data-toggle="modal" data-target="#addRole" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
				</button>				
				<button  type="button" class="btn btn-info" onclick="toView()" style="margin: 6px 0;">					
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-edit" aria-hidden="true"></span> 查看					
				</button>
				<button class="btn btn-info" onclick="deleteRoles()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-trash" aria-hidden="true"></span> 批量删除
				</button>
				<button class="btn btn-info" onclick="addPermission()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 权限
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
							<th>角色名称</th>
							<th>备注</th>
							<th>创建时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${roleLists}" var="r" varStatus="status">
							<tr id="tr_${r.id }">
								<td><input type="checkbox" id="id" name="id" value="${r.id}" /></td>
								<td>${status.index+1}</td>
								<td>${r.roleName}</td>
								<td>${r.remark}</td>
								<td><fmt:formatDate value="${r.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<%-- 	<c:if test="${c.state ==1}">
								<td id="sta">启用</td>
								</c:if>
								<c:if test="${c.state ==0}">
								<td id="sta">停用</td>
								</c:if> --%>
								<td>
									<a onclick="editRole(${r.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a>
									<a onclick="deleteRole(${r.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="禁用" onclick="disableRole(${r.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="启用" onclick="enableRole(${r.id})"></span>
								</td>
								<c:if test="${pageNumber+1 > pageTotalPages }">
									该页还没有内容
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav aria-label="Page navigation"
					style="margin:0 auto;margin-top:-16px;">
				<ul class="pager pagination-lg">
					<c:if test="${pageNumber>0 }">
						<li><a
							href="<c:url value="/role/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>		
					<c:if test="${pageNumber-3 >= 1 }">
						<li><a
								href="<c:url value="/role/findPage?page=${pageNumber-3}"/>">${pageNumber-3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-2 >= 1 }">
						<li><a
								href="<c:url value="/role/findPage?page=${pageNumber-2}"/>">${pageNumber-2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-1 >= 1 }">
						<li><a
								href="<c:url value="/role/findPage?page=${pageNumber-1}"/>">${pageNumber-1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber >= 1 }">
						<li><a
								href="<c:url value="/role/findPage?page=${pageNumber}"/>">${pageNumber}</a>
							</li>
					</c:if>					
					<c:if test="${pageNumber+1 <= pageTotalPages}">
					<c:set var="active" value="${active}" />
						<li class="${active}"><a
								href="<c:url value="/role/findPage?page=${pageNumber+1}"/>">${pageNumber+1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+2 <= pageTotalPages && !(pageNumber-3 >= 1)}">
						<li><a
								href="<c:url value="/role/findPage?page=${pageNumber+2}"/>">${pageNumber+2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+3 <= pageTotalPages && !(pageNumber-2 >= 1)}">
						<li><a
								href="<c:url value="/role/findPage?page=${pageNumber+3}"/>">${pageNumber+3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+4 <= pageTotalPages && !(pageNumber-1 >= 1)}">
						<li><a
								href="<c:url value="/role/findPage?page=${pageNumber+4}"/>">${pageNumber+4}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+5 <= pageTotalPages && !(pageNumber >= 1)}">
						<li><a
								href="<c:url value="/role/findPage?page=${pageNumber+5}"/>">${pageNumber+5}</a>
							</li>
					</c:if>
					
					<c:if test="${pageNumber+1 < pageTotalPages }">
					<li><a
						href="<c:url value="/role/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
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
<!-- addCollege -->
<div class="modal fade" id="addRole" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加角色信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<c:set var="nowDate" value="<%=System.currentTimeMillis()%>"></c:set>
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">角色名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="roleName2" name="roleName2" class="form-control" placeholder="请输入角色名字">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input type="text" id="remark2" name="remark2" class="form-control" placeholder="请输入备注">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">编号:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="orderNo2" name="orderNo2" class="form-control" placeholder="请输入编号">
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
					    <label for="inputEmail3" class="col-sm-4 control-label" id="state2" >用户状态:&nbsp;&nbsp;
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
				<button type="button" class="btn btn-primary" onclick="addRole()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addRole').modal('hide')});
</script>
<!-- eidtCollege -->
<div class="modal fade" id="editRole" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					编辑角色信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">角色名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="roleName" name="roleName" class="form-control" placeholder="请输入角色名字">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input type="text" id="remark" name="remark" class="form-control" placeholder="请输入备注">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">编号:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="orderNo" name="orderNo" class="form-control" placeholder="请输入编号">
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
					      <input type="text" class="form-control Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="createTime" name="createTime" placeholder="请输入创建时间" style="height:34px;">
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
					      <input type="text" class="form-control Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="updateTime" name="updateTime" placeholder="请输入修改时间" style="height:34px;">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户状态:</label>
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
				<button type="button" class="btn btn-primary" onclick="saveRole()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seeCollege -->
<div class="modal fade" id="seeRole" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					角色信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">角色名字:</label>
					    <div class="col-sm-10">
					      <input type="text" id="roleName1" name="roleName1" class="form-control" placeholder="请输入角色名字">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input type="text" id="remark1" name="remark1" class="form-control" placeholder="请输入备注">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">编号:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="orderNo1" name="orderNo1" class="form-control" placeholder="请输入编号">
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
					    <label for="inputEmail3" class="col-sm-2 control-label">用户状态:</label>
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
<!-- addPermission -->
<div class="modal fade" id="addPermission" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加权限
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						 <c:forEach items="${permissionLists}" var="p">
							<tr id="tr_${p.id }">
								
								<input type="checkbox" id="pId" name="pId" value="${p.id}" />${p.url }
								
							</tr>
						</c:forEach>
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="savePermission()">
					保存
				</button>				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addPermission').modal('hide')});
</script>
</body>
</html>