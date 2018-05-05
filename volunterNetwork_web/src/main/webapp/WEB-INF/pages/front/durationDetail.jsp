<%@ page import="com.xxx.volunterNetwork.domain.*" %>
<%@ page import="com.xxx.volunterNetwork.dao.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%     
  String path = request.getContextPath();     
  String basePath = request.getScheme()+"://" +request.getServerName()+":" +request.getServerPort()+path+"/" ;     
%> 
 <base href="<%=basePath%>" >   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>活动详情页</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/reset2.css" rel="stylesheet" type="text/css" />
<link href="css/details_common.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<style>
#div1 {margin:0 auto;height:300px;margin-top:-20px;}
.item{width:1600px;height: 500px;}
.nav .navbar-nav a:hover{width: 80px;height:24px;background: red;}

 </style>
</head>
<body>
 <nav class="navbar navbar-default" style="background:#ededed;">
 <div class="container-fluid">
    <div class="navbar-header">    	
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <img src="images/hand.png" style="float:left;vertical-align: middle;height: 40px;width: 40px;display: inline-block;marign-top:10px;"/>
      <a class="navbar-brand" href="#">志愿莞工</a>     
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav" id="menu" style="font-size: 16px;font-weight: bold;margin-top: 4px;">
        <li><a href="${pageContext.request.contextPath}/volunterNetwork">首页 </a></li>
        <li><a href="${pageContext.request.contextPath}/pageDetail">志愿活动</a></li>
        <li><a href="${pageContext.request.contextPath}/organization">组织团体</a></li>
        <%-- <li><a href="${pageContext.request.contextPath}/relative">亲子活动</a></li> --%>
        <li><a href="${pageContext.request.contextPath}/duration">时长公示</a></li>     
        <li><a href="${pageContext.request.contextPath}/blog">i&nbsp;论坛</a></li>
        <li><a href="${pageContext.request.contextPath}/helpCenter">帮助中心</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right" style="font-size: 16px;font-weight: bold;margin-top: 4px;">
        <li><a href="#">莞工<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span></a></li>
<!--         <li><a href="#">分站导航<span class="glyphicon glyphicon-globe" aria-hidden="true"></span></a></li>
 -->        <c:if test="${userName == null || userName == '' }">
        <li><a href="login.jsp">登录</a></li>
        </c:if>
        <c:if test="${userName !=null || userName != '' }">
        	<li><a href="${pageContext.request.contextPath}/personal">${userName }</a></li>
        	<li style="margin-left: -14px;"><a href="${pageContext.request.contextPath}/login">退出</a></li>
        </c:if>
        <!-- <li><a href="#">注册</a></li> -->
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<section class="main_content">
       
        <div class="main_content_one w1200 clearfix" style="margin-bottom:8px;">        
            <div class="content_one_left fl">              
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<table class="table" id="table">
							<thead>
								<tr>						
									<th>姓名</th>
									<th>活动时长</th>
									<th>培训时长</th>					
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${enrollLists}" var="enroll" varStatus="status">
									<tr id="tr_${enroll.id }">
										<td>${enroll.userName}</td>
										<td>${enroll.duration} 小时</td>
										<td>${enroll.pxTime} 小时</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
            </div>
            <div class="content_one_right fr" style="height: 420px;">
                <div class="one_right_operation">
                    <span style="font-size: 16px;font-weight: bold;margin-top: -120px;">志愿文化</span>		          
	            	<hr>
	            	<a target="_blank" href="detail?id=${acti.id }" class="pic_link" style="text-align: none;">	            							
					<span class="left_pic fl"><img src="${pageContext.request.contextPath}/${acti.img }" id="article_logo999993431541" class="pic" style="width:230px;height: 160px;float: left;marign-left:120px;"></span>					
					<div class="a" style="font-size: 15px;color:#323233;padding-top: 180px;">${acti.title }</div></a>
					<div class="a" style="width：230px;line-height:20px;color:#999999;margin-top: 5px;">地点：${acti.xxdz }</div>
					<div class="a" style="width：230px;line-height:20px;color:#999999;margin-top: 5px;">活动时间：<fmt:formatDate value="${acti.beginTime}" type="date"/> 至 <fmt:formatDate value="${acti.endTime}" type="date"/></div>					
					<div class="a" style="width：230px;line-height:20px;color:#999999;margin-top: 5px;overflow:hidden;text-overflow:ellipsis; white-space: nowrap;">简介：${acti.hdjj }</div>	               
                </div>
                </div>
            </div>
        </div>
    </section>	
</body>
</html>