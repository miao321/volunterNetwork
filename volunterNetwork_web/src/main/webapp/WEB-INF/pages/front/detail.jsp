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
<!-- <link href="css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" /> -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/reset2.css" rel="stylesheet" type="text/css" />
<link href="css/details_common.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style3.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/comment2.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.flexText.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	var $2 = $.noConflict(true);
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.qqFace.js"></script>
 
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
			location.reload();
		 }
	}); 
}
function durationDetail(id){
	window.location.href="durationDetail?id="+id;
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
 -->    <%  
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
                     <%  
					  if(session.getAttribute("userName")==null)
					  {%> 
                    <div class="consult_comment_body">
                    	<form action="#" method="post" id="pinglunform">
                    		<input type="hidden" name="missionId" value="659842">
							<input type="hidden" name="userId" value="">
                    	
	                        <div class="login_register">
	                            <p class="fl askUToLogin">别默默的看，快登录点评一下吧！</p>
	                            <div class="login_Or_register clearfix">
	                               
	                                <a href="login.jsp" class="reg fl">登录</a> 
	                            </div>
	                        </div>
                        </form>
                        <ul class="user_consult_list">
                        	<!-- 暂无评论，静态评论屏蔽 -->
                        </ul>
                     </div>
                  	 <%} %>
                  	 <%  
					  if(session.getAttribute("userName")!=null)
					  {%>                 	 	 
	                    <div class="consult_comment_body">
	                    	<form action="https://www.gdzyz.cn/mission/comment" method="post" id="pinglunform">
	                    		<input type="hidden" name="missionId" value="2244149">
								<input type="hidden" name="userId" value="ff80808149cb51d50149d270cc8b454a">                  	
	                    		<!-- 评论框 预设 -->
		                        <div class="commentAll" style="border: 0px solid #ededed;">
		                        <div class="reviewArea clearfix">
						        <textarea style="width:820px;height: 80px;" id="saytext2" class="content comment-input saytext" placeholder="请输入你想说的&hellip;" onkeyup="keyUP(this)"></textarea>      
						        <a href="javascript:;" class="plBtn" >评论</a>       
		                        </div>
		                        </div>
	                        
	                        </form>
	                        <ul class="user_consult_list">
	                        	<c:forEach items="${commentList}" var="comment" varStatus="status">						    
						    	<div class="comment-show">
						        <div class="comment-show-con clearfix">
						            <div class="comment-show-con-img pull-left"><img src="${pageContext.request.contextPath }/images/headimgboy5.jpg" alt="" style="width: 50px;height: 50px;"></div>
						            <div class="comment-show-con-list pull-left clearfix">
						                <div class="pl-text clearfix">
						                    <a href="#" class="comment-size-name">${comment.studentNo } :</a>
						                    <span class="my-pl-con">&nbsp;${comment.content }</span>
						                </div>
						                <div class="date-dz">
						                    <span class="date-dz-left pull-left comment-time"><fmt:formatDate value="${comment.respTime }" type="both"/></span>
						                    <div class="date-dz-right pull-right comment-pl-block">
						                        <!-- <a href="javascript:;" class="removeBlock">删除</a> -->
						                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left" onclick="commentShow(${comment.id},this)" data-id="${comment.id}">回复</a>
						                        <!-- <span class="pull-left date-dz-line">|</span> -->
						                        <!-- <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">0</i>)</a> -->
						                    </div>
						                </div>
						                <div class="hf-list-con" id="con${comment.id}"></div>
						            </div>
						        </div>
						    </div>					    
						    </c:forEach>		
	      						
	                        </ul>
	                        </div>
	                        <%} %>
                  	
                    
                </div>
            </div>
            <div class="content_one_right fr" >
                <div class="one_right_operation" style="float: right;">
                   
                    <div class="operate_btns clearfix">
                        <a href="javascript:;" class="btn fl like" onclick="addZan(${acti.id})">
                            <i class="btn_bg"></i>
                            <p class="btn_txt">感兴趣</p>
                            <p class="btn_num">${acti.zan }</p>
                        </a>
                        <a href="javascript:;" class="btn fl signup">
                            <i class="btn_bg"></i>
                            <p class="btn_txt">招募人数</p>
                            <p class="btn_num">${acti.zmrs }</p>
                        </a>
                        <a href="javascript:;" class="btn fl attention" onclick="addAttention(${acti.id})">
                            <i class="btn_bg"></i>
                            <p class="btn_txt">关注</p>
                            <p class="btn_num" id="praise">${acti.attention }</p>
                        </a>
                    </div>
                    <div class="operate_btns2 clearfix">
                        <a href="javascript:;" onclick="durationDetail(${acti.id})" class="btn btn1" style="text-align: center;color:#fff;">时长公示</a>                      
                        
                         <c:set var="nowDate" value="<%=System.currentTimeMillis()%>"></c:set> 		       
							<c:if test="${nowDate-acti.endTime.getTime()>0}"> 
					       <button class="btn btn-default" style="width:100px;float:right;background:#999999; " type="button">
								<input type="hidden" id="bao" value="${acti.id }">
								报名截止
						   </button>
						   </c:if>
						   <c:if test="${nowDate-acti.endTime.getTime()<0}"> 
					       <button class="btn btn-warning" onclick="baoming(${acti.id })" style="width:100px;float:right;background: #ff8814;color:#fff;" type="button">
								马上报名
						   </button>
						   </c:if>
                        
                  </div>
                </div>
                </div>
            </div>
        </div>
    </section>	  
</body>
<script type="text/javascript">
<!--textarea限制字数-->
function keyUP(t){
    var len = $(t).val().length;
    if(len > 139){
        $(t).val($(t).val().substring(0,140));
    }
}
<!--点击评论创建评论条-->
$('.commentAll').on('click','.plBtn',function(){
	var obj=this;
    var myDate = new Date();
    //获取当前年
    var year=myDate.getFullYear();
    //获取当前月
    var month=myDate.getMonth()+1;
    //获取当前日
    var date=myDate.getDate();
    var h=myDate.getHours();       //获取当前小时数(0-23)
    var m=myDate.getMinutes();     //获取当前分钟数(0-59)
    if(m<10) m = '0' + m;
    var s=myDate.getSeconds();
    if(s<10) s = '0' + s;
    var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
    //获取输入内容
    var oSize = $('#saytext2').val();
    console.log(oSize);    
    //ajax将评论存到数据库
    $.ajax({			 
		 type : "POST",
		 url : "comment/saveActi",
		 data : {content:oSize},
		 cache : false,
		 async : true,
		 success : function(result) {
			oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="${pageContext.request.contextPath }/images/headimgboy5.jpg" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">${userName} : </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
		    if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
		        $(obj).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
		        $(obj).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
		    }
		    location.reload();
		 },
		 error:function(result){
		        alert("添加数据失败");
		       }
    }); 
   
});
<!--点击回复动态创建回复块-->


