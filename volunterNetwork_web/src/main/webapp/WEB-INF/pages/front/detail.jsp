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

<!-- <link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/index_animation.css" rel="stylesheet" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" /> -->

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
        <div class="main_content_title clearfix w1200">
            <h1 class="article_title">${acti.title }</h1>
            <!-- 自定义报名 -->
        	<input type="hidden" id="isCustomForm" value="0">
        	<input type="hidden" id="customForm" value="">
            <div class="under_article_title clearfix">
                <div class="sub_heading fl">
                    <div class="sub_heading_con">
                        <span class="sub_heading_item" title="公共文明">分类：${acti.hdlx }</span>
                        <span class="sub_heading_item">发布时间：<fmt:formatDate value="${acti.fbtime }" type="both"/></span>
                        <span class="sub_heading_item">发布组织： ${acti.fbzz }</span>
                    </div>
                </div>     
            </div>
        </div>
        <div class="main_content_one w1200 clearfix" style="margin-bottom:8px;">        
            <div class="content_one_left fl">
                <div class="one_left_body">
                    <div class="news_pic">
		                	<img src="${pageContext.request.contextPath}/${acti.img }" onerror="randimg4mission($(this),&#39;659842&#39;)" class="NewsIntroImgWidth">		                
                    </div>
                    <div class="phase_item">
                        <p class="phase">【活动时间】</p>
                        <p class="phase">${acti.beginTime } 至 ${acti.endTime }</p>
                    </div>
                    <div class="phase_item">
                      
                        <p class="phase">【联系人】： ${acti.fbman }</p>
                        <p class="phase">【联系方式】： ${acti.lxfs }</p>
                    </div>
                    <div class="phase_item">
                        <p class="phase">【详细地址】</p>                       
                        <p class="phase">${acti.xxdz }     </p>
                        <div id="l-map"></div>
                    </div>
                      
                    <div class="phase_item">
                        <p class="phase">                         
                    	 【活动简介】
                        </p>
                        <p class="phase">${acti.hdjj }</p>
                    </div>
                    <div class="phase_item">
                        <p class="phase">                        	
                    		【服务内容】</p>
                        <p class="phase">${acti.content }</p>
                    </div>
                    <div class="phase_item">
                        <p class="phase">【服务要求】</p>
                        <p class="phase">${acti.fwyq } </p>
                    </div>                   
                    <!-- 往期活动图片 --><!-- c:if 判断是否有上传过往期活动图片 -->
                </div>
                <div class="consult_comment main_content_common">
                    <div class="common_title_box clearfix">
                        <h1 class="common_title fl">志愿详情页</h1>
                    </div>
                    <div class="consult_comment_body">
                    	<form action="#" method="post" id="pinglunform">
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
                  
                    </div>
                </div>
            </div>
            <div class="content_one_right fr">
                <div class="one_right_operation">
                    <div class="progress_bar_box clearfix po_r" style="display: none;">
                        <span class="progress_txt fl">报名截止</span>
                        <p id="deadline" starttime="2018-12-01" createtime="2017-11-27" state="1003" endtime="2017-11-30"></p>
                        <em class="progress_bar_total fl">
                        <i class="progress_bar_already"></i></em>
                        <span class="progress_txt fr" id="spareDay">剩0天</span>
                    </div>
                    <div class="operate_btns clearfix">
                        <a href="javascript:;" class="btn fl like">
                            <i class="btn_bg"></i>
                            <p class="btn_txt">感兴趣</p>
                            <p class="btn_num">${acti.zan }</p>
                        </a>
                        <a href="javascript:;" class="btn fl signup">
                            <i class="btn_bg"></i>
                            <p class="btn_txt">招募人数</p>
                            <p class="btn_num">${acti.zmrs }</p>
                        </a>
                        <a href="javascript:;" class="btn fl attention" onclick="missionPraise(&#39;659842&#39;,&#39;&#39;)">
                            <i class="btn_bg"></i>
                            <p class="btn_txt">关注</p>
                            <p class="btn_num" id="praise">${acti.attention }</p>
                        </a>
                    </div>
                    <div class="operate_btns2 clearfix">
                        <a href="javascript:;" class="btn btn1" style="text-align: center;padding-top: -14px;">时长公示</a>
<!--                         <a href="javascript:;" class="btn btn2">我要报名</a> -->
                           <div class="btn btn2" style="background-color: rgb(153, 153, 153);">报名结束</div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </section>	
</body>
</html>