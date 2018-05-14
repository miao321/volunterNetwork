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
					$('#seePermission').modal('show');
					$("#url1").val(result.url);
					$("#token1").val(result.token);
					$("#description1").val(result.description);
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
function deletePermission(id){
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
function deletePermissions(){
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
    		 url : "deletePermissions",
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
function editPermission(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editPermission').modal('show');
				$("#id").val(result.id);					
				$("#url").val(result.url);
				$("#token").val(result.token);
				$("#description").val(result.description);
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
function savePermission() {
	var id = document.getElementById("id").value;
	var url = document.getElementById("url").value;
	var token = document.getElementById("token").value;
	var description = document.getElementById("description").value;
	var state = document.getElementById("state").value;
	var description1 = /^[\u4e00-\u9fa5]+$/;
    var state1 = /^[1|0]$/ ;
    if (description == '') {
		alert("描述不能为空");
		return false;
	}
    if (!description1.test(description)) {
		alert("描述只能为中文");
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
         data:{id:id,url:url,token:token,description:description,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
//添加数据
function addPermission(){
	var url = document.getElementById("url2").value;
	var token = document.getElementById("token2").value;
	var description = document.getElementById("description2").value;
    var state = $('#state2 input[name="radio"]:checked ').val(); 
    var description1 = /^[\u4e00-\u9fa5]+$/;
    var state1 = /^[1|0]$/ ;
    if (description == '') {
		alert("描述不能为空");
		return false;
	}
    if (!description1.test(description)) {
		alert("描述只能为中文");
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
         data:{url:url,token:token,description:description,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {				
			location.reload();
		 }
	}); 
}
//禁用数据
function disablePermission(id){
	$.ajax({			 
		 type : "POST",
		 url : "disablePermission",           
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
function enablePermission(id){
	$.ajax({			 
		 type : "POST",
		 url : "enablePermission",           
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
				<button class="btn btn-info" data-toggle="modal" data-target="#addPermission" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
				</button>				
				<button  type="button" class="btn btn-info" onclick="toView()" style="margin: 6px 0;">					
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-edit" aria-hidden="true"></span> 查看					
				</button>
				<button class="btn btn-info" onclick="deletePermissions()" style="margin: 6px 0;" type="button">
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
							<th>路径</th>
							<th>描述</th>
							<!-- <th>Token</th> -->
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${permissionLists}" var="c" varStatus="status">
							<tr id="tr_${c.id }">
								<td><input type="checkbox" id="id" name="id" value="${c.id}" /></td>
								<td>${status.index+1}</td>
								<td>${c.url}</td>
								<td>${c.description}</td>
								<%-- <td>${c.token}</td> --%>
								<c:if test="${c.state ==1}">
								<td id="sta">启用</td>
								</c:if>
								<c:if test="${c.state ==0}">
								<td id="sta">停用</td>
								</c:if>
								<td>
									<a onclick="editPermission(${c.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a>
									<a onclick="deletePermission(${c.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="禁用" onclick="disablePermission(${c.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="启用" onclick="enablePermission(${c.id})"></span>
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
							href="<c:url value="/permission/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>		
					<c:if test="${pageNumber-3 >= 1 }">
						<li><a
								href="<c:url value="/permission/findPage?page=${pageNumber-3}"/>">${pageNumber-3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-2 >= 1 }">
						<li><a
								href="<c:url value="/permission/findPage?page=${pageNumber-2}"/>">${pageNumber-2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-1 >= 1 }">
						<li><a
								href="<c:url value="/permission/findPage?page=${pageNumber-1}"/>">${pageNumber-1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber >= 1 }">
						<li><a
								href="<c:url value="/permission/findPage?page=${pageNumber}"/>">${pageNumber}</a>
							</li>
					</c:if>					
					<c:if test="${pageNumber+1 <= pageTotalPages}">
					<c:set var="active" value="${active}" />
						<li class="${active}"><a
								href="<c:url value="/permission/findPage?page=${pageNumber+1}"/>">${pageNumber+1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+2 <= pageTotalPages && !(pageNumber-3 >= 1)}">
						<li><a
								href="<c:url value="/permission/findPage?page=${pageNumber+2}"/>">${pageNumber+2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+3 <= pageTotalPages && !(pageNumber-2 >= 1)}">
						<li><a
								href="<c:url value="/permission/findPage?page=${pageNumber+3}"/>">${pageNumber+3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+4 <= pageTotalPages && !(pageNumber-1 >= 1)}">
						<li><a
								href="<c:url value="/permission/findPage?page=${pageNumber+4}"/>">${pageNumber+4}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+5 <= pageTotalPages && !(pageNumber >= 1)}">
						<li><a
								href="<c:url value="/permission/findPage?page=${pageNumber+5}"/>">${pageNumber+5}</a>
							</li>
					</c:if>
					
					<c:if test="${pageNumber+1 < pageTotalPages }">
					<li><a
						href="<c:url value="/permission/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
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
<!-- addPermission -->
<div class="modal fade" id="addPermission" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加权限信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">资源URL:</label>
					    <div class="col-sm-10">
					      <input type="text" id="url2" name="url2" class="form-control" placeholder="请输入资源URL">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">token:</label>
					    <div class="col-sm-10">
					      <input type="text" id="token2" name="token2" class="form-control" placeholder="请输入token">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">权限描述:</label>
					    <div class="col-sm-10">
					      <input type="text" id="description2" name="description2" class="form-control" placeholder="请输入权限描述">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-4 control-label" id="state2" >权限状态:&nbsp;&nbsp;
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
				<button type="button" class="btn btn-primary" onclick="addPermission()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addPermission').modal('hide')});
</script>
<!-- eidtPermission -->
<div class="modal fade" id="editPermission" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					编辑权限信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">资源URL:</label>
					    <div class="col-sm-10">
					      <input type="text" id="url" name="url" class="form-control" placeholder="请输入资源URL">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">token:</label>
					    <div class="col-sm-10">
					      <input type="text" id="token" name="token" class="form-control" placeholder="请输入token">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">权限描述:</label>
					    <div class="col-sm-10">
					      <input type="text" id="description" name="description" class="form-control" placeholder="请输入权限描述">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">权限状态:</label>
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
				<button type="button" class="btn btn-primary" onclick="savePermission()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seePermission -->
<div class="modal fade" id="seePermission" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					权限信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">资源URL:</label>
					    <div class="col-sm-10">
					      <input type="text" id="url1" name="url1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">token:</label>
					    <div class="col-sm-10">
					      <input type="text" id="token1" name="token1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">权限描述:</label>
					    <div class="col-sm-10">
					      <input type="text" id="description1" name="description1" class="form-control">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">权限状态:</label>
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