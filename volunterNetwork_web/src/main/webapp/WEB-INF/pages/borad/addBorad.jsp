<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加公告</title>
<link rel="shortcut icon" type="image/x-icon" href="images/logo.ico" media="screen" /> 
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/kindeditor/themes/default/default.css" />
       
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/lang/zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
 <script>
    var editor;
    KindEditor.ready(function(K) {
        editor = K.create('textarea[name="content"]', {
            allowFileManager : true
        });      
    });
</script>
</head>
<body>
<div class="navbar navbar-default navbar-fixed-top" style="background:#272727;color:white">
	<div class="container">
		<div class="row" style="font-size:20px;margin-top:10px;">
			<div class="col-sm-12">
				添加公告
			</div>
		</div>
	</div>
</div>
<div class="row" style="align:center;margin-top: 50px;">
	<div style="width:800px;margin-top: 16px;margin-left: 40px;">
		<form action="AddCourseServlet" method="post" class="form-horizontal" role="form" >
		  <div class="form-group"  style="margin-top: 16px;">
		    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
		    <div class="col-sm-10">
		      <input type="text" id="title" name="title" class="form-control" placeholder="请输入标题">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">内容:</label>
		    <div class="col-sm-10">
		      <textarea name="content" style="width:662px;height:400px;visibility:hidden;display: block;resize: none;"></textarea>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">发布人:</label>
		    <div class="col-sm-10">
		      <input type="text" id="fbman" name="fbman" class="form-control" placeholder="请输入发布人">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">发布时间:</label>
		   
		    <div class="col-sm-10">
		      <input type="text" id="fbtime" name="fbtime" class="form-control Wdate" placeholder="请输入发布时间" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" style="height:34px;">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">显示状态:</label>
		    <div class="col-sm-10">			     
			  <input type="radio" name="fbstate" value="启用" checked>启用
			   <input type="radio" name="fbstate" value="停用">停用
		    </div>
		  </div>
		  
		 <div class="form-group" style="width:180px;height:40px;margin: 0 auto;">
		  
				<div class="col-sm-8">
					<button type="submit" class="btn btn-primary" class="form-control" style="width:100%" >添加</button>
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>