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
<title>莞工志愿</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/index_animation.css" rel="stylesheet" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/i.js"></script>
<script type="text/javascript" src="js/crossdomain.js"></script>
<script type="text/javascript">
function detail(hdlx){
	window.location.href="sort?hdlx="+hdlx;	
}

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

<div id="div1">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
              <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
            	<c:forEach items="${imgLists}" var="img" varStatus="status">
            		<%-- <div class="item active">
	                    <img src="${pageContext.request.contextPath}/${ img.img}" style="width:1600px;height: 500px;" >
	                </div> --%>
            		<c:if test="${status.first}">
	                <div class="item active">
	                    <img src="${pageContext.request.contextPath}/${ img.img}" style="width:1600px;height: 500px;" >
	                </div>
	             	</c:if>
	               	<c:if test="${!status.first}">
	                <div class="item">
	                    <img src="${pageContext.request.contextPath}/${ img.img}" style="width:1600px;height: 500px;" >
	                </div>
	                </c:if>
                </c:forEach>
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
            <ul class="list clearfix" id="txtSort">
              <li id="people" class="list_item people">
              <a href="javascript:;"  onclick="detail('青少年服务')" class="item_con">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1" id="txt1">青少年服务</p>
              </div>
                </a></li>
              <li id="oldman" class="list_item oldman">
              <a href="javascript:;" class="item_con" onclick="detail('敬老助残')">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1" id="txt1">敬老助残</p>
              </div>
                </a></li>
              <li id="poor" class="list_item help_poor">
              <a href="javascript:;" class="item_con" onclick="detail('扶贫帮困')">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1" id="txt1">扶贫帮困</p>
              </div>
                </a></li>
              <li id="civilization" class="list_item civilization">
              <a href="javascript:;" class="item_con" onclick="detail('文明礼仪')">
                <div class="symbol_box">
                <div class="symbol_in">
                    <div class="symbol"></div>
                  </div>
              </div>
                <div class="txt_box">
                <p class="txt1" id="txt1">文明礼仪</p>
              </div>
                </a></li>
            </ul>
          </div>
			<div class="img_txt_part img_txt_right fr">
				<ul class="list clearfix">
					<li id="safety" class="list_item safety">
					<a href="javascript:;" class="item_con" onclick="detail('平安守护')">
							<div class="symbol_box">
								<div class="symbol_in">
									<div class="symbol"></div>
								</div>
							</div>
							<div class="txt_box">
								<p class="txt1" id="txt1">平安守护</p>
							</div>
					</a></li>
					<li id="tree" class="list_item tree">
					<a href="javascript:;" class="item_con" onclick="detail('环境保护')">
							<div class="symbol_box">
								<div class="symbol_in">
									<div class="symbol"></div>
								</div>
							</div>
							<div class="txt_box">
								<p class="txt1" id="txt1">环境保护</p>
							</div>
					</a></li>
					<li id="sport" class="list_item sport">
					<a href="javascript:;" class="item_con" onclick="detail('文化体育')">
							<div class="symbol_box">
								<div class="symbol_in">
									<div class="symbol"></div>
								</div>
							</div>
							<div class="txt_box">
								<p class="txt1" id="txt1">文化体育</p>
							</div>
					</a></li>
					<li id="service" class="list_item service">
					<a href="javascript:;" class="item_con" onclick="detail('便民服务')">
							<div class="symbol_box">
								<div class="symbol_in">
									<div class="symbol"></div>
								</div>
							</div>
							<div class="txt_box">
								<p class="txt1" id="txt1">便民服务</p>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="center_number_box">
            <div class="num_content">
              <div class="num_item_box">
                <h2 class="num_item_title">注册志愿者 (人)</h2>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">9</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">3</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">2</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">7</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">4</li>
                </ol>
              </div>
              <div class="num_item_box">
                <h2 class="num_item_title">志愿服务时长 (万小时)</h2>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">1</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">8</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">3</li>
                </ol>
              </div>
              <div class="num_item_box">
                <h2 class="num_item_title">志愿服务组织 (个)</h2>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">1</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">3</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">7</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">9</li>
                </ol>
              </div>
              <div class="num_item_box">
                <h2 class="num_item_title">志愿服务团体 (个)</h2>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">5</li>
                </ol>
                <ol class="number_show clearfix">
                  <li class="num" style="margin-right: 0px;padding-top: 8px;">0</li>
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
						<a data-toggle="tab" href="#panel-22521">青少年服务</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22522">敬老助残</a>
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
          						<c:forEach items="${actiLists}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22522">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						<c:forEach items="${actiLists2}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22523">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						<c:forEach items="${actiLists3}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22524">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						<c:forEach items="${actiLists4}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22525">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						<c:forEach items="${actiLists5}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22526">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						<c:forEach items="${actiLists6}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22527">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						<c:forEach items="${actiLists7}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22528">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						<c:forEach items="${actiLists8}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
					</div>
					<div class="tab-pane" id="panel-22529">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<ul class="content_box_ul clearfix" style="display: block;">
          						<c:forEach items="${actiLists9}" var="acti" varStatus="status">
				            		<li class="item">
          						 	<a target="_blank" href="detail?id=${acti.id}" class="pic_link">
          						 		<img src="${pageContext.request.contextPath}/${acti.img }" id="mission_logo787576" class="pic_link">
          						 	</a>
              						<div class="text_box">
	              						<a target="_blank" href="detail?id=${acti.id}" class="text_title">${acti.title }</a>
						                <p class="txt oneLineOh">地点：${acti.xxdz }</p>
						                <p class="txt oneLineOh">时间：<fmt:formatDate value="${acti.beginTime }" type="date"/></p>
					                </div>
					             	</li>
				                </c:forEach>          						
            				</ul>
            			</div>
            		  </div>
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
              <c:forEach items="${enrollLists}" var="enroll" varStatus="status">
              <li class="vol_item">
                <div class="vol_item_con clearfix">
                  <div class="volunteer_pic fl"><a target="_blank"><img src="${pageContext.request.contextPath}/${enroll.img }" id="personal_logoff80808149a355710149aa7329e967f7" class="pic"></a></div>
                  <div class="volunteer_txt_info">
                    <p class="volunteer_name">${enroll.userName }</p>
                    <p class="vol_duration">时长：${enroll.duration }</p>
                  </div>
                </div>
              </li>
              </c:forEach>
              </ul>
              </div>
              </div>
              </div>
		</div>
		
		<div class="row-fluid">
				<div class="span7">
					<div class="tabbable" id="tabs-780891">
				<ul class="nav nav-tabs"  style="font-size: 14px;font-weight: bold;">
					<li class="active">
						<a href="#panel-45201" data-toggle="tab">志愿资讯</a>
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
              					 <c:forEach items="${boradLists}" var="borad" varStatus="status">
              					 <li class="main_item">
				                  <div class="item_con clearfix">
					                  <a target="_blank" href="voluntaryInfo?id=${borad.id}" class="pic_link">
					                  <img src="${pageContext.request.contextPath }/${borad.img }" id="article_logo999993431541" class="pic" style="width:170px;height: 110px;float: left;margin-top: 26px;marign-left:120px;">
					                  </a>
				                    <div class="right_txt" style="margin-top: 26px;">
				                      
				                      <a target="_blank" href="voluntaryInfo?id=${borad.id}" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #000;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">${borad.title }</a>
				                      <p class="right_txt_p" style="margin-left: 190px;padding-top: 8px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${borad.content }</p>
				                      <p class="right_txt_time" style="margin-left: 190px;padding-top: 38px;"> <fmt:formatDate value="${borad.fbtime }" type="date"/> </p>
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 </c:forEach>				                
              				</ul>
              			</div>
					</div>
					<div class="tab-pane" id="panel-45202">
						<div class="content_left_main">
              				<ul class="common_main common_main1" style="display: block;">
              					 <c:forEach items="${boradLists2}" var="borad" varStatus="status">
              					 <li class="main_item">
				                  <div class="item_con clearfix">			            
				                    <div class="right_txt" style="margin-top: 26px;">
				                      <span style="float: left;margin-top: -10px;margin-left: 10px;"><img src="images/hot.png"/></span>
				                      <a target="_blank" href="voluntaryCulture?id=${borad.id}" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #000;padding-left: -2px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">${borad.title }</a>
				                      <p class="right_txt_p" style="margin-left:-140px;padding-top: 8px;color:#999;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${borad.content }</p>
				                      <p class="right_txt_time" style="margin-left:0px;padding-top: 8px;"> <fmt:formatDate value="${borad.fbtime }" type="date"/> </p>
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 </c:forEach>				                
              				</ul>
              			</div>
					</div>
					<div class="tab-pane" id="panel-45203">
						<div class="content_left_main">
              				<ol class="common_main common_main1" style="display: block;margin-top: 20px;">
              					 <c:forEach items="${boradLists3}" var="borad" varStatus="status">
              					 <li class="main_item">
				                  <div class="item_con clearfix">			            
				                    <div class="right_txt">
				                      <a target="_blank" href="messageBlog?id=${borad.id}" class="right_txt_title oneLineOh" 
				                      style="font-size: 16px;font-weight: bold;color: #333;padding-left: 20px; ">·&nbsp;${borad.title }</a>
										
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 </c:forEach>				               
              				</ol>
              			</div>
					</div>
					<div class="tab-pane" id="panel-45204">
						<div class="content_left_main">
              				<ol class="common_main common_main1" style="display: block;">
              					 <li class="main_item">
				                  <div class="item_con clearfix">			            
				                    <div class="right_txt" style="margin-top: 26px;">
				                      <a target="_blank" href="http://www.gdzyz.cn/policyLaw/detail.do?pageno=15" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #333;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">·&nbsp;《中国青年志愿者协会章程》</a>
		
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 <li class="main_item">
				                  <div class="item_con clearfix">
					                  
				                    <div class="right_txt">
				                      <a target="_blank" href="http://www.gdzyz.cn/policyLaw/detail.do?pageno=16" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #333;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">·&nbsp;《中国注册志愿者管理办法》</a>
				                      
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 <li class="main_item">
				                  <div class="item_con clearfix">			            
				                    <div class="right_txt">
				                      <a target="_blank" href="http://www.gdzyz.cn/policyLaw/detail.do?pageno=17" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #333;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">·&nbsp;《广东省志愿服务条例》</a>
		
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 <li class="main_item">
				                  <div class="item_con clearfix">
					                  
				                    <div class="right_txt">
				                      <a target="_blank" href="http://www.gdzyz.cn/policyLaw/detail.do?pageno=18" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #333;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">·&nbsp;《广东省青少年保护条例》</a>
				                      
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 <li class="main_item">
				                  <div class="item_con clearfix">			            
				                    <div class="right_txt">
				                      <a target="_blank" href="http://www.gdzyz.cn/policyLaw/detail.do?pageno=28" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #333;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">·&nbsp;《志愿服务条例》</a>
		
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
				                 <li class="main_item">
				                  <div class="item_con clearfix">
					                  
				                    <div class="right_txt">
				                      <a target="_blank" href="http://www.gdzyz.cn/policyLaw/detail.do?pageno=29" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #333;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">·&nbsp;《志愿服务条例》</a>
				                      
				                    </div>
				                  </div>
				                 </li>
				                 <hr/>
              				</ol>
              			</div>
					</div>
				</div>
			</div>
				</div>
				<div class="span5">
				<img alt="排行榜" src="images/crown.png" style="float: left;margin-top: 8px;">
				<h3  style="font-size: 16px;font-weight: bold;margin-top: 12px;padding-left: 4px;">志愿排行</h3>
					<!-- <div class="row-fluid">
						<div class="span6" style="float: left;width: 265px;margin-left: -20px">
							<span style="font-size: 18px;font-weight: bold;float: left;margin-top: 20px;padding-left: 40px;">志愿者</span>
							<span style="font-size: 14px;font-weight: bold;float: left;margin-left: -120px;margin-top: 60px;color: #999">1 化学工程与能源技术学院</span>
							<span style="font-size: 14px;font-weight: bold;float: right;margin-right: 20px;margin-top: 60px;">32123人</span>
							<span style="font-size: 14px;font-weight: bold;float: left;margin-left: -120px;margin-top: 60px;color: #999">1 化学工程与能源技术学院</span>
							<span style="font-size: 14px;font-weight: bold;float: right;margin-right: 20px;margin-top: 60px;">32123人</span>
					 	</div>
						<table style="height:60px;border-color:000000;border-left-style:solid;border-width:1px"><tr><td valign="top"></td></tr></table>						
						 <div class="span6" style="float: right;width: 265px;">
							<span style="font-size: 18px;font-weight: bold;float: right;margin-top: -60px;margin-right: 40px;">志愿服务时长</span>
							<span style="font-size: 14px;font-weight: bold;float: left;margin-left: 10px;margin-top:-20px;color: #999">化学工程与能源技术学院</span>
							<span style="font-size: 14px;font-weight: bold;float: right;margin-right: 0px;margin-top:-20px;">32123小时</span> 
							<span style="font-size: 14px;font-weight: bold;float: left;margin-left: 10px;margin-top:-20px;color: #999">化学工程与能源技术学院</span>
							<span style="font-size: 14px;font-weight: bold;float: right;margin-right: 0px;margin-top:-20px;">32123小时</span> 
							
						</div>
						
					</div> -->
				</div>
			</div>
		
		
		
	</div>
	
</div>
<div style="background: #e9573f;margin: 0 auto;height:70px;margin-top: 20px;">
	<div class="inner_box" style="margin: 0 auto;text-align: center;font-size: 16px;font-weight: bold;margin-top: 16px;">
		<p class="inner_box_p" style="padding-top: 16px;">© Copyright 2015,idgut</p>
		<p class="inner_box_p">Powered by miao, Theme idgut Created by gdzyz.cn</p>
	</div>
</div>
<!-- <script type="text/javascript">
$("#menu .a").click(function(){
	$("#menu .a").removeClass("active");
	$(this).addClass("active");
});
</script> -->
</body>
</html>