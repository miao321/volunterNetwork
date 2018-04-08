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
<title>帮助中心</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/background.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/index_animation.css" rel="stylesheet" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/layui.css" rel="stylesheet" type="text/css" />
<link href="css/personalCenter.css" rel="stylesheet" type="text/css" />



<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/i.js"></script>
<script type="text/javascript" src="js/crossdomain.js"></script>
<style type="text/css">
.cur{ background:#D96C00; font-weight:bold;}

.left_nav_box  .a{
	display: block;
	width: 100%;
	margin-left: 0px;
}
.left_nav_box .a.active{
	background-color: #da4453;
	color: #fff;
}
</style>
<script type="text/javascript">
  var urlstr = location.href;
  var urlstatus=false;
  $("#menu a").each(function () {
    if ((urlstr + '/').indexOf($(this).attr('href')) > -1&&$(this).attr('href')!='') {
      $(this).addClass('cur'); urlstatus = true;
    } else {
      $(this).removeClass('cur');
    }
  });
  if (!urlstatus) {$("#menu a").eq(0).addClass('cur'); }
  function openurl(url) {
	    var rframe = parent.document.getElementById("rightFrame");
	    rframe.src = url;
	}
</script>
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
        <li><a href="${pageContext.request.contextPath}/relative">亲子活动</a></li>
        <li><a href="${pageContext.request.contextPath}/duration">时长公示</a></li>
        <!-- <li><a href="#">志愿者证</a></li> -->      
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
<div class="left" style="background: #ededed;width:260px;">
	<div class="div1">
		<div class="div2">							
			<div class="person" style="width:200px;height: 100px;background: #fff;margin-left: 70px;margin-top: -10px;">
				<h1 style="font-size: 16px; font-weight: bold;padding-top: 10px;">常见问题指引</h1>
				<hr style="color: red;"/>
			</div>
		</div>
		<div class="div2">
			 <div class="left_nav_box fl" style="margin-left: 70px;width: 200px;margin-top: 10px;">
			<div class="nav_block nav_block_one bgcWhite mb_10">
			<ul class="nav_block_list" id="menu">
			  <a class="a active" href="javascript:void(0);"
						onClick="openurl('message.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-comment" aria-hidden="true" style="padding-right: 4px;color: blue;"></span>账号问题</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('data.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-edit" aria-hidden="true" style="padding-right: 4px;color: green;"></span>活动问题</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-stop" aria-hidden="true" style="padding-right: 4px;color:red;"></span>组织团队问题</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('protect.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-folder-close" aria-hidden="true" style="padding-right: 4px;color: orange;"></span>志愿者证问题 </div>
	          </li>
	          </a>
	         
	         
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-hourglass" aria-hidden="true" style="padding-right: 4px;color: orange;"></span>给我留言</div>
	          </li>
	          </a>
	           <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-film" aria-hidden="true" style="padding-right: 4px;color: blue;"></span>意见反馈</div>
	          </li>
	          </a>
	           <a class="a" href="javascript:void(0);"
						onClick="openurl('record.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-th-list" aria-hidden="true" style="padding-right: 4px;color: blue;"></span>其他问题</div>
	          </li>
	          </a>
	           <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-user" aria-hidden="true" style="padding-right: 4px;color: green;"></span>联系我们 </div>
	          </li>
	          </a>
	        </ul>
	        </div>
	        </div>
	    </div>
	</div>
</div>
<div class="right" style="margin-left: 60px;margin-right: -60px;">	
	<iframe id="rightFrame" name="rightFrame" width="100%" height="100%"
		scrolling="auto" marginheight="0" marginwidth="0" align="center" src="message.jsp"
		style="border: 0px solid #CCC; margin: 0; padding: 0;">
    </iframe>
</div>
<script type="text/javascript">
	$(".left_nav_box .nav_block_list .a").click(function(){
		$(".left_nav_box .nav_block_list .a").removeClass("active");
		$(this).addClass("active");
	});
</script>
</body>
</html>