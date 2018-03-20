<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
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
<!-- <link href="css/izyz_tanchuang.css" rel="stylesheet" type="text/css" /> -->


<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/i.js"></script>
<script type="text/javascript" src="js/crossdomain.js"></script>
<script type="text/javascript" src="js/background.js"></script>
</head>
<body>
	<nav class="navbar navbar-default" style="background:#ededed;">
 <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    
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
      <ul class="nav navbar-nav" style="font-size: 16px;font-weight: bold;margin-top: 4px;">
        <li><a href="#">首页 <span class="sr-only">(current)</span></a></li>
        <li><a href="#">志愿活动</a></li>
        <li><a href="#">组织团体</a></li>
        <li><a href="#">亲子活动</a></li>
        <li><a href="#">时长公示</a></li>
        <li><a href="#">志愿者证</a></li>
        <li><a href="#">帮助中心</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right" style="font-size: 16px;font-weight: bold;margin-top: 4px;">
        <li><a href="#">广东<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span></a></li>
        <li><a href="#">分站导航<span class="glyphicon glyphicon-globe" aria-hidden="true"></span></a></li>
        <li><a href="#">登录</a></li>
        <li><a href="#">注册</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="left" style="background: #ededed;width:260px;">
	<div class="div1">
		<div class="div2">			
				
				<div class="person" style="width:200px;height: 100px;background: #fff;margin-left: 70px;">
					<img src="images/headimgboy1.jpg" style="width: 58px;height: 58px;float: left;margin: 21px 0 21px 21px;"/>
					<span style="float:right;margin-right: 50px;margin-top: 20px;">321</span>
					<button style="float:right;width: 70px;height: 24px;margin-right: 30px;" type="button" class="btn btn-info"><h3 style="text-align: center;color: #fff;">设置头像</h3></button>
				</div>
				<!-- <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');">用户管理</a> -->
		</div>
		<div class="div2">
			 <div class="left_nav_box fl" style="margin-left: 70px;width: 200px;margin-top: 10px;">
			<div class="nav_block nav_block_one bgcWhite mb_10">
			<ul class="nav_block_list">
			  <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-comment" aria-hidden="true" style="padding-right: 4px;color: blue;"></span>我的消息</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-edit" aria-hidden="true" style="padding-right: 4px;color: green;"></span>完善资料</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-stop" aria-hidden="true" style="padding-right: 4px;color:red;"></span>一号通中心</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-folder-close" aria-hidden="true" style="padding-right: 4px;color: orange;"></span>我的项目 </div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-th-list" aria-hidden="true" style="padding-right: 4px;color: blue;"></span>服务记录</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-user" aria-hidden="true" style="padding-right: 4px;color: green;"></span>申请志愿者证 </div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-hourglass" aria-hidden="true" style="padding-right: 4px;color: orange;"></span>志愿者证申请进度</div>
	          </li>
	          </a>
	        </ul>
	        </div>
	        </div>
	     </div>
	     
	     <div class="div2">
			 <div class="left_nav_box fl" style="margin-left: 70px;width: 200px;margin-top: 10px;">
			<div class="nav_block nav_block_one bgcWhite mb_10">
			<ul class="nav_block_list">
				<a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-time" aria-hidden="true" style="padding-right: 4px;color: orange;"></span>志愿时长</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-film" aria-hidden="true" style="padding-right: 4px;color: blue;"></span>培训时长</div>
	          </li>
	          </a>
	          <a class="a" href="javascript:void(0);"
						onClick="openurl('baoming.jsp');" style="text-align: left;">
	          <li class="nav_block_item my_msg">
	            <div class="item_con"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true" style="padding-right: 4px;color: green;"></span>报名活动</div>
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
		scrolling="auto" marginheight="0" marginwidth="0" align="center"
		style="border: 0px solid #CCC; margin: 0; padding: 0;">
    </iframe>
</div>
</body>
</html>