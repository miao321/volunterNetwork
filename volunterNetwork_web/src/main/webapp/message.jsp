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
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>


</head>
<body>
<div class="container-fluid" style="margin-top: 0px;background: #fff;">
	<div class="row-fluid">
		<div class="span12">
			<div class="tabbable" id="tabs-157696" style="width: 100%; ">
				<ul class="nav nav-tabs" style="font-size: 14px;font-weight: bold;width:270px;margin: 0 auto;">
					<li class="active">
						<a data-toggle="tab" href="#panel-22521">系统消息</a>
					</li>					
					<li>
						<a data-toggle="tab" href="#panel-22523">活动消息</a>
					</li>
					<li>
						<a data-toggle="tab" href="#panel-22524">@我相关</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-22521">
					  <div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
							<div id="message" style="width: 800px;height: auto;margin: 0 auto;">
          					<a style="color: #000;text-decoration: none;">
          						<c:forEach items="${borads}" var="borad" varStatus="status">  
          						<span class="glyphicon glyphicon-volume-up" aria-hidden="true" style="font-size: 24px;margin-left: -36px;"></span>
          						<span style="margin-left: 10px;">志愿者福利</span>
          						<p style="margin-top: 10px;font-size: 16px;font-weight: 600;">
       								${borad.title }      								
          						</p>
          						<p>详情请在主页的信息公告中查看。</p>
          						</c:forEach>
          					</a>
          					</div>
            			</div>
            		  </div>
					</div>					
					<div class="tab-pane" id="panel-22523">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<div id="message" style="width: 800px;height: auto;margin: 0 auto;">
          					<a style="color: #000;">
          						<span class="glyphicon glyphicon-volume-up" aria-hidden="true" style="font-size: 24px;margin-left: -36px;"></span>
          						<span style="margin-left: 10px;">活动消息</span>
          					</a>
          					<c:forEach items="${enrolls}" var="enroll" varStatus="status">
          					<div style="width:600px;margin: 0 auto;">&nbsp;&nbsp;${enroll.remark }</div>
          					</c:forEach>
          					</div>
            			</div>
            		  </div>
					</div>	
					<div class="tab-pane" id="panel-22524">
						<div class="main_content_1 mb_25" style="margin-top: 30px;">
						<div class="content_box">
          					<div id="message" style="width: 800px;height: auto;margin: 0 auto;">
          					<a style="color: #000;">
          						<span class="glyphicon glyphicon-volume-up" aria-hidden="true" style="font-size: 24px;margin-left: -36px;"></span>
          						<span style="margin-left: 10px;">@我相关</span>         						          						
          					</a>
          					<c:forEach items="${opinions}" var="opinion" varStatus="status">         					
          					<div style="width:300px;margin: 0 auto;">${opinion.remark }</div><hr style="margin-top: 0;"/>
          					</c:forEach>
          					</div>
            			</div>
            		  </div>
					</div>						
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>