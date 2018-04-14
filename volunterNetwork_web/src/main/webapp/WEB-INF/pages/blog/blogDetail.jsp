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

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.flexText.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript">
	var $2 = $.noConflict(true);
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.qqFace.js"></script>
 <style type="text/css">
	.box_vo{
		width: 68px;
	    height: 98px;
	    border: 1px solid #e7e7e7;
	    border-radius: 2px;
	    color: #666;
	    -moz-border-radius: 2px;
	    margin-left: 10px;
	    margin-top:-110px;
	    float: right;
	}
	.box_l{
		
		margin-right: 500px;
	}
	.box_m{
		
		margin-right: 420px;
	}
	.box_r{
		
		margin-right: 340px;
	}
	.opion a i{
		width: 68px;
	    height: 48px;
	    background-image: url(images/iconst1.png);
	    color: #666;
	    background-position: center 17px;
	    display: block;
	    background-repeat: no-repeat;
	}
	.opion2 a i{
		width: 68px;
	    height: 48px;
	    background-image: url(images/iconst2.png);
	    color: #666;
	    background-position: center 17px;
	    display: block;
	    background-repeat: no-repeat;
	}
	.opion3 a i{
		width: 68px;
	    height: 48px;
	    background-image: url(images/iconst3.png);
	    color: #666;
	    background-position: center 17px;
	    display: block;
	    background-repeat: no-repeat;
	}
	.opion a em{
		line-height: 20px;
	    display: block;
	    text-align: center;
	    color: #666;
	}
	.opion a strong {
		font-size: 16px;
	    line-height: 24px;
	    font-weight: normal;
	    text-align: center;
	    display: block;
	    color: #333;

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
      <img src="${pageContext.request.contextPath }/images/hand.png" style="float:left;vertical-align: middle;height: 40px;width: 40px;display: inline-block;marign-top:10px;"/>
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
<div class="content_left_main" style="width:1200px;margin-left: 80px;margin-right:80px;">	
	<div class="a">
		<span style="color: #adadad;font-size: 18px;">推荐 &nbsp; /&nbsp; i&nbsp论坛  &nbsp;&nbsp; / &nbsp;${share.title }</span>
	</div>
    <div class="item_con clearfix"  style="background: #fff;margin-top: 4px;">
     	<div>
	     	<a target="_blank" href="http://dg.izyz.org/article/detail.do?pageno=999993431541" class="pic_link">
	        	 <img src="${pageContext.request.contextPath}/images/login.jpg" id="article_logo999993431541" class="pic" style="width:170px;height: 110px;float: left;">
	        </a>
        </div> 
          <div class="right_txt" style="margin-top: 26px;">	           	
            <p class="right_txt_p" style="margin-left:190px;margin-top:-26px;margin-bottom:10px;font-size:14px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${share.author } &nbsp;<span style="color: #adadad;">发布于：<fmt:formatDate value="${share.fbtime }" type="date"/></span></p>		       	
         	 <hr/>
         	<span style="float:left;width:950px;display:block;font-size: 20px;color: #000;padding-left: 20px;">${share.content }441412312313131333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333343222222223333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333</span>
        
         <p class="right_txt_p" style="margin-left:190px;padding-top: 8px;display: block;float: left;">作者：${share.author } &nbsp;<fmt:formatDate value="${share.fbtime }" type="date"/>&nbsp;&nbsp;最后回应：${share.endResp } &nbsp;<fmt:formatDate value="${share.fbtime }" type="date"/></p>
       	 <div style="float: left;display: block;margin-left: -500px;margin-top: 20px;">
       	 <button  type="button" class="btn btn-default" onclick="toView()" style="margin: 26px 0;margin-left: 190px;">					
			<span style="margin: 0px 4px;" class="glyphicon glyphicon-comment" aria-hidden="true" style="color:red;"></span> 回复				
		</button>
		<button class="btn btn-default" onclick="deleteUsers()" style="margin: 26px 0;" type="button">
			<span style="margin: 0px 4px;" class="glyphicon glyphicon-heart-empty" aria-hidden="true" style="color:red;"></span> 喜欢
		</button>
		
		</div>
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
    <div class="comment-show">
        <div class="comment-show-con clearfix">
            <div class="comment-show-con-img pull-left"><img src="${pageContext.request.contextPath }/images/headimgboy5.jpg" alt="" style="width: 50px;height: 50px;"></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name">张三 : </a>
                    <span class="my-pl-con">&nbsp;来啊 造作啊!</span>
                </div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="removeBlock">删除</a>
                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                        <span class="pull-left date-dz-line">|</span>
                        <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>
                    </div>
                </div>
                <div class="hf-list-con"></div>
            </div>
        </div>
    </div>
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
    var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
    console.log(oSize);
    //动态创建评论模块
    oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="images/header-img-comment_03.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">David Beckham : </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
    if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
        $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
        $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
    }
});
<!--点击回复动态创建回复块-->
$('.comment-show').on('click','.pl-hf',function(){
    //获取回复人的名字
    var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
    //回复@
    var fhN = '回复@'+fhName;
    //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
    var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
    //显示回复
    if($(this).is('.hf-con-block')){
        $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
        $(this).removeClass('hf-con-block');
        $('.content').flexText();
        $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
        //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
        //input框自动聚焦
        $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
    }else {
        $(this).addClass('hf-con-block');
        $(this).parents('.date-dz-right').siblings('.hf-con').remove();
    }
});
<!--评论回复块创建-->
$('.comment-show').on('click','.hf-pl',function(){
    var oThis = $(this);
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
    var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
    console.log(oHfVal)
    var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
    var oAllVal = '回复@'+oHfName;
    if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){
    }else {
        $.getJSON("json/pl.json",function(data){
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
            var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
            oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
        });
    }
});
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
})
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
})
<!--下面的是表情js-->
$2(function(){
	$('.emotion').qqFace({
		id : 'facebox', 
		assign:'saytext', 
		path:'${pageContext.request.contextPath }/arclist/'	//表情存放的路径
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
	str = str.replace(/\[em_([0-9]*)\]/g,'<img src="${pageContext.request.contextPath }/arclist/$1.gif" border="0" />');
	return str;
} 
</script>

</html>