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
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
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

function addUser() {
	var id = document.getElementById("id").value;	
	var userName = document.getElementById("userName").value;
	var studentNo = document.getElementById("studentNo").value;
	var password = document.getElementById("password").value;
	var college = document.getElementById("college").value;
	var inTake = document.getElementById("inTake").value;
	var birthday = document.getElementById("birthday").value;
	var sex = document.getElementById("sex").value;
	var phone = document.getElementById("phone").value;
	var email = document.getElementById("email").value;
	var ancestor = document.getElementById("ancestor").value;	
	var politicalStatus = document.getElementById("politicalStatus").value;
	var remark = document.getElementById("remark").value;	
	
	 $.ajax({			 
		 type : "POST",
		 url : "${pageContext.request.contextPath}/user/saveOrUpdate",    
         dataType : "json",
         data:{id:id,userName:studentNo,studentNo:userName,password:password,college:college,inTake:inTake,birthday:birthday,
        	 sex:sex,phone:phone,email:email,ancestor:ancestor,politicalStatus:politicalStatus,remark:remark},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
</script>

</head>
<body>
<div class="container-fluid" style="margin-top: 0px;background: #fff;">
	<div class="row-fluid">
		<div class="span12">
			<div class="tabbable" id="tabs-157696" style="width: 100%; ">
				<ul class="nav nav-tabs" style="font-size: 14px;font-weight: bold;width:270px;margin: 0 auto;">
					<li class="active">
						<a data-toggle="tab" href="#panel-22521">个人资料</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22522">归属组织</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22523">修改密码</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-22521">
					  <form method="post" class="form-horizontal" role="form" style="margin-top: 30px;"  >
					   <input type="hidden" id="id" value="${user.id }">
					  <div class="form-group" style="margin-top: 20px;">
					    <label for="inputEmail3" class="col-sm-2 control-label"><span style="padding-right: 8px;color: red;" >*</span>姓名:</label>
					    <div class="col-sm-3">
					      <input type="text" id="userName" name="userName" class="form-control" placeholder="请输入姓名" value="${user.studentNo }">
					    </div>
					  </div>
					  <div class="form-group">			  	
					    <label for="inputEmail3" class="col-sm-2 control-label"><span style="padding-right: 8px;color: red;">*</span>学号:</label>
					    <div class="col-sm-3">
					      <input type="text" id="studentNo" name="studentNo" class="form-control" placeholder="请输入学号" value="${user.userName }" >
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户密码:</label>
					    <div class="col-sm-3">
					      <input type="password" id="password" name="password" class="form-control" placeholder="请输入用户密码" value="${user.password }" readonly="true">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学院:</label>
					    <div class="col-sm-3">
					      <input type="text" id="college" name="college" class="form-control" placeholder="请输入学院" value="${user.college }">
					    </div>
					  </div>
					  <%-- <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">专业:</label>
					    <div class="col-sm-3">
					      <input type="password" id="major" name="major" class="form-control" placeholder="请输入专业" value="${user.major }">
					    </div>
					  </div> --%>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">入学时间:</label>
					    <div class="col-sm-3">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="inTake" name="inTake" class="form-control Wdate" placeholder="请输入入学时间" style="height:34px;" value="${user.inTake }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">出生年月:</label>
					    <div class="col-sm-3">
					      <input type="text" onClick="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="birthday" name="birthday" class="form-control Wdate" placeholder="请输入出生年月" style="height:34px;" value="${user.birthday }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-3 control-label" id="sex">性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
					    <div class="col-sm-3">
					      <input type="text" id="phone" name="phone" class="form-control" placeholder="请输入手机号" value="${user.phone }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">邮箱:</label>
					    <div class="col-sm-3">
					      <input type="text" id="email" name="email" class="form-control" placeholder="请输入邮箱" value="${user.email }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">籍贯:</label>
					    <div class="col-sm-3">
					      <input type="text" id="ancestor" name="ancestor" class="form-control" placeholder="请输入籍贯" value="${user.ancestor }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">政治面貌:</label>
					    <div class="col-sm-3">
					      <input type="text" id="politicalStatus" name="politicalStatus" class="form-control" placeholder="请输入政治面貌" value="${user.politicalStatus }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-3">
					      <input type="text" id="remark" name="remark" class="form-control" placeholder="请输入备注" value="${user.remark }">
					    </div>
					  </div>
					 <div class="form-group" style="margin-left: 200px;margin-top: 20px;">
					 	<div class="col-sm-3">
					    <button type="button" class="btn btn-primary" onclick="addUser(${user.id})">
						保存
						</div>
						</button>
					  </div>
					</form>			
					</div>
					
					<div class="tab-pane" id="panel-22522">
						<form method="post" class="form-horizontal" role="form" style="margin-top: 30px;" >
							<div class="form-group" >
							    <label for="inputEmail3" class="col-sm-2 control-label"><span style="padding-right: 8px;color: red;" >*</span>归属组织:
							    	<!-- <button class="btn btn-info" data-toggle="modal" data-target="#addUser"type="button" style="height: 34px;margin-left: 4px;">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
									</button> -->
							    </label>							    	
							    <div class="col-sm-3" style="margin-top: 4px;">
							     <input type="text" id="remark2" name="remark2" class="form-control" value="${user.college}">
						 	     
							     </div>
							     <div class="col-sm-3" style="margin-top: 10px;">
							     <span style="margin-top: 20px;margin-left: 10px;" >审核通过</span>
							     </div>
							     
			                </div>
						</form>
					</div>	
					<div class="tab-pane" id="panel-22523">
						 <form method="post" class="form-horizontal" role="form" style="margin-top: 30px;"  >
					  
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">旧密码:</label>
					    <div class="col-sm-3">
					      <input type="password" id="password3" name="password3" class="form-control" placeholder="请输入旧密码">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">新密码:</label>
					    <div class="col-sm-3">
					      <input type="password" id="password1" name="password1" class="form-control" placeholder="请输入新密码">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">确认新密码:</label>
					    <div class="col-sm-3">
					      <input type="password" id="password2" name="password2" class="form-control" placeholder="请输入再次新密码">
					    </div>
					  </div>
					 <div class="form-group" style="margin-left: 200px;margin-top: 20px;">
					 	<div class="col-sm-3">
					    <button type="button" class="btn btn-primary" onclick="changePassword()">
						保存
						</div>
						</button>
					  </div>
					</form>			
					</div>					
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>