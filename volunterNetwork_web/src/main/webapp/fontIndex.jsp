<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>莞工志愿</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 

<!-- <link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" /> -->
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/index_animation.css" rel="stylesheet" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<!-- <link href="css/izyz_tanchuang.css" rel="stylesheet" type="text/css" /> -->


<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/i.js"></script>
<script type="text/javascript" src="js/crossdomain.js"></script>
<script type="text/javascript">
$('#identifier').carousel({
    interval: 2000
})
</script>
<style>
        #div1 {margin:0 auto;height:300px;margin-top:-20px;}
        .item{width:1600px;height: 500px;}
        .nav .navbar-nav a:hover{width: 80px;height:24px;background: red;}
 </style>
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
        <li><a href="volunterPage.jsp">志愿活动</a></li>
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

<div id="div1">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
           <!--  <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol> -->

              <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="images/banner01.jpg" style="width:1600px;height: 500px;">
                </div>
                <div class="item">
                    <img src="images/banner02.png" style="width:1600px;height: 500px;" >
                </div>
                <div class="item">
                    <img src="images/banner06.jpg" style="width:1600px;height: 500px;" >
                </div>
            </div>

            <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="margin-top: 200px;">
                <span class="glyphicon glyphicon-chevron-left" id="aaron1"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next" style="margin-top: 200px;">
                <span class="glyphicon glyphicon-chevron-right" id="aaron2"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    
    
       <div class="img_txt_nav" style="margin-top: 240px;">
        <div class="img_txt_content w1200 clearfix po_r">
          <div class="img_txt_part img_txt_left fl">
            <ul class="list clearfix">
              <li id="people" class="list_item people"><a href="javascript:;" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1">青少年服务</p>
              </div>
                </a></li>
              <li id="oldman" class="list_item oldman"><a href="javascript:;" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1">敬老助残</p>
              </div>
                </a></li>
              <li id="poor" class="list_item help_poor"><a href="javascript:;" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1">扶贫帮困</p>
              </div>
                </a></li>
              <li id="civilization" class="list_item civilization"><a href="javascript:;" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1">文明礼仪</p>
              </div>
                </a></li>
            </ul>
          </div>
          <div class="img_txt_part img_txt_right fr">
            <ul class="list clearfix">
              <li id="safety" class="list_item safety"><a href="javascript:;" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1">平安守护</p>
              </div>
                </a></li>
              <li id="tree" class="list_item tree"><a href="javascript:;" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1">环境保护</p>
              </div>
                </a></li>
              <li id="sport" class="list_item sport"><a href="javascript:;" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1">文化体育</p>
              </div>
                </a></li>
              <li id="service" class="list_item service"><a href="javascript:;" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1">便民服务</p>
              </div>
                </a></li>
            </ul>
          </div>
          <div class="center_number_box">
            <div class="num_content">
              <div class="num_item_box">
                <h2 class="num_item_title">注册志愿者 (人)</h2>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">9</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">3</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">2</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">7</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">4</li>
                </ol>
              </div>
              <div class="num_item_box">
                <h2 class="num_item_title">志愿服务时长 (万小时)</h2>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">1</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">8</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">3</li>
                </ol>
              </div>
              <div class="num_item_box">
                <h2 class="num_item_title">志愿服务组织 (个)</h2>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">1</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">3</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">7</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">9</li>
                </ol>
              </div>
              <div class="num_item_box">
                <h2 class="num_item_title">志愿服务团体 (个)</h2>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;">0</li>
                </ol>
              </div>
            </div>
          </div>
        </div>
      </div>
      
   <div class="container-fluid" style="margin-top: 0px;background: #fff;">
	<div class="row-fluid">
		<div class="span12">
			<div class="tabbable" id="tabs-157696">
				<ul class="nav nav-tabs" style="font-size: 14px;font-weight: bold;">
					<li>
						<a data-toggle="tab" style="background: red;">活动推荐</a>
					</li>
					<li class="active">
						<a data-toggle="tab" href="#panel-22521">亲少年服务</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22522">金老助残</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22523">扶贫帮困</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22524">文明礼仪</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22525">平安守护</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22526">环境保护</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22527">文化体育</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22528">便民服务</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22529">其他</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-22521">
					  <div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						 <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
					             <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
					             <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
					             <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
					             <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
            				</ul>
            				<ul class="content_box_ul clearfix" style="display: block;">
          						 <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
					             <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
					             <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
					             <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
					             <li class="item">
          						 	<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="pic_link">
          						 		<img src="images/ban1.jpg" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="http://dg.izyz.org/mission/detail.do?missionId=787576" class="text_title">石排第43期孔明灯项目—交通文明劝导</a>
						                <p class="txt oneLineOh">广东东莞市石排镇石排公园红绿灯</p>
						                <p class="txt oneLineOh">2018-3-17</p>
					                </div>
					             </li>
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22522">
						<p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-22523">
						<p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p><p>
							第3部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-22524">
						<p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-22525">
						<p>
							第5部分内容.
						</p><p>
							第5部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-22526">
						<p>
							第6部分内容.
						</p><p>
							第6部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-22527">
						<p>
							第7部分内容.
						</p><p>
							第7部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-22528">
						<p>
							第8部分内容.
						</p><p>
							第8部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-22529">
						<p>
							第9部分内容.
						</p><p>
							第9部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p><p>
							第4部分内容.
						</p>
					</div>
				</div>
			</div>
			<div class="main_content_2 main_content_common">
        <div class="w1200">
          <div class="common_title_box clearfix">
            <h1 class="common_title fl" style="margin-left:-80px;">活跃志愿者</h1>
            <a href="javascript:void(0);" class="seeMore fr">换一换</a></div>
			<div class="act_volunteer">
            <ul class="vol_list clearfix">
              <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy1.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy2.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy3.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy4.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy5.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
              
              </ul>
              <ul class="vol_list clearfix">
              <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy1.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy2.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy3.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy4.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy5.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
              
              </ul>
              <ul class="vol_list clearfix">
              <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy1.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy2.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy3.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy4.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
               <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="images/headimgboy5.jpg" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">熊启明</p>
                    <p class="vol_duration">时长：3127</p>
                  </div>
                </div>
              </li>
              
              </ul>
              </div>
              </div>
              </div>
		</div>
		
		<div class="row-fluid">
				<div class="span8">
					<div class="tabbable" id="tabs-780891">
				<ul class="nav nav-tabs"  style="font-size: 14px;font-weight: bold;">
					<li class="active">
						<a href="#panel-45201" data-toggle="tab">志愿咨询</a>
					</li>
					<li>
						<a href="#panel-45202" data-toggle="tab">信息公告</a>
					</li>
					<li>
						<a href="#panel-45203" data-toggle="tab">志愿文化</a>
					</li>
					<li>
						<a href="#panel-45204" data-toggle="tab">政策法规</a>
					</li>
					<li style="float: right;">
						<a href="#" data-toggle="tab">更多</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-45201">
						<div class="content_left_main">
              				<ul class="common_main common_main1" style="display: block;">
              					 <li class="main_item">
				                  <div class="item_con clearfix">
					                  <a target="_blank" href="http://dg.izyz.org/article/detail.do?pageno=999993431541" class="pic_link">
					                  <img src="images/login.jpg" id="article_logo999993431541" class="pic" style="width:170px;height: 110px;float: left;margin-top: 26px;marign-left:120px;">
					                  </a>
				                    <div class="right_txt" style="margin-top: 26px;">
				                      <a target="_blank" href="http://dg.izyz.org/article/detail.do?pageno=999993431541" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #000;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">【东莞】东坑镇残联积极开展宣传活动，为残疾人送爱心</a>
				                      <p class="right_txt_p" style="margin-left: 190px;padding-top: 8px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">5月22日上午，镇残联举办2017年“全国助残日”宣传活动，通过多种宣传方式，倡导扶残助残的良好社会风尚，营造良好社会氛围。 在人流密集的桥头街，镇残联现场搭设宣传台，通过发放宣传手册，引导市民对残疾人的广泛关注，积极倡导扶残助残良好社会风尚，营造良好的社会氛围。 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;随后，镇残联还在东坑敬老院集中为全镇82名残疾人派发残疾人专用摩托车以及轮椅、洗澡椅等助残器械，切实把关爱和温暖送到残疾</p>
				                      <p class="right_txt_time" style="margin-left: 190px;padding-top: 8px;"> 2017-5-23 </p>
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 <li class="main_item">
				                  <div class="item_con clearfix">
					                  <a target="_blank" href="http://dg.izyz.org/article/detail.do?pageno=999993431541" class="pic_link">
					                  <img src="images/login.jpg" id="article_logo999993431541" class="pic" style="width:170px;height: 110px;float: left;marign-left:120px;">
					                  </a>
				                    <div class="right_txt">
				                      <a target="_blank" href="http://dg.izyz.org/article/detail.do?pageno=999993431541" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #000;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">【东莞】东坑镇残联积极开展宣传活动，为残疾人送爱心</a>
				                      <p class="right_txt_p" style="margin-left: 190px;padding-top: 8px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">5月22日上午，镇残联举办2017年“全国助残日”宣传活动，通过多种宣传方式，倡导扶残助残的良好社会风尚，营造良好社会氛围。 在人流密集的桥头街，镇残联现场搭设宣传台，通过发放宣传手册，引导市民对残疾人的广泛关注，积极倡导扶残助残良好社会风尚，营造良好的社会氛围。 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;随后，镇残联还在东坑敬老院集中为全镇82名残疾人派发残疾人专用摩托车以及轮椅、洗澡椅等助残器械，切实把关爱和温暖送到残疾</p>
				                      <p class="right_txt_time" style="margin-left: 190px;padding-top: 8px;"> 2017-5-23 </p>
				                    </div>
				                  </div>
				                 </li>
              				</ul>
              			</div>
					</div>
					<div class="tab-pane" id="panel-45202">
						<p>
							第二部分内容.
						</p>
						<p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-45203">
						<p>
							第3部分内容.
						</p>
						<p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p>
					</div>
					<div class="tab-pane" id="panel-45204">
						<p>
							第4部分内容.
						</p>
						<p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p><p>
							第二部分内容.
						</p>
					</div>
				</div>
			</div>
				</div>
				<div class="span4">
				<img alt="排行榜" src="images/crown.png" style="float: left;margin-top: 8px;">
				<h3  style="font-size: 16px;font-weight: bold;margin-top: 12px;padding-left: 4px;">志愿排行</h3>
					<div class="row-fluid">
						<div class="span6">
							<span style="font-size: 18px;font-weight: bold;float: left;margin-top: 20px;padding-left: 40px;">志愿者</span>
							<span style="font-size: 14px;font-weight: bold;float: left;margin-left: -90px;margin-top: 60px;color: #333">1 广州</span>
							<span style="font-size: 14px;font-weight: bold;float: right;margin-right: 20px;margin-top: 60px;">32123人</span>
					 	</div>
						<table style="height:60px;border-color:000000;border-left-style:solid;border-width:1px"><tr><td valign="top"></td></tr></table>						
						 <div>
							<span style="font-size: 18px;font-weight: bold;float: right;margin-top: -40px;margin-right: 40px;">志愿服务时长</span>
							<span style="font-size: 14px;font-weight: bold;float: left;margin-left: 20px;">广州</span>
							<span style="font-size: 14px;font-weight: bold;float: right;margin-right: 10px;">32123小时</span> 
						</div>
					</div>
				</div>
			</div>
		
		
		
	</div>
	
</div>
<div style="background: #F00;margin: 0 auto;height:90px;margin-top: 20px;">
	<p></p>
</div>
</body>
</html>