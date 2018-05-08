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
//判断是否只选择了一条数据
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
//判断是否选择了数据
function isChecked(){
	var checkbox = document.getElementsByName('id');
	var strIds =[];  
    for ( var i = 0; i < checkbox.length; i++) {  
        if(checkbox[i].checked){  
       	 strIds.push(checkbox[i].value); 
        }  
    }  
	if(strIds!=0)
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
					$('#seeUser').modal('show');
					$("#userName1").val(result.userName);
					$("#studentNo1").val(result.studentNo);
					$("#password1").val(result.password);
					$("#inTake1").val(result.inTake);
					$("#birthday1").val(result.birthday);
					$("#sex1").val(result.sex);
					$("#phone1").val(result.phone);
					$("#email1").val(result.email);
					$("#ancestor1").val(result.ancestor);
					$("#politicalStatus1").val(result.politicalStatus);
					$("#remark1").val(result.remark);
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
function deleteUser(id){
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
//删除多条数据
function deleteUsers(){
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
		 url : "deleteUsers",
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
function editUser(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editUser').modal('show');
				$("#id").val(result.id);			
				$("#userName").val(result.userName);
				$("#studentNo").val(result.studentNo);
				$("#password").val(result.password);
				$("#inTake").val(result.inTake);
				$("#birthday").val(result.birthday);
				$("#sex").val(result.sex);
				$("#phone").val(result.phone);
				$("#email").val(result.email);
				$("#ancestor").val(result.ancestor);
				$("#politicalStatus").val(result.politicalStatus);
				$("#remark").val(result.remark);
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
function saveUser() {
	var id = document.getElementById("id").value;	
	var userName = document.getElementById("userName").value;
	var studentNo = document.getElementById("studentNo").value;
	var password = document.getElementById("password").value;
	var inTake = document.getElementById("inTake").value;
	var birthday = document.getElementById("birthday").value;
	var sex = document.getElementById("sex").value;
	var phone = document.getElementById("phone").value;
	var email = document.getElementById("email").value;
	var ancestor = document.getElementById("ancestor").value;	
	var politicalStatus = document.getElementById("politicalStatus").value;
	var remark = document.getElementById("remark").value;
	var createBy = document.getElementById("createBy").value;
	var createCollege = document.getElementById("createCollege").value;
	var createTime = document.getElementById("createTime").value;
	var updateBy = document.getElementById("updateBy").value;
	var updateTime = document.getElementById("updateTime").value;
	var state = document.getElementById("state").value;
	var userName1 = /^[\u4e00-\u9fa5]+$/;
    var createBy1 = /^[\u4e00-\u9fa5]+$/;
    var createCollege1 = /^[\u4e00-\u9fa5]+$/;
    var studentNo1 = /^[0-9]*$/ ;
    var password1 = /^[a-zA-Z]\w{5,17}$/;
    var phone1 = /^1\d{10}$/;
    var sex1 = /^['男'|'女']$/ ;
    var state1 = /^[1|0]$/ ;
    if (userName == '') {
		alert("用户名不能为空");
		return false;
	}
    if (!userName1.test(userName)) {
		alert("用户名只能为中文");
		return false;
	}
    if (studentNo == '') {
		alert("学号不能为空");
		return false;
	}
    if (!studentNo1.test(studentNo)) {
		alert("学号只能为数字");
		return false;
	}
    if (password == '') {
		alert("密码不能为空");
		return false;
	}
    if (!password1.test(password)) {
		alert("密码以字母开头，长度在6-18之间，只能包含字符、数字和下划线");
		return false;
	}
    if (inTake == '') {
		alert("入学时间不能为空");
		return false;
	}
    if (!sex1.test(sex)) {
		alert("性别不能为空");
		return false;
	}
    
    if (!phone1.test(phone)) {
		alert("手机号不符合要求！");
		return false;
	}
    if (createBy == '') {
		alert("所属学院不能为空");
		return false;
	}
    if (!createBy1.test(createBy)) {
		alert("学院只能为中文");
		return false;
	}
    if (createCollege == '') {
		alert("所属专业不能为空");
		return false;
	}
    if (!createCollege1.test(createCollege)) {
		alert("专业只能为中文");
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
         data:{id:id,userName:userName,studentNo:studentNo,password:password,inTake:inTake,birthday:birthday,
        	 sex:sex,phone:phone,email:email,ancestor:ancestor,politicalStatus:politicalStatus,remark:remark,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,
        	 state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
//添加数据
function addUser(){
	var userName = document.getElementById("userName2").value;
	var studentNo = document.getElementById("studentNo2").value;
	var password = document.getElementById("password2").value;
	var inTake = document.getElementById("inTake2").value;
	var birthday = document.getElementById("birthday2").value;
	var sex = $('#sex2 input[name="sex"]:checked ').val();
	var phone = document.getElementById("phone2").value;
	var email = document.getElementById("email2").value;
	var ancestor = document.getElementById("ancestor2").value;	
	var politicalStatus = document.getElementById("politicalStatus2").value;
	var remark = document.getElementById("remark2").value;
	var createBy = document.getElementById("createBy2").value;
	var createCollege = document.getElementById("createCollege2").value;
	var createTime = document.getElementById("createTime2").value;
	var updateBy = document.getElementById("updateBy2").value;
	var updateTime = document.getElementById("updateTime2").value;
    var state = $('#state2 input[name="radio"]:checked ').val(); 
    var userName1 = /^[\u4e00-\u9fa5]+$/;
    var createBy1 = /^[\u4e00-\u9fa5]+$/;
    var createCollege1 = /^[\u4e00-\u9fa5]+$/;
    var studentNo1 = /^[0-9]*$/ ;
    var password1 = /^[a-zA-Z]\w{5,17}$/;
    var phone1 = /^1\d{10}$/;
    var sex1 = /^['男'|'女']$/ ;
    var state1 = /^[1|0]$/ ;
    if (userName == '') {
		alert("用户名不能为空");
		return false;
	}
    if (!userName1.test(userName)) {
		alert("用户名只能为中文");
		return false;
	}
    if (studentNo == '') {
		alert("学号不能为空");
		return false;
	}
    if (!studentNo1.test(studentNo)) {
		alert("学号只能为数字");
		return false;
	}
    if (password == '') {
		alert("密码不能为空");
		return false;
	}
    if (!password1.test(password)) {
		alert("密码以字母开头，长度在6-18之间，只能包含字符、数字和下划线");
		return false;
	}
    if (inTake == '') {
		alert("入学时间不能为空");
		return false;
	}
    if (!sex1.test(sex)) {
		alert("性别不能为空");
		return false;
	}
    
    if (!phone1.test(phone)) {
		alert("手机号不符合要求！");
		return false;
	}
    if (createBy == '') {
		alert("所属学院不能为空");
		return false;
	}
    if (!createBy1.test(createBy)) {
		alert("学院只能为中文");
		return false;
	}
    if (createCollege == '') {
		alert("所属专业不能为空");
		return false;
	}
    if (!createCollege1.test(createCollege)) {
		alert("专业只能为中文");
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
         data:{userName:userName,studentNo:studentNo,password:password,inTake:inTake,birthday:birthday,
        	 sex:sex,phone:phone,email:email,ancestor:ancestor,politicalStatus:politicalStatus,remark:remark,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,
        	 state:state},
		 cache : false,
		 async : true,
		 success : function(data) {				
			location.reload();
		 }
	}); 
}
//禁用数据
function disableUser(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableUser",           
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
function enableUser(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableUser",           
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
//添加角色
function addRole(){
	alert(321);
	var checkbox = document.getElementsByName("rId");
	if(isChecked()){
		$.ajax({			 
			 type : "POST",
			 url : "${pageContext.request.contextPath}/role/findAll",           
	         dataType : "json",
			 cache : false,
			 async : true,
			 success : function(result) {	
				 alert(4353);
				 $('#addRole').modal('show');
					
			 }
		}); 
	}else{
		alert("请选中用户进行添加角色");
	}
	
}
function saveRole(){
	 var checkbox = document.getElementsByName("rId"); 
	 var checkbox2 = document.getElementsByName("id"); 
     var strIds =[];
     var userIds =[];
     for ( var i = 0; i < checkbox.length; i++) {  
         if(checkbox[i].checked){  
        	 strIds.push(checkbox[i].value); 
         }  
     } 
     for ( var j = 0; j < checkbox2.length; j++) {  
         if(checkbox2[j].checked){  
        	 userIds.push(checkbox2[j].value); 
         }  
     }    
    
	 $.ajax({			 
		 type : "POST",	
         dataType : "json",
		 url : "saveRole",
		 data : {roleId:strIds.toString(),userId:userIds.toString()},
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
</script>
</head>
<body>
<form>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<button class="btn btn-info" data-toggle="modal" data-target="#addUser" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
				</button>				
				<button  type="button" class="btn btn-info" onclick="toView()" style="margin: 6px 0;">					
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-edit" aria-hidden="true"></span> 查看					
				</button>
				<button class="btn btn-info" onclick="deleteUsers()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-trash" aria-hidden="true"></span> 批量删除
				</button>
				<button class="btn btn-info" onclick="addRole()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 角色
				</button>
				
				<table class="table" id="table">
					<thead>
						<tr>
							<th><input type="checkbox" name="selid"
								onclick="checkAll('id',this)"></th>
							<!-- <th data-checkbox="true"></th> -->
							<th>编号</th>
							<th>用户名</th>
							<th>用户学号</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userLists}" var="user" varStatus="status">
							<tr id="tr_${user.id }">
								<td><input type="checkbox" id="id" name="id" value="${user.id}" /></td>
								<td>${status.index+1}</td>
								<td>${user.userName}</td>
								<td>${user.studentNo}</td>
							
								<c:if test="${user.state ==1}">
								<td id="sta">启用</td>
								</c:if>
								<c:if test="${user.state ==0}">
								<td id="sta">停用</td>
								</c:if>
								<td>
									<a onclick="editUser(${user.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a>
									<a onclick="deleteUser(${user.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="禁用" onclick="disableUser(${user.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="启用" onclick="enableUser(${user.id})"></span>
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
							href="<c:url value="/user/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>		
					<c:if test="${pageNumber-3 >= 1 }">
						<li><a
								href="<c:url value="/user/findPage?page=${pageNumber-3}"/>">${pageNumber-3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-2 >= 1 }">
						<li><a
								href="<c:url value="/user/findPage?page=${pageNumber-2}"/>">${pageNumber-2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-1 >= 1 }">
						<li><a
								href="<c:url value="/user/findPage?page=${pageNumber-1}"/>">${pageNumber-1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber >= 1 }">
						<li><a
								href="<c:url value="/user/findPage?page=${pageNumber}"/>">${pageNumber}</a>
							</li>
					</c:if>					
					<c:if test="${pageNumber+1 <= pageTotalPages}">
					<c:set var="active" value="${active}" />
						<li class="${active}"><a
								href="<c:url value="/user/findPage?page=${pageNumber+1}"/>">${pageNumber+1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+2 <= pageTotalPages && !(pageNumber-3 >= 1)}">
						<li><a
								href="<c:url value="/user/findPage?page=${pageNumber+2}"/>">${pageNumber+2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+3 <= pageTotalPages && !(pageNumber-2 >= 1)}">
						<li><a
								href="<c:url value="/user/findPage?page=${pageNumber+3}"/>">${pageNumber+3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+4 <= pageTotalPages && !(pageNumber-1 >= 1)}">
						<li><a
								href="<c:url value="/user/findPage?page=${pageNumber+4}"/>">${pageNumber+4}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+5 <= pageTotalPages && !(pageNumber >= 1)}">
						<li><a
								href="<c:url value="/user/findPage?page=${pageNumber+5}"/>">${pageNumber+5}</a>
							</li>
					</c:if>
					
					<c:if test="${pageNumber+1 < pageTotalPages }">
					<li><a
						href="<c:url value="/user/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
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
<!-- addUser -->
<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加用户信息
				</h4>
			</div>
			<div class="modal-body">
				<!-- <form class="form-inline"> -->
				<form method="post" class="form-horizontal" role="form" >
				<c:set var="nowDate" value="<%=System.currentTimeMillis()%>"></c:set>
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户名:</label>
					    <div class="col-sm-10">
					      <input type="text" id="userName2" name="userName2" class="form-control" placeholder="请输入用户名">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="studentNo2" name="studentNo2" class="form-control" placeholder="请输入学号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户密码:</label>
					    <div class="col-sm-10">
					      <input type="password" id="password2" name="password2" class="form-control" placeholder="请输入密码">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">入学时间:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy/MM/dd HH:mm:ss',minDate:${nowDate}})" id="inTake2" name="inTake2" class="form-control Wdate" placeholder="请输入入学时间" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">出生年月:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="birthday2" name="birthday2" class="form-control Wdate" placeholder="请输入出生年月" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-4 control-label" id="sex2">性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					      <input type="radio" name="sex" value="男"/> 男
						  <input type="radio" name="sex" value="女"/> 女	
						</label>				      
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">手机号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="phone2" name="phone2" class="form-control" placeholder="请输入手机号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">邮箱:</label>
					    <div class="col-sm-10">
					      <input type="text" id="email2" name="email2" class="form-control" placeholder="请输入邮箱">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">籍贯:</label>
					    <div class="col-sm-10">
					      <input type="text" id="ancestor2" name="ancestor2" class="form-control" placeholder="请输入籍贯">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">政治面貌:</label>
					    <div class="col-sm-10">
					      <input type="text" id="politicalStatus2" name="politicalStatus2" class="form-control" placeholder="请输入政治面貌">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input type="text" id="remark2" name="remark2" class="form-control" placeholder="请输入备注">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">所属学院:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createBy2" name="createBy2" class="form-control" placeholder="请输入所属学院">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">所属专业:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createCollege2" name="createCollege2" class="form-control" placeholder="请输入所属专业">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建时间:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy/MM/dd HH:mm:ss',minDate:${nowDate}})" id="createTime2" name="createTime2" class="form-control Wdate" placeholder="请输入创建时间" style="height:34px;">
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
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy/MM/dd HH:mm:ss',minDate:${nowDate}})" id="updateTime2" name="updateTime2" class="form-control Wdate" placeholder="请输入修改时间" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-4 control-label" id="state2" >用户状态:&nbsp;&nbsp;
					    	<input type="radio" name="radio" value="1" style="padding-left: 4px;"/> 启用					    	
						 	<input type="radio" name="radio" value="0"/> 停用
					    </label>
					  </div>
					  <!-- <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
					    <div class="col-sm-10">
					      <input type="text" id="title" name="title" class="form-control" placeholder="请输入标题">
					    </div>
					  </div> -->
				</form>					
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="addUser()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addUser').modal('hide')});
</script>
<!-- eidtUser -->
<div class="modal fade" id="editUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					编辑用户信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户名:</label>
					    <div class="col-sm-10">
					      <input type="text" id="userName" name="userName" class="form-control" placeholder="请输入用户名">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="studentNo" name="studentNo" class="form-control" placeholder="请输入学号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户密码:</label>
					    <div class="col-sm-10">
					      <input type="password" id="password" name="password" class="form-control" placeholder="请输入标题">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">入学时间:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="inTake" name="inTake" class="form-control Wdate" placeholder="请输入入学时间" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">出生年月:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="birthday" name="birthday" class="form-control Wdate" placeholder="请输入出生年月" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-4 control-label" id="sex">性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					      <input type="radio" name="sex" value="男"/> 男
						  <input type="radio" name="sex" value="女"/> 女	
						</label>				      
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">手机号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="phone" name="phone" class="form-control" placeholder="请输入手机号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">邮箱:</label>
					    <div class="col-sm-10">
					      <input type="text" id="email" name="email" class="form-control" placeholder="请输入邮箱">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">籍贯:</label>
					    <div class="col-sm-10">
					      <input type="text" id="ancestor" name="ancestor" class="form-control" placeholder="请输入籍贯">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">政治面貌:</label>
					    <div class="col-sm-10">
					      <input type="text" id="politicalStatus" name="politicalStatus" class="form-control" placeholder="请输入政治面貌">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input type="text" id="remark" name="remark" class="form-control" placeholder="请输入备注">
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
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="createTime" name="createTime" class="form-control Wdate" placeholder="请输入创建时间" style="height:34px;">
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
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="updateTime" name="updateTime" class="form-control Wdate" placeholder="请输入修改时间" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户状态:</label>
					    <div class="col-sm-10">
					    	<input type="text" id="state" class="form-control" readonly="true"/>
					    </div>
					    
					  </div>
					  <!-- <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
					    <div class="col-sm-10">
					      <input type="text" id="title" name="title" class="form-control" placeholder="请输入标题">
					    </div>
					  </div> -->
				</form>		
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveUser()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seeUser -->
<div class="modal fade" id="seeUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					用户信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户名:</label>
					    <div class="col-sm-10">
					      <input type="text" id="userName1" name="userName1" class="form-control" placeholder="请输入用户名" value="${result.userName }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="studentNo1" name="studentNo1" class="form-control" placeholder="请输入学号" value="${result.studentNo }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户密码:</label>
					    <div class="col-sm-10">
					      <input type="password" id="password1" name="password1" class="form-control" placeholder="请输入标题" value="${result.password }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">入学时间:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="inTake1" name="inTake1" class="form-control Wdate" placeholder="请输入入学时间" style="height:34px;" value="${result.inTake }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">出生年月:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="birthday1" name="birthday1" class="form-control Wdate" placeholder="请输入出生年月" style="height:34px;" value="${result.birthday }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">性别:</label>
					    <div class="col-sm-10">
					      <input type="text" id="sex1" class="form-control" value="${result.sex }"/>
						</div>				      
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">手机号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="phone1" name="phone1" class="form-control" placeholder="请输入手机号" value="${result.phone }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">邮箱:</label>
					    <div class="col-sm-10">
					      <input type="text" id="email1" name="email1" class="form-control" placeholder="请输入邮箱" value="${result.email }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">籍贯:</label>
					    <div class="col-sm-10">
					      <input type="text" id="ancestor1" name="ancestor1" class="form-control" placeholder="请输入籍贯" value="${result.ancestor }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">政治面貌:</label>
					    <div class="col-sm-10">
					      <input type="text" id="politicalStatus1" name="politicalStatus1" class="form-control" placeholder="请输入政治面貌" value="${result.politicalStatus }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-10">
					      <input type="text" id="remark1" name="remark1" class="form-control" placeholder="请输入备注" value="${result.remark }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createBy1" name="createBy1" class="form-control" placeholder="请输入创建者" value="${result.createBy }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建者学院:</label>
					    <div class="col-sm-10">
					      <input type="text" id="createCollege1" name="createCollege1" class="form-control" placeholder="请输入创建者学院" value="${result.createCollege }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">创建时间:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="createTime1" name="createTime1" class="form-control Wdate" placeholder="请输入创建时间" style="height:34px;" value="${result.createTime }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">修改者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="updateBy1" name="updateBy1" class="form-control" placeholder="请输入修改者" value="${result.updateBy }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">修改时间:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="updateTime1" name="updateTime1" class="form-control Wdate" placeholder="请输入修改时间" style="height:34px;" value="${result.updateTime }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label" >用户状态:</label>
					    <div class="col-sm-10">	
					    	<input type="text" id="state1" class="form-control" value="${result.state }" />
					    </div>
					    
					    	
					 
					  </div>
					 <%--  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
					    <div class="col-sm-10">
					      <input type="text" id="title" name="title" class="form-control" placeholder="请输入标题" value="${result.userName }">
					    </div>
					  </div> --%>
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
<!-- addRole -->
<div class="modal fade" id="addRole" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加角色
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						
						<c:forEach items="${roleLists}" var="r" varStatus="status">											 
							<tr id="tr_${r.id }">	
								<td>									  								
								<input style="margin-left: 4px;" type="radio" id="rId" name="rId" value="${r.id}" />${r.roleName }								
								</td>													
							 </tr>
							 <c:if test="${status.count % 7 == 0}">
							 	<br/>
							 </c:if>													
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

</body>
</html>