<%-- <%@ page import="com.xxx.courseSche.bean.*" %>
<%@ page import="com.xxx.courseSche.dao.*" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<button style="margin-top:24px;margin-left:210px;" class="btn btn-info" onclick="addRole()" style="margin: 6px 0;" type="button">
			<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 修改密码
		</button>
		<div class="fr top-link">
			<a href="javascript:void(0);"
						onClick="openurl('user/changeMessage');" target="mainCont" title="修改个人信息"><i
				class="adminIcon"></i><span>管理员：<%=session.getAttribute("userName")%></span></a>
		</div>
	</div>
	<div class="left">
		<div class="div1">
			<div class="left_top"
				style="height: 32px; line-height: 32px; margin-top: -10px; background: #09a9cf;">
				<label id="time"></label>
			</div>			
			<div class="div2">			
				<span class="glyphicon glyphicon-th-large" aria-hidden="true" style="font-size:18px; "></span>
				系统管理
			</div>
			<div class="div3">
				<ul>
					<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('user/findPage');">用户管理</a></li>					
					<li><span class="glyphicon glyphicon-education" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('college/findPage');">组织管理</a></li>
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
						onClick="openurl('stat/marjor');">专业注册情况</a></span></li>
					<li><span class="glyphicon glyphicon-sort" aria-hidden="true"  style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('stat/marjorClass');">专业班级排名</a></span></li>
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
					<li><span class="glyphicon glyphicon-edit" aria-hidden="true"></span><a class="a" href="javascript:void(0);"
						onClick="openurl('share/findPage');">分享管理</a></li>
					<li><span class="glyphicon glyphicon-unchecked" aria-hidden="true"  style="margin-left:14px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('word/findPage');">我的留言板</a></span></li>
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
						onClick="openurl('banFront.jsp');">轮播图管理</a></span></li>
					<li><span class="glyphicon glyphicon-indent-left" aria-hidden="true" style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('acti/findPage');">活动发布管理</a></span></li>
					<!-- <li><span class="glyphicon glyphicon-list" aria-hidden="true" style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('empty.html');">活动分类管理</a></span></li> -->
					<li><span class="glyphicon glyphicon-user" aria-hidden="true" style="margin-left:34px;"><a class="a" href="javascript:void(0);"
						onClick="openurl('empty.html');">用户中心管理</a></span></li>
				</ul>
			</div>
			<a class="a1" href="login.jsp">
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
			style="border: 0px solid #CCC; margin: 0; padding: 0;">
	    </iframe>
	</div>
</body>
</html>

