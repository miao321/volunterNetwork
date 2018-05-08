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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uploadifive.css" />
       
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/lang/zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.uploadifive.min.js"></script>
<script>
    var editor;
    KindEditor.ready(function(K) {
        editor = K.create('textarea[name="content"]', {
        	 allowFileManager : true,
             allowImageUpload:false,
             resizeType : 1,          
             afterBlur: function () { this.sync(); }
        });      
    });    
//添加数据 	
function addOpinion(){
	var userName = "<%=session.getAttribute("userName")%>";
	if ($.isEmptyObject(userName) == false) {
		alert("请先登录！");
		return false;
	}
	var title = document.getElementById("title").value;
	var content = $("#content").val();
	$.ajax({
		type:"POST",
		url:"opinion/saveOrUpdate",
		dataType:"json",
		data:{title:title,content:content},
		cache:false,
		asnyc:true,
		success:function(data){			
		 if(confirm("您的意见反馈成功，请等待管理员回复"))
		 {
			 location.reload();
		 }	
		}
	});
	
} 		
</script>
</head>
<body>

<div class="row" style="align:center;">
	<div style="width:800px;margin-top: 16px;margin-left: 40px;">
		<form action="#"  id="formId" class="form-horizontal" method="post">
		  <div class="form-group"  style="margin-top: 16px;">
		    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
		    <div class="col-sm-10">
		      <input type="text" id="title" name="title" class="form-control" placeholder="请输入标题">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">内容:</label>
		    <div class="col-sm-10">
		      <textarea name="content" id="content" style="width:662px;height:400px;visibility:hidden;display: block;resize: none;"></textarea>
		    </div>
		  </div>			  
		 <div class="form-group" style="width:180px;height:40px;margin: 0 auto;">				  
			<div class="col-sm-8">
				<button type="button" class="btn btn-primary" class="form-control" style="width:100%" onclick="addOpinion()">添加</button>
			</div>
		</div>
		</form>
	</div>
</div>
</body>
</html>