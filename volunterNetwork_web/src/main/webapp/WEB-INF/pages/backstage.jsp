<%@ page import="com.xxx.volunterNetwork.domain.*" %>
<%@ page import="com.xxx.volunterNetwork.dao.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>莞工志愿者网管理后台</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/background.css" rel="stylesheet" type="text/css" />
<link href="css/adminStyle.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/date.js"></script>
<script type="text/javascript" src="js/background.js"></script>
<script>
function changePassword(){
	var password3 = document.getElementById("password3").value;
	var password1 = document.getElementById("password1").value;
	var password2 = document.getElementById("password2").value;
	$.ajax({
		type:"POST",
		url:"changePassword",
		dataType:"json",
		data:{password3:password3,password1:password1,password2:password2},
		cache:false,
		async:true,
		success:function(data){
			alert(data.msg);
		}
	});
}
function changeMessage(id){
	 $.ajax({			 
		 type : "POST",
		 url : "user/changeMessage",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#changeMessage').modal('show');
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
function saveMessage() {
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
</script>  
</head>
<body onload="startTime()">
	<div class="top1">
		<marquee scrollAmount=2 width=300>数据珍贵 请谨慎操作</marquee>
	</div>
	<div class="top2">
		<div class="logo">
			<img src="images/logo.png" title="东莞理工学院" />
		</div>
		<div class="title">
			<h3>莞工志愿者网管理后台</h3>
		</div>
		<button style="margin-top:24px;margin-right:-510px;" class="btn btn-info" data-toggle="modal" data-target="#changePassword" style="margin: 6px 0;" type="button">
			<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 修改密码
		</button>
		
		<div class="fr top-link">
			<a href="javascript:void(0);"
						onClick="changeMessage(${userId})" target="mainCont" title="修改个人信息"><i
				class="adminIcon"></i><span>管理员：<%=session.getAttribute("userName")%></span></a>
		</div>
	</div>
	<div class="left">
		<div class="div1">
			<div class="left_top"
				style="height: 32px; line-height: 32px; margin-top: -10px; background: #09a9cf;">
				<label id="time"></label>
			</div>
			<shiro:hasRole name="超级管理员">	
			<div class="div2">			
				<span class="glyphicon glyphicon-th-large" aria-hidden="true" style="font-size:18px; "></span>
				系统管理
			</div>
			</shiro:hasRole>
			<div class="div3">
				<ul>
					<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('user/findPage');">用户管理</a></li>					
					<li><span class="glyphicon glyphicon-education" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('organization/findPage');">组织管理</a></li>
					<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('role/findPage');">角色管理</a></li>
					<li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('permission/findPage');">权限管理</a></li>
					<li><span class="glyphicon glyphicon-stop" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('module/findPage');">模块管理</a></li>
					<li><span class="glyphicon glyphicon-edit" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('log/findPage');">日志管理</a></li>
				</ul>
			</div>
			<div class="div2">
				<span class="glyphicon glyphicon-bookmark" aria-hidden="true" style="font-size:18px; "></span>
				统计分析
			</div>
			<div class="div3">
				<ul>
					<li><span class="glyphicon glyphicon-edit" aria-hidden="true" style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('stat/marjor');">学院注册情况</a></span></li>
					<li><span class="glyphicon glyphicon-sort" aria-hidden="true"  style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('stat/marjorClass');">学院时长排名</a></span></li>
					<li><span class="glyphicon glyphicon-heart-empty" aria-hidden="true"  style="margin-left:-10px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('stat/persure');">压力图</a></span></li>						
				</ul>
			</div>
			<div class="div2">
				<span class="glyphicon glyphicon-headphones" aria-hidden="true" style="font-size:18px; "></span>
				论坛管理
			</div>
			<div class="div3">
				<ul>
					<shiro:hasRole name="超级管理员">
					<li><span class="glyphicon glyphicon-edit" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('share/findPage');">分享管理</a></li>
					</shiro:hasRole>
					<!-- <li><span class="glyphicon glyphicon-unchecked" aria-hidden="true"  style="margin-left:14px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('word/findPage');">我的留言板</a></span></li> -->
					<li><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('opinion/findPage');">意见反馈</a></li>
				</ul>
			</div>
			<div class="div2">
				<span class="glyphicon glyphicon-folder-open" aria-hidden="true" style="font-size:18px; "></span>
				公告管理
			</div>
			<div class="div3">
				<ul>
					<li><span class="glyphicon glyphicon-edit" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('borad/findPage');">查看公告</a></li>
					<li><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('borad/saveOrUpdate');">添加公告</a></li>
				</ul>
			</div>
			<div class="div2">
				<span class="glyphicon glyphicon-film" aria-hidden="true" style="font-size:18px; "></span>
				前端管理
			</div>
			<div class="div3">
				<ul>
					<!-- <li><span class="glyphicon glyphicon-th-list" aria-hidden="true" style="margin-left:18px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('empty.html');">导航条管理</a></span></li> -->
					<li><span class="glyphicon glyphicon-film" aria-hidden="true" style="margin-left:18px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('img/findImg');">轮播图管理</a></span></li>
					<li><span class="glyphicon glyphicon-indent-left" aria-hidden="true" style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('acti/findPage');">活动发布管理</a></span></li>
					<!-- <li><span class="glyphicon glyphicon-list" aria-hidden="true" style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('empty.html');">活动分类管理</a></span></li> -->
					<li><span class="glyphicon glyphicon-user" aria-hidden="true" style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('user/findPage');">用户中心管理</a></span></li>
					<li><span class="glyphicon glyphicon-user" aria-hidden="true" style="margin-left:6px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('enroll/findPage');">报名管理</a></span></li>
				</ul>
			</div>
			<a class="a1" href="login">
				<div class="div2">
					<span class="glyphicon glyphicon-off" aria-hidden="true" style="font-size:18px; "></span>
					退出后台
				</div>
			</a>
		</div>
	</div>
	<div class="right">
	
		<iframe id="rightFrame" name="rightFrame" width="100%" height="100%"
			scrolling="auto" marginheight="0" marginwidth="0" align="center"
			style="border: 0px solid #CCC; margin: 0; padding: 0;" src="welcome.jsp">
	    </iframe>
	</div>

<!-- addUser -->
<div class="modal fade" id="changePassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改密码
				</h4>
			</div>
			<div class="modal-body">
				<!-- <form class="form-inline"> -->
				<form method="post" class="form-horizontal" role="form" >
				<div class="form-group">
					    <label for="inputEmail3" class="col-sm-3 control-label">旧密码:</label>
					    <div class="col-sm-9">
					      <input type="password" id="password3" name="password3" class="form-control" placeholder="请输入旧密码">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-3 control-label">新密码:</label>
					    <div class="col-sm-9">
					      <input type="password" id="password1" name="password1" class="form-control" placeholder="请输入新密码">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-3 control-label">确认新密码:</label>
					    <div class="col-sm-9">
					      <input type="password" id="password2" name="password2" class="form-control" placeholder="请输入再次新密码">
					    </div>
					  </div>
				</form>					
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="changePassword()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#changePassword').modal('hide')});
</script>
<!-- changeMessage -->
<div class="modal fade" id="changeMessage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改个人信息
				</h4>
			</div>
			<div class="modal-body">
				<!-- <form class="form-inline"> -->
				<form method="post" class="form-horizontal" role="form" >
				<div class="form-group" style="margin-top: 20px;">
					    <label for="inputEmail3" class="col-sm-2 control-label"><span style="padding-right: 8px;color: red;" >*</span>姓名:</label>
					    <div class="col-sm-10">
					      <input type="text" id="userName" name="userName" class="form-control" placeholder="请输入姓名" value="${user.userName }">
					    </div>
					  </div>
					  <div class="form-group">			  	
					    <label for="inputEmail3" class="col-sm-2 control-label"><span style="padding-right: 8px;color: red;" >*</span>学号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="studentNo" name="studentNo" class="form-control" placeholder="请输入学号" value="${user.studentNo }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户密码:</label>
					    <div class="col-sm-10">
					      <input type="password" id="password" name="password" class="form-control" placeholder="请输入用户密码" value="${user.password }" readonly="true">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学院:</label>
					    <div class="col-sm-10">
					      <input type="password" id="college" name="college" class="form-control" placeholder="请输入学院">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">专业:</label>
					    <div class="col-sm-10">
					      <input type="password" id="major" name="major" class="form-control" placeholder="请输入专业">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">入学时间:</label>
					    <div class="col-sm-10">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="inTake2" name="inTake2" class="form-control Wdate" placeholder="请输入入学时间" style="height:34px;" value="${user.inTake }">
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
					      <c:if test="${user.sex == '男' }">
					      <input type="radio" name="sex" value="${user.sex }" checked/> ${user.sex }
					      <input type="radio" name="sex" value="女"/>女
						  </c:if>
						  <c:if test="${user.sex == '女' }">
					      <input type="radio" name="sex" value="男" /> 男
					      <input type="radio" name="sex" value="${user.sex }" checked/>${user.sex }
						  </c:if>
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
					
				</form>					
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveMessage()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>

