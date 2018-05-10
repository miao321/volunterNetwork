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
<title>志愿文化</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/reset2.css" rel="stylesheet" type="text/css" />
<link href="css/details_common.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/information.css" rel="stylesheet" type="text/css" />
<link href="css/layui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
        <%  
		  if(session.getAttribute("userName")==null)
		  {%>
        <li><a href="login.jsp">登录</a></li>
        <%} %>
         <%  
		  if(session.getAttribute("userName")!=null)
		  {%>
        	<li><a href="${pageContext.request.contextPath}/personal">您好，${studentNo }</a></li>
        	<li style="margin-left: -14px;"><a href="${pageContext.request.contextPath}/logout">退出</a></li>
        <%} %>
        <!-- <li><a href="#">注册</a></li> -->
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<section class="main_content">
        <div class="main_content_title clearfix w1200">
            <h1 class="article_title">${borad1.title }</h1>
            <!-- 自定义报名 -->
        	<input type="hidden" id="isCustomForm" value="0">
        	<input type="hidden" id="customForm" value="">
            <div class="under_article_title clearfix">
                <div class="sub_heading fl">
                    <div class="sub_heading_con">
                        <span class="sub_heading_item" title="志愿文化">分类：${borad1.fblx }</span>
                        <span class="sub_heading_item">发布时间：<fmt:formatDate value="${borad1.fbtime }" type="date"/></span>
                    </div>
                </div>             
            </div>
        </div>
        <div class="main_content_one w1200 clearfix" style="margin-bottom:8px;">        
            <div class="content_one_left fl">
                <div class="one_left_body">
                    <div class="news_pic">
		                	<img src="${pageContext.request.contextPath}/${borad1.img }" onerror="randimg4mission($(this),&#39;659842&#39;)" class="NewsIntroImgWidth">		                
                    </div>
                    <div class="phase_item">
                        <p class="phase">${borad1.content }</p>
                    </div>
                </div>
                <div class="consult_comment main_content_common">
                    <div class="common_title_box clearfix">
                        <h1 class="common_title fl">信息公告</h1>
                    </div>
                    <div class="consult_comment_body">
                    	<form action="http://www.gdzyz.cn/mission/comment" method="post" id="pinglunform">
                    		<input type="hidden" name="missionId" value="659842">
							<input type="hidden" name="userId" value="">
                    	
	                        <div class="login_register">
	                            <p class="fl askUToLogin">别默默的看，快登录点评一下吧！</p>
	                            <div class="login_Or_register clearfix">
	                 
	                                <a href="http://www.gdzyz.cn/login/index.do" class="reg fl">登录</a> 
	                            </div>
	                        </div>
                        </form>
                        <ul class="user_consult_list">
                        	<!-- 暂无评论，静态评论屏蔽 -->
                        </ul>
                    <!-- <div class="pages ser-pages">
                    	<div class="pages-infos">
                    		<div class="mod-pages" style="line-height:28px;height:28px;">
                    		<span style="float:left;line-height:40px;">每页显示:</span>
                    		<select onchange="window.location.href=(&#39;/mission/detail?missionId=659842&amp;pageIndex=1&amp;pageSize=&#39; + this.options[this.options.selectedIndex].value);" style="width:60px;float:left;display:inline;background-color:#fff;height:40px;line-height:40px;padding:0 2px;border:1px #e6e6e6 solid;margin-right:4px;" name="dynamic_length">
                    		<option value="5">5</option>
                    		<option value="10" selected="selected">10</option>
                    		<option value="20">20</option><option value="50">50</option>
                    		<option value="100">100</option>
                    		</select>
                    		<a href="javascript:;" style="width:90px;color: #999999;cursor: not-allowed;background-color: #ffffff;border-color: #dddddd;">&lt; 上页</a>
                    		<a href="http://www.gdzyz.cn/mission/detail?missionId=659842&amp;pageSize=10&amp;pageIndex=1" class="cur">1</a>
                    		<a href="http://www.gdzyz.cn/mission/detail?missionId=659842&amp;pageSize=10&amp;pageIndex=2">2</a>
                    		<a href="http://www.gdzyz.cn/mission/detail?missionId=659842&amp;pageSize=10&amp;pageIndex=3">3</a>
                    		<a href="http://www.gdzyz.cn/mission/detail?missionId=659842&amp;pageSize=10&amp;pageIndex=4">4</a>
                    		<a href="http://www.gdzyz.cn/mission/detail?missionId=659842&amp;pageSize=10&amp;pageIndex=5">5</a>
                    		<a href="http://www.gdzyz.cn/mission/detail?missionId=659842&amp;pageSize=10&amp;pageIndex=6">6</a>
                    		<a href="http://www.gdzyz.cn/mission/detail?missionId=659842&amp;pageSize=10&amp;pageIndex=7">7</a>
                    		<a href="http://www.gdzyz.cn/mission/detail?missionId=659842&amp;pageSize=10&amp;pageIndex=2" style="width:90px;">下一页 &gt;</a>
                    		</div>
                    	</div>
                    </div> -->
                    </div>
                </div>
            </div>
            <div class="content_one_right fr">
                <div class="one_right_operation">
                  <span style="font-size: 16px;font-weight: bold;margin-top: -120px;">志愿文化</span>		          
	            	<ul class="one_right_list">						 
					<c:forEach items="${boradLists2}" var="borad" varStatus="status">
					<li class="item clearfix">							
						<span class="left_pic fl"><img src="${pageContext.request.contextPath }/${borad.img }" id="article_logo999993431541" class="pic" style="width:100px;height: 60px;float: left;marign-left:120px;"></span>
						
						<div class="right_txt">
							<p class="right_txt_title">
							${borad.title }
							</p>
							<a href="voluntaryCulture?id=${borad.id}" class="link">阅读全文</a>								
						</div>
					</li>
					</c:forEach>					
					</ul>                    
                </div>
                </div>
            </div>
        </div>
    </section>	
</body>
</html>