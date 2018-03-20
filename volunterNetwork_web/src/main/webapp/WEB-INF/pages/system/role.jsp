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
				$("#updateB1").val(result.updateBy);
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
	if(state == "启用"){
		state = 1;
	}else{
		state = 0;
	}
	 $.ajax({			 
		 type : "POST",
		 url : "update",    
         dataType : "json",
         data:{id:id,collegeName:collegeName,major:major,state:state},
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
					
					<c:forEach begin="${pageNumber+1 }" end="${pageTotalPages }"
						varStatus="loop">
						<c:set var="active" value="${loop.index==page?'active':''}" />
						<li class="${active}"><a
							href="<c:url value="/role/findPage?page=${loop.index}"/>">${loop.index}</a>
						</li>
					</c:forEach>
					<li><a
						href="<c:url value="/role/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
					</li>
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
				<form class="form-inline">
					<fieldset>
						 <label>角色名字:</label><input type="text" id="roleName2"/><br/>
						 <label>备注:</label><input type="text" id="remark2"/><br/>
						 <label>编号:</label><input type="text" id="orderNo2"/><br/>
						 <label>创建者:</label><input type="text" id="createBy2"/><br/>
						 <label>创建者学院:</label><input type="text" id="createCollege2"/><br/>
						 <label>创建时间:</label><input type="text" class="Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="createTime2"/><br/>
						 <label>修改者:</label><input type="text" id="updateBy2"/><br/>
						 <label>修改时间:</label><input type="text" class="Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="updateTime2"/><br/>						 
						 <label id="state2">学院状态:
						 	<input type="radio" name="radio" value="1"/> 启用
						 	<input type="radio" name="radio" value="0"/> 停用
						 </label> 
					</fieldset>
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
				<form class="form-inline">
					<fieldset>
						 <input type="hidden" id="id">
						 <label>角色名字:</label><input type="text" id="roleName"/><br/>
						 <label>备注:</label><input type="text" id="remark"/><br/>
						 <label>编号:</label><input type="text" id="orderNo"/><br/>
						 <label>创建者:</label><input type="text" id="createBy"/><br/>
						 <label>创建者学院:</label><input type="text" id="createCollege"/><br/>
						 <label>创建时间:</label><input type="text" id="createTime"/><br/>
						 <label>修改者:</label><input type="text" id="updateBy"/><br/>
						 <label>修改时间:</label><input type="text" id="updateTime"/><br/>						 
						 <label>学院状态:</label><input type="text" id="state" readonly="true"/><br/>
					</fieldset>
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
				<form class="form-inline">
					<fieldset>					
						 <label>角色名字:</label><input type="text" id="roleName1" value="${result.roleName }" style="padding-left: 4px;"/><br/>
						 <label>备注:</label><input type="text" id="remark1" value="${result.remark }" style="padding-left: 4px;"/><br/>
						 <label>编号:</label><input type="text" id="orderNo1" value="${result.orderNo }" style="padding-left: 4px;"/><br/>
						 <label>创建者:</label><input type="text" id="createBy1" value="${result.createBy }" style="padding-left: 4px;"/><br/>
						 <label>创建者学院:</label><input type="text" id="createCollege1" value="${result.createCollege }" style="padding-left: 4px;"/><br/>
						 <label>创建时间:</label><input type="text" id="createTime1" value="${result.createTime }" style="padding-left: 4px;"/><br/>
						 <label>修改者:</label><input type="text" id="updateBy1" value="${result.updateBy }" style="padding-left: 4px;"/><br/>
						 <label>修改时间:</label><input type="text" id="updateTime1" value="${result.updateTime }" style="padding-left: 4px;"/><br/>						 
						 <label>学院状态:</label><input type="text" id="state1" value="${result.state }" style="padding-left: 4px;"/><br/>						
					</fieldset>
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
				<button type="button" class="btn btn-primary" onclick="saveRole()">
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