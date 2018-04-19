<%@ page import="com.xxx.volunterNetwork.domain.*"%>
<%@ page import="com.xxx.volunterNetwork.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico"
	media="screen" />
<link href="css/bootstrap-combined.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid" style="margin-top: 0px; background: #fff;">
		<div class="row-fluid">
			<div class="span12">
				<div class="tabbable" id="tabs-157696" style="width: 100%;">
					<ul class="nav nav-tabs"
						style="font-size: 14px; font-weight: bold; width: 90px; margin: 0 auto;">
						<li class="active"><a data-toggle="tab" href="#panel-22521">我的项目</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="panel-22521">
							<div class="content_left_main"
								style="margin-left: 80px; margin-right: 80px;">
								<ul class="common_main common_main1"
									style="display: block; list-style: none;">
									<c:forEach items="${enrollLists}" var="enroll" varStatus="status">
									<li class="main_item"
										style="background: #fff; padding-bottom: 20px; padding-left: 20px;">
										<div class="item_con clearfix">
											<a target="_blank"
												href="http://dg.izyz.org/article/detail.do?pageno=999993431541"
												class="pic_link"> <img src="${pageContext.request.contextPath }/${enroll.img }"
												id="article_logo999993431541" class="pic"
												style="width: 188px; height: 140px; float: left; margin-top: 20px; marign-left: 120px;">
											</a>
											<div class="right_txt" style="margin-top: 26px;">
												<a target="_blank"
													href="http://dg.izyz.org/article/detail.do?pageno=999993431541"
													class="right_txt_title oneLineOh"
													style="font-size: 16px; font-weight: bold; color: #000; padding-left: 20px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">${enroll.hdName }</a>												
												<p class="right_txt_time"
													style="margin-left: 214px;padding-top: 10px;">归属组织：${enroll.organization }</p>
												<p class="right_txt_time"
													style="margin-left: 214px;">开始时间：<fmt:formatDate value="${enroll.hdTime }" type="date"/></p>
												<p class="right_txt_time"
													style="margin-left: 214px;">项目类别：${enroll.hdType }</p>
												<a style="color: #ff8814"><p class="right_txt_time"
													style="margin-left: 214px;">查看详细>></p></a>
											</div>
										</div>
									</li>
									<hr />
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>