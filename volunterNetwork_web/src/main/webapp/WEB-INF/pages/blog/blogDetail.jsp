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
<title>分享详情页</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style3.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/comment.css">
<link href="${pageContext.request.contextPath }/css/reset.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/forum.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/core.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/style2.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/blogDetail.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/flexText.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript">
	var $2 = $.noConflict(true);
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.qqFace.js"></script>
 
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
<div class="content_left_main" style="width:1200px;margin-left: 80px;margin-right:80px;">	
	<div class="a">
		<span style="color: #adadad;font-size: 18px;">推荐 &nbsp; /&nbsp; i&nbsp论坛  &nbsp;&nbsp; / &nbsp;${share.title }</span>
	</div>
    <div class="item_con clearfix"  style="background: #fff;margin-top: 4px;">
     	<div style="float:left;width: 170px;">
	     	<a target="_blank" href="http://dg.izyz.org/article/detail.do?pageno=999993431541" class="pic_link">
	        	 <img src="${pageContext.request.contextPath}/images/headimgboy7.jpg" id="article_logo999993431541" class="pic" style="width:170px;height: 110px;float: left;">
	        </a>
        </div> 
        <div style="float:left;width:950px;margin-top: 26px;">	           	
            <p class="right_txt_p" style="margin-left:10px;margin-top:-26px;margin-bottom:10px;font-size:14px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${share.author } &nbsp;<span style="color: #adadad;">发布于：<fmt:formatDate value="${share.fbtime }" type="date"/></span></p>		       	
         	 <hr/>
         	<span style="float:left;width:950px;display:block;font-size: 20px;color: #000;padding-left: 20px;">${share.content }</span>        
            <span style="float: left;width:950px;margin-bottom:20px;margin-left:20px;padding-top: 8px;display: block;">作者：${share.author } &nbsp;<fmt:formatDate value="${share.fbtime }" type="date"/>&nbsp;&nbsp;最后回应：${share.endResp } &nbsp;<fmt:formatDate value="${share.fbtime }" type="date"/></span>      	
       </div>     
     </div>		      
	
<div id="show"></div>	
<div class="commentAll" style="width:1011px;background: #fff;margin-left:190px; ">
    <div class="reviewArea clearfix">
        <textarea style="height: 80px;" id="saytext" class="content comment-input saytext" placeholder="请输入你想说的&hellip;" onkeyup="keyUP(this)"></textarea>      
        <span class="emotion" style="margin-top:50px;text-align: center;display: block;float: left;color: #FFFFFF;margin-left: 12px;
        "><img src="${pageContext.request.contextPath }/images/face.png" alt="表情"></span>
        <a href="javascript:;" class="plBtn" style="margin-top: 50px;">评论</a>       
    </div>
  
    <c:forEach items="${commentList}" var="comment" varStatus="status">
    
    <div class="comment-show">
        <div class="comment-show-con clearfix">
            <div class="comment-show-con-img pull-left"><img src="${pageContext.request.contextPath }/images/headimgboy5.jpg" alt="" style="width: 50px;height: 50px;"></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name">${comment.userName }: </a>
                    <span class="my-pl-con">&nbsp;${comment.content }</span>
                </div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time"><fmt:formatDate value="${comment.respTime }" type="both"/></span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <!-- <a href="javascript:;" class="removeBlock">删除</a> -->
                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left" onclick="commentShow(${comment.id},this)" data-id="${comment.id}">回复</a>
                        <span class="pull-left date-dz-line">|</span>
                        <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">0</i>)</a>
                    </div>
                </div>
                <div class="hf-list-con" id="con${comment.id}"></div>
            </div>
        </div>
    </div>
    
    </c:forEach>
</div>	
</div>
	
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
    var oSize = $('.comment-input').val();
    console.log(oSize);    
    //ajax将评论存到数据库
    $.ajax({			 
		 type : "POST",
		 url : "comment/saveOrUpdate",
		 data : {content:oSize},
		 cache : false,
		 async : true,
		 success : function(result) {
			
			oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="${pageContext.request.contextPath }/images/headimgboy5.jpg" alt="" style="width: 50px;height: 50px;"></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">${studentNo} : </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
		    if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
		        $(obj).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
		        $(obj).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
		    }
				
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
<!--点赞-->
$('.comment-show').on('click','.date-dz-z',function(){
    var zNum = $(this).find('.z-num').html();
    if($(this).is('.date-dz-z-click')){
        zNum--;
        $(this).removeClass('date-dz-z-click red');
        $(this).find('.z-num').html(zNum);
        $(this).find('.date-dz-z-click-red').removeClass('red');
    }else {
        zNum++;
        $(this).addClass('date-dz-z-click');
        $(this).find('.z-num').html(zNum);
        $(this).find('.date-dz-z-click-red').addClass('red');
    }
});
<!--下面的是表情js-->
$2(function(){
	$('.emotion').qqFace({
		id : 'facebox', 
		assign:'saytext', 
		path:'${pageContext.request.contextPath}/arclist/'	//表情存放的路径
	});
	$(".plBtn").click(function(){
		var str = $("#saytext").val();
		$("#saytext").html(replace_em(str));
	});
});
//查看结果
function replace_em(str){
	str = str.replace(/\</g,'&lt;');
	str = str.replace(/\>/g,'&gt;');
	str = str.replace(/\n/g,'<br/>');
	str = str.replace(/\[em_([0-9]*)\]/g,'<img src="${pageContext.request.contextPath}/arclist/$1.gif" border="0" />');
	return str;
} 
</script>
</html>