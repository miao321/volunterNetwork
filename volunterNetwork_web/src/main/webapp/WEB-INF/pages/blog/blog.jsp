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
<title>分享页</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/index_animation.css" rel="stylesheet" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/forum.css" rel="stylesheet" type="text/css" />
<link href="css/core.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/i.js"></script>
<script type="text/javascript" src="js/crossdomain.js"></script>
<style type="text/css">
	.box_vo{
		width: 68px;
	    height: 98px;
	    border: 1px solid #e7e7e7;
	    border-radius: 2px;
	    color: #666;
	    -moz-border-radius: 2px;
	    margin-left: 10px;
	    margin-top:-110px;
	    float: right;
	}
	.box_l{
		
		margin-right: 500px;
	}
	.box_m{
		
		margin-right: 420px;
	}
	.box_r{
		
		margin-right: 340px;
	}
	.opion a i{
		width: 68px;
	    height: 48px;
	    background-image: url(images/iconst1.png);
	    color: #666;
	    background-position: center 17px;
	    display: block;
	    background-repeat: no-repeat;
	}
	.opion2 a i{
		width: 68px;
	    height: 48px;
	    background-image: url(images/iconst2.png);
	    color: #666;
	    background-position: center 17px;
	    display: block;
	    background-repeat: no-repeat;
	}
	.opion3 a i{
		width: 68px;
	    height: 48px;
	    background-image: url(images/iconst3.png);
	    color: #666;
	    background-position: center 17px;
	    display: block;
	    background-repeat: no-repeat;
	}
	.opion a em{
		line-height: 20px;
	    display: block;
	    text-align: center;
	    color: #666;
	}
	.opion a strong {
		font-size: 16px;
	    line-height: 24px;
	    font-weight: normal;
	    text-align: center;
	    display: block;
	    color: #333;
	}
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
        <li><a href="#">广东<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span></a></li>
        <li><a href="#">分站导航<span class="glyphicon glyphicon-globe" aria-hidden="true"></span></a></li>
        <c:if test="${userName == null || userName == '' }">
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
<div class="content_left_main" style="margin-left: 80px;margin-right:80px;">
	
	<div class="main_wrap thread_wrap">
		<div class="main cc">
			<div id="cloudwind_thread_top"></div>
			<div class="gc09 main_body">
				<div class="clpd1 main_content">
					<div class="cc forum_info_box isthread covered"
						id="J_forum_info_box"
						style="background-image: url(images/blog.jpg);width: 1200px;">
						<div class="cc forum_headline">
							<div class="fl bread_crumb" id="bread_crumb">
								<a href="#">推荐</a><em>&gt;</em>
								<a href="#">i&nbsp;论坛</a>
							</div>
						</div>
						<div class="cc forum_titleline">
							<div class="clpd1 cc name">
								<h3 class="fl" style="margin-top: -10px;">i&nbsp;论坛</h3>
							</div>
							<div class="notice_wrap">
								<div class="ntcbg"></div>
								<div class="ntc ntclt">
									<span></span><em></em>
								</div>
								<div class="ntc ntcrb">
									<span></span><em></em>
								</div>
								<div class="notice">
									<span class="J_forum_intro">分享新鲜事、闲聊、扯淡、吐槽、晒照、爆料.....随意就行
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			
			<form class="form-search" style="float:right;margin-right: 70px;margin-bottom: 10px;">
				<button type="submit" class="btn btn-info">最新发帖</button>
				<button type="submit" class="btn btn-info">最后回复</button>
			</form>
		</div>
	</div>
</div>
	
	<ul class="common_main common_main1" style="display: block;">
		<c:forEach items="${shareLists}" var="share" varStatus="status">
		 <li class="main_item" style="background: #fff;padding-bottom: 20px;padding-left: 20px;">
		     <div class="item_con clearfix">
		      <a target="_blank" href="blogDetail/?id=${share.id }" class="pic_link">
		      <img src="${pageContext.request.contextPath}/${share.img }" alt="头像" class="img-circle pic" style="width:60px;height: 60px;float: left;margin-top: 20px;marign-left:120px;">
		     
		      </a>
		       <div class="right_txt" style="margin-top: 26px;">
		         <a target="_blank" href="blogDetail/?id=${share.id }" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #000;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">${share.title }</a>
		         <p class="right_txt_p" style="margin-left:80px;padding-top: 8px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">作者：${share.author } &nbsp;<fmt:formatDate value="${share.fbtime }" type="both"/>&nbsp;&nbsp;最后回应：${share.endResp } &nbsp;<fmt:formatDate value="${share.fbtime }" type="both"/></p>
		       
		       </div>     
		     </div>		      
	    </li><hr style="margin-top: 20px;margin-bottom: 0;"/>
	    </c:forEach>
	</ul>
</div>

	
</body>
</html>