 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>报名详情页</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet">

<script src="js/jquery-3.2.1.min.js" type="text/javascript"> </script>

<script src="js/keyEvent.js" type="text/javascript"> </script>
<script src="js/bootstrap.min.js"> </script>
<!-- <script type="text/javascript">
	function check(){
		var obj = document.getElementById("studentNum").value;
		if(obj==""){
			document.getElementById("studentNum1").innerHTML = ${result};
		}
	}
</script> -->
</head>
<body onkeydown="keyLogin();">
	<div class="navbar navbar-default navbar-fixed-top" style="background:#272727;color:white">
		<div class="container">
			<div class="row" style="font-size:20px;margin-top:10px;">
				<div class="col-sm-12">
					报名
				</div>
			</div>
		</div>
	</div>
	
	<div class="row" style="margin-top:100px;align:center">
		<div class="col-sm-offset-4 col-sm-4" style="background:#eee;width:500px;border-radius:8px;box-shadow:5px 5px 5px #333">
			<form action="RegisterServlet" method="post" class="form-horizontal" role="form" >
				<div class="form-group">
					<div class="col-sm-12" style="margin-top:15px;">
						<input type="text" id="studentNum" name="studentNum" class="form-control" placeholder="请输入学号">
						<input type="hidden" id="studentNum1" name="studentNum" class="form-control">
						<span style="color:red;">${result}</span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" id="username" name="username" class="form-control" placeholder="请输入姓名">
						<input type="hidden" id="username1" name="username" class="form-control">
						
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" id="college" name="college" class="form-control" placeholder="请输入学院">
						<input type="hidden" id="password1" name="password" class="form-control">
						<span style="color:red;">${result1}</span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" id="major" name="major" class="form-control" placeholder="请输入专业">
						<input type="hidden" id="confirmPassword1" name="confirmPassword" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-12">
					  性别：
				      <input type="radio" name="sex" value="男"/> 男
					  <input type="radio" name="sex" value="女"/> 女	
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" id="email" name="email" class="form-control" placeholder="请输入身份证号">
						<input type="hidden" id="email1" name="email" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-12">
						<!-- <button type="submit" class="btn btn-primary" class="form-control" style="width:100%" onclick="doUserRegister()">注册</button> -->
						<input type="submit" class="btn btn-primary" class="form-control" style="width:100%" value="马上报名" onclick="check()">
					</div>
				</div>
				<%-- <span style="color:red;">${result2}</span> --%>
			</form>
		</div>
	</div>
</body>
</html>