function commentShow(id,obj){		
    //获取回复人的名字
    var fhName = $(obj).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
    //回复@
    var fhN = '回复@'+fhName;
    var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl" onclick="addComment('+id+',this)">评论</a></div>';
    //显示回复
    if($(obj).is('.hf-con-block')){
        $(obj).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
        $(obj).removeClass('hf-con-block');
        $(obj).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
        $(obj).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
    }else {
        $(obj).addClass('hf-con-block');
        $(obj).parents('.date-dz-right').siblings('.hf-con').remove();
    }
}
<!--评论回复块创建-->
function addComment(id,obj){
	var oThis = $('#con'+id);
    var myDate = new Date();
    //获取当前年
    var year=myDate.getFullYear();
    //获取当前月
    var month=myDate.getMonth()+1;
    //获取当前日
    var date=myDate.getDate();
    var h=myDate.getHours();       //获取当前小时数(0-23)
    var m=myDate.getMinutes();     //获取当前分钟数(0-59)
    if(m<10) m = '0' + m;
    var s=myDate.getSeconds();
    if(s<10) s = '0' + s;
    var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
    //获取输入内容
    var oHfVal = $('.hf-input').val();   
    var oHfName = $('.comment-size-name').html();
    var oAllVal = '回复@'+oHfName;
    if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){
    }else {
        $.getJSON("${pageContext.request.contextPath }/json/pl.json",function(data){
            var oAt = '';
            var oHf = '';
            $.each(data,function(n,v){
                delete v.hfContent;
                delete v.atName;
                var arr;
                var ohfNameArr;
                if(oHfVal.indexOf("@") == -1){
                    data['atName'] = '';
                    data['hfContent'] = oHfVal;
                }else {
                    arr = oHfVal.split(':');
                    ohfNameArr = arr[0].split('@');
                    data['hfContent'] = arr[1];
                    data['atName'] = ohfNameArr[1];
                }
                if(data.atName == ''){
                    oAt = data.hfContent;
                }else {
                    oAt = '回复<a href="#" class="atName">@'+data.atName+'</a> : '+data.hfContent;
                }
                oHf = data.hfName;
            });
          //ajax将评论存到数据库
            $.ajax({			 
        		 type : "POST",
        		 url : "comment/save",
        		 data : {content:oHfVal,parentId:id},
        		 cache : false,
        		 async : true,
        		 success : function(result) {
        			 var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">${userName} : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"></div> </div></div>';
        	            oThis.html(oHtml);
        				//$('.hf-con').css('display','none');
        				$('.hf-con').remove();
        		 },
        		 error:function(result){
        		        alert("添加数据失败");
        		       }
            }); 	           
			//oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
        });
    }
}
<!--删除评论块-->
$('.commentAll').on('click','.removeBlock',function(){
    var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
    if(oT.siblings('.all-pl-con').length >= 1){
        oT.remove();
    }else {
        $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
        oT.remove();
    }
    $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();
});


</script>
</html>