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
<title>志愿活动详情页</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/index_animation.css" rel="stylesheet" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/blogDetail.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/i.js"></script>
<script type="text/javascript" src="js/crossdomain.js"></script>
<style type="text/css">
select,input[type="file"]{height:30px;*margin-top:4px;line-height:30px;}
select{width:220px;border:1px solid #cccccc;background-color:#ffffff;}
</style>
<script type="text/javascript">
//添加数据
function baoming(id){	
	 $.ajax({			 
		 type : "POST",
		 url : "baoming/saveOrUpdate",           
         dataType : "json",
         data:{id:id},
		 cache : false,
		 async : true,
		 success : function(data) {	
			alert(data.msg);
			//location.reload();
		 },
		 failure:function(data){
			 alert(data);
        	 alert(data.msg);
         }
	}); 
}
function addZan(id){
	$.ajax({
		type:"POST",
		url:"addZan",
		dataType:"json",
		data:{id:id},
		cache:false,
		async:true,
		success:function(data){
			location.reload();
		}
	});
}
function addAttention(id){
	$.ajax({
		type:"POST",
		url:"addAttention",
		dataType:"json",
		data:{id:id},
		cache:false,
		async:true,
		success:function(data){
			location.reload();
		}
	});
}
function searchActi(){
	var query = document.getElementById("searchActi").value;	
	var hdlx = "<%=session.getAttribute("hdlx") %>";
	window.location.href="pageDetail?query="+query;
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
        <%-- <li><a href="${pageContext.request.contextPath}/relative">亲子活动</a></li> --%>
        <li><a href="${pageContext.request.contextPath}/duration">时长公示</a></li>     
        <li><a href="${pageContext.request.contextPath}/blog">i&nbsp;论坛</a></li>
        <li><a href="${pageContext.request.contextPath}/helpCenter">帮助中心</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right" style="font-size: 16px;font-weight: bold;margin-top: 4px;">
        <li><a href="#">莞工<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span></a></li>
<!--         <li><a href="#">分站导航<span class="glyphicon glyphicon-globe" aria-hidden="true"></span></a></li>
 -->        <%  
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
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<!-- <form class="btn_search" style="float: left;">
				<select id="sid1" style="margin-left: 70px;margin-top: 8px;width: 84px;text-align: center;">				  
				  <option value="进行中" selected>进行中</option>
				  <option value="已结束">已结束</option>				 	  
				</select>				
				<select id="sid2" style="margin-left: 10px;margin-top: 8px;width: 84px;text-align: center;">
				  <option value="不限时间" selected >  不限时间</option>
				  <option value="最近一周">最近一周</option>
				  <option value="最近一个月">最近一个月</option>
				  <option value="最近一个季度">最近一个季度</option>			  
				</select>
				<select id="sid3" style="margin-left: 10px;margin-top: 8px;width: 84px;text-align: center;">
				  <option value="不限排序" selected> 不限排序</option>
				  <option value="开始时间先后">开始时间先后</option>
				  <option value="浏览人数最多">浏览人数最多</option>			  
				</select>	
			</form> -->
			<div class="form-search" style="float:right;margin-right: 70px;margin-bottom: 10px;">
				<input class="input-medium search-query" id="searchActi" type="text" placeholder="请输入关键字" style="height: 40px;"/>
				<button type="button" class="btn btn-info" onclick="searchActi()">查找</button>
			</div>
		</div>
	</div>
</div>
<div class="content_left_main" style="margin-left: 80px;margin-right:80px;">
	<ul class="common_main common_main1" style="display: block;">
		<c:forEach items="${actiLists}" var="acti" varStatus="status">
		 <li class="main_item" style="background: #fff;padding-bottom: 20px;padding-left: 20px;">
		     <div class="item_con clearfix">
		      <a target="_blank" href="detail?id=${acti.id}" class="pic_link">
		      <img src="${pageContext.request.contextPath}/${acti.img }" id="article_logo999993431541" class="pic" style="width:170px;height: 110px;float: left;margin-top: 20px;marign-left:120px;">
		      </a>
		       <div class="right_txt" style="margin-top: 26px;">
		         <a target="_blank" href="detail?id=${acti.id}" class="right_txt_title oneLineOh" style="font-size: 16px;font-weight: bold;color: #000;padding-left: 20px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; ">${acti.title }</a>
		         <p class="right_txt_p" style="margin-left: 190px;padding-top: 8px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">地点：${acti.xxdz }</p>
		         <p class="right_txt_time" style="margin-left: 190px;padding-top: 8px;"> 归属组织：${acti.fbzz } </p>
		         <p class="right_txt_time" style="margin-left: 190px;padding-top: 8px;"> 报名截止：<fmt:formatDate value="${acti.endTime }" type="date"/> </p>
		       </div>     
		     </div>
		      <div class="box_vo box_l">
		       	 <p val="592411" class="opion invite"><a href="javascript:;" onclick="addZan(${acti.id})" id="parise789749" style="cursor: pointer;text-decoration: none;"><i></i><em>感兴趣</em><strong class="goodNum">${acti.zan }</strong></a></p>
		       </div>
		       <div class="box_vo box_m">
		       		
		       	 <p val="592411" class="opion opion2 invite"><a href="javascript:;" id="parise789749" style="cursor: pointer;text-decoration: none;"><i></i><em>招募人数</em><strong class="goodNum">${acti.zmrs }</strong></a></p>
		       </div>
		       <div class="box_vo box_r">
		       	 
		       	 <p val="592411" class="opion opion3 invite"><a href="javascript:;" onclick="addAttention(${acti.id})" id="parise789749" style="cursor: pointer;text-decoration: none;"><i></i><em>关注</em><strong class="goodNum">${acti.attention }</strong></a></p>
		       </div>
		       <c:set var="nowDate" value="<%=System.currentTimeMillis()%>"></c:set> 		       
				<c:if test="${nowDate-acti.endTime.getTime()>0}"> 
		       <button class="btn btn-default" style="width:160px;float:right;margin-top: -80px;margin-right:90px;background:#999999; " type="button">
					<input type="hidden" id="bao" value="${acti.id }">
					报名截止
			   </button>
			   </c:if>
			   <c:if test="${nowDate-acti.endTime.getTime()<0}"> 
		       <button class="btn btn-warning" onclick="baoming(${acti.id })" style="width:160px;float:right;margin-top: -80px;margin-right:90px;background: #ff8814;color:#fff;" type="button">				
					马上报名
			   </button>
			   </c:if>
	    </li><hr style="margin-top: 20px;margin-bottom: 0;"/>
	    </c:forEach>
	</ul>
	<nav aria-label="Page navigation"
					style="margin:0 auto;margin-top:-16px;">
				<ul class="pager pagination-lg">
					<c:if test="${pageNumber>0 }">
						<li><a
							href="<c:url value="/pageDetail?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>		
					<c:if test="${pageNumber-3 >= 1 }">
						<li><a
								href="<c:url value="/pageDetail?page=${pageNumber-3}"/>">${pageNumber-3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-2 >= 1 }">
						<li><a
								href="<c:url value="/pageDetail?page=${pageNumber-2}"/>">${pageNumber-2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-1 >= 1 }">
						<li><a
								href="<c:url value="/pageDetail?page=${pageNumber-1}"/>">${pageNumber-1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber >= 1 }">
						<li><a
								href="<c:url value="/pageDetail?page=${pageNumber}"/>">${pageNumber}</a>
							</li>
					</c:if>					
					<c:if test="${pageNumber+1 <= pageTotalPages}">
					<c:set var="active" value="${active}" />
						<li class="${active}"><a
								href="<c:url value="/pageDetail?page=${pageNumber+1}"/>">${pageNumber+1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+2 <= pageTotalPages && !(pageNumber-3 >= 1)}">
						<li><a
								href="<c:url value="/pageDetail?page=${pageNumber+2}"/>">${pageNumber+2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+3 <= pageTotalPages && !(pageNumber-2 >= 1)}">
						<li><a
								href="<c:url value="/pageDetail?page=${pageNumber+3}"/>">${pageNumber+3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+4 <= pageTotalPages && !(pageNumber-1 >= 1)}">
						<li><a
								href="<c:url value="/pageDetail?page=${pageNumber+4}"/>">${pageNumber+4}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+5 <= pageTotalPages && !(pageNumber >= 1)}">
						<li><a
								href="<c:url value="/pageDetail?page=${pageNumber+5}"/>">${pageNumber+5}</a>
							</li>
					</c:if>
					
					<c:if test="${pageNumber+1 < pageTotalPages }">
					<li><a
						href="<c:url value="/pageDetail?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
					</li>
					</c:if>
				</ul>
				<ul class="pager pagination-lg">
					<li>共${pageTotalElements}条记录 共${pageTotalPages}页
						当前第${pageNumber+1}页</li>
				</ul>
				</nav>
</div>

	
</body>
</html>