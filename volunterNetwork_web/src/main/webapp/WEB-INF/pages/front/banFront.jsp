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
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uploadifive.css" />
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js" type="text/javascript"> </script>

<script src="${pageContext.request.contextPath}/js/keyEvent.js" type="text/javascript"> </script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"> </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.uploadifive.min.js"></script>

<script type="text/javascript">
//添加数据	
$(document).ready(function() {
	var state1 = /^[1|0]$/ ;
	$('#img').uploadifive({
		'uploadScript' : 'img/uploadImg',
		'queueID' : 'fileQueue',
		'auto' : false,
		'multi' : false,
		'buttonText' : '选择图片',
		'fileSizeLimit' : 500
	});
	
	$("#uploadImg").click(function() {
		$('#img').uploadifive({				
			'uploadScript' : 'img/uploadImg',
			'queueID' : 'fileQueue',
			'auto' : false,
			'multi' : false,
			'buttonText' : '选择图片',
			'formData' : {
				'img' : $("#img").val(),
				'state' : $('#state input[name="radio"]:checked ').val()
			},
			'fileSizeLimit' : 500
		});
		if (!state1.test($('#state input[name="radio"]:checked ').val())) {
			alert("状态不能为空");
			return false;
		}
		$('#img').uploadifive('upload');
	});
});
//禁用数据
function disableImg(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableImg",           
         dataType : "json",
         data:{id:id},
		 cache : false,
		 async : true,
		 success : function(data) {				
			 //$("#sta").val(0);
			 if (data.state != 0) {
				 location.reload();
			}else{
				alert("该数据已经被禁用无需重复操作!");
			}
			 
		 }
	}); 
}
//启用数据
function enableImg(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableImg",           
         dataType : "json",
         data:{id:id},
		 cache : false,
		 async : true,
		 success : function(data) {				
			 //$("#state3").val("启用");
			 if (data.state != 1) {
				 location.reload();
			}else{
				alert("该数据已经被启用无需重复操作!");
			}
		 }
	}); 
}
//删除单条数据
function deleteImg(id){
		 $.ajax({			 
			 type : "POST",
			 url : "delete",
			 data : {id:id},
			 cache : false,
			 async : true,
			 success : function(result) {	
				 $("#tr_"+id).remove();
			 }
		}); 	
}
</script>
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row">			
				<div class="span12" style="margin-left: 16px;">
					<button class="btn btn-info" data-toggle="modal" data-target="#addImg" style="margin: 6px 0;" type="button">
						<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
					</button>				
					
				</div>
				<c:forEach items="${imgLists}" var="img" varStatus="status">		
				<div class="col-md-4">
					<div class="thumbnail">
						<img id="tr_${img.id }" alt="300x200" src="${pageContext.request.contextPath}/${img.img }" style="width:350px;height: 200px;"/>
						<div class="caption">
							<p>
								 <a class="btn btn-primary" href="#" onclick="disableImg(${img.id})">禁用</a> 
								 <a class="btn btn-primary" href="#" onclick="enableImg(${img.id})">启用</a>
								 <a class="btn btn-primary" href="#" onclick="deleteImg(${img.id})">删除</a>
								 <c:if test="${img.state ==1}">
								 <span id="sta" style="font-size: 18px;font-weight: 600;margin-left: 20px;">启用</span>
								 </c:if>
				 				 <c:if test="${img.state ==0}">
								 <span id="sta" style="font-size: 18px;font-weight: 600;margin-left: 20px;">停用</span>
								 </c:if>
							</p>
							
						</div>
					</div>
				</div>
				</c:forEach>				
			</div>
		</div>
	</div>
</div>
<!-- addImg -->
<div class="modal fade" id="addImg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加轮播图
				</h4>
			</div>
			<div class="modal-body">				
				<form action="img/uploadImg"  id="formId" class="form-horizontal" enctype="multipart/form-data" method="post">
				 
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">照片:</label>
				    <div class="col-sm-10">
				      <input type="file" id="img" name="img" class="form-control" placeholder="请输入照片">
				      <div id="fileQueue"></div>
				    </div>
				  </div>				  
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-4 control-label" id="state" >状态:&nbsp;&nbsp;
				    	<input type="radio" name="radio" value="1" style="padding-left: 4px;"/> 启用					    	
					 	<input type="radio" name="radio" value="0"/> 停用
				    </label>
				  </div>			 
				 <div class="form-group" style="width:180px;height:40px;margin: 0 auto;">				  
						<div class="col-sm-8">
							<button type="button" id="uploadImg" class="btn btn-primary" class="form-control" style="width:100%">添加</button>
						</div>
					</div>
				</form>	
			</div>
			
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addImg').modal('hide')});
</script>
</body>
</html>