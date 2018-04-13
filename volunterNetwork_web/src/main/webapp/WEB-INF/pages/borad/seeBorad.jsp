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
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/lang/zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.uploadifive.min.js"></script>
<script type="text/javascript">
var editor;
KindEditor.ready(function(K) {
    editor = K.create('textarea[name="content"]', {
    	 allowFileManager : true,
         allowImageUpload:false,
         resizeType : 1,          
         afterBlur: function () { this.sync(); }
    });      
});   
//点击全选
function checkAll(who, obj){
	var curCheckBox = document.getElementsByName(who);
	for(i = 0; i < curCheckBox.length; i++){
		curCheckBox.item(i).checked = obj.checked;
	}
}
//判断是否选择了数据
function isOnlyChecked(){
	 var checkBoxArray = document.getElementsByName('id');
		var count=0;
		for(var index=0; index<checkBoxArray.length; index++) {
			if (checkBoxArray[index].checked) {
				count++;
			}	
		} 
	if(count==1)
		return true;
	else
		return false;
}
//查看单条数据
function toView(){
   	  var checkbox = document.getElementsByName("id");   
      var id ="";  
      for ( var i = 0; i < checkbox.length; i++) {  
          if(checkbox[i].checked){  
              id = id + checkbox[i].value;  
          }  
      }  
	 if(isOnlyChecked()){		 
		 $.ajax({			 
			 type : "POST",
			 url : "findOne",
			 data : {id:id},
			 cache : false,
			 async : true,
			 success : function(result) {
				if (result.state != 0) {
					$('#seeborad').modal('show');
					$("#title1").val(result.title);
					$("#content1").val(result.content);
					alert($("#content1").val(result.content));
					$("#img1").val(result.img);
					alert($("#img1").val(result.img));
					$("#fbman1").val(result.fbman);
					$("#fbtime1").val(result.fbtime);
					$("#fblx1").val(result.fblx);
					if(result.state == 1){
						$("#state1").val("启用");
					}else{
						$("#state1").val("停用");
					}	
				}else{
					alert("该数据是禁用状态无法查看!");
				}
					
			 }}); 
		 
	 }else{
		 alert("请先选择一项并且只能选择一项，再进行操作！");
	 }
}  	
//删除单条数据
function deleteborad(id){
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
//删除多条数据
function deleteborads(){
	 var checkbox = document.getElementsByName("id"); 
     var strIds =[];  
     for ( var i = 0; i < checkbox.length; i++) {  
         if(checkbox[i].checked){  
        	 strIds.push(checkbox[i].value); 
         }  
     }    
	 $.ajax({			 
		 type : "POST",	
         dataType : "json",
		 url : "deleteborads",
		 data : {ids:strIds.toString()},
		 cache : false,
		 async : true,
		 success : function(result) {	
			 for(var i= 0;i<strIds.length;i++){  
				 $("#tr_"+strIds[i]).remove();
		     } 			
		 }
	}); 	
}
//修改数据
function editborad(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editborad').modal('show');
				$("#id").val(result.id);							
				$("#title").val(result.title);
				$("#content").val(result.content);
				alert($("#content").val(result.content));
				$("#img").val(result.img);
				alert($("#img").val(result.img));
				$("#fbman").val(result.fbman);
				$("#fbtime").val(result.fbtime);
				$("#fblx").val(result.fblx);
				if(result.state == 1){
					$("#state").val("启用");
				}else{
					$("#state").val("停用");
				}
			}else{
				alert("该数据是禁用状态无法编辑!");
			}
			
		 }
	}); 	
}
function saveborad() {
	var id = document.getElementById("id").value;
	var title = document.getElementById("title").value;
	var content = document.getElementById("content").value;
	var img = document.getElementById("img").value;
	var fbman = document.getElementById("fbman").value;	
	var fbtime = document.getElementById("fbtime").value;
	var fblx = document.getElementById("fblx").value;
	var state = document.getElementById("state").value;
	if(state == "启用"){
		state = 1;
	}else{
		state = 0;
	}
	 $.ajax({			 
		 type : "POST",
		 url : "update",    
         dataType : "json",
         data:{id:id,title:title,content:content,img:img,fbman:fbman,fbtime:fbtime,
        	fblx:fblx,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
//禁用数据
function disableborad(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableborad",           
         dataType : "json",
         data:{id:id},
		 cache : false,
		 async : true,
		 success : function(data) {				
			 if (data.state != 0) {
				 location.reload();
			}else{
				alert("该数据已经被禁用无需重复操作!");
			}
			 
		 }
	}); 
}
//启用数据
function enableborad(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableborad",           
         dataType : "json",
         data:{id:id},
		 cache : false,
		 async : true,
		 success : function(data) {				
			 if (data.state != 1) {
				 location.reload();
			}else{
				alert("该数据已经被启用无需重复操作!");
			}
		 }
	}); 
}
</script>
</head>
<body>
<form>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">			
				<button  type="button" class="btn btn-info" onclick="toView()" style="margin: 6px 0;">					
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-edit" aria-hidden="true"></span> 查看					
				</button>
				<button class="btn btn-info" onclick="deleteborads()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-trash" aria-hidden="true"></span> 批量删除
				</button>
				<table class="table" id="table">
					<thead>
						<tr>
							<th><input type="checkbox" name="selid"
								onclick="checkAll('id',this)"></th>
							<!-- <th data-checkbox="true"></th> -->
							<th>编号</th>
							<th>标题</th>
							<th>内容</th>	
							<th>发布人</th>
							<th>发布类型</th>	
							<th>发布时间</th>							
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boradLists}" var="b" varStatus="status">
							<tr id="tr_${b.id }">
								<td><input type="checkbox" id="id" name="id" value="${b.id}" /></td>
								<td>${status.index+1}</td>
								<td>${b.title}</td>
								<td style="max-width: 210px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${b.content}</td>
								<td>${b.fbman}</td>	
								<td>${b.fblx}</td>	
								<td>${b.fbtime}</td>									
								<c:if test="${b.state ==1}">
								<td id="sta">启用</td>
								</c:if>
								<c:if test="${b.state ==0}">
								<td id="sta">停用</td>
								</c:if>
								<td>
									<%-- <a onclick="editborad(${b.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a> --%>
									<a onclick="deleteborad(${b.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="禁用" onclick="disableborad(${b.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="启用" onclick="enableborad(${b.id})"></span>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav aria-label="Page navigation"
					style="margin:0 auto;margin-top:-16px;">
				<ul class="pager pagination-lg">
					<c:if test="${pageNumber>0 }">
						<li><a
							href="<c:url value="/borad/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>
					<c:forEach begin="${pageNumber+1 }" end="${pageTotalPages}"
						varStatus="loop">
						<c:set var="active" value="${loop.index==page?'active':''}" />
						<li class="${active}"><a
							href="<c:url value="/borad/findPage?page=${loop.index}"/>">${loop.index}</a>
						</li>
					</c:forEach>
					<li><a
						href="<c:url value="/borad/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
					</li>
				</ul>
				<ul class="pager pagination-lg">
					<li>共${pageTotalElements}条记录 共${pageTotalPages}页
						当前第${pageNumber+1}页</li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
</form>	

<!-- eidtborad -->
<div class="modal fade" id="editborad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					编辑模块信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
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
						   <div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">照片:</label>
						    <div class="col-sm-10">
						      <input type="file" id="img" name="img" class="form-control" placeholder="请输入照片">
						      <div id="fileQueue"></div>
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
						    <label for="inputEmail3" class="col-sm-2 control-label">发布类型:</label>						   
						    <div class="col-sm-10">
						      <input type="text" id="fblx" name="fblx" class="form-control" placeholder="请输入发布类型"">
						    </div>
						  </div>
						 <div class="form-group">
						    <label for="inputEmail3" class="col-sm-4 control-label" id="state" >用户状态:&nbsp;&nbsp;
						    	<input type="radio" name="radio" value="1" style="padding-left: 4px;"/> 启用					    	
							 	<input type="radio" name="radio" value="0"/> 停用
						    </label>
						  </div>
						  
						<!--  <div class="form-group" style="width:180px;height:40px;margin: 0 auto;">				  
							<div class="col-sm-8">
								<button type="button" id="uploadImg" class="btn btn-primary" class="form-control" style="width:100%">添加</button>
							</div>
						</div> -->
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveborad()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seeborad -->
<div class="modal fade" id="seeborad" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					模块信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						 <div class="form-group"  style="margin-top: 16px;">
						    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
						    <div class="col-sm-10">
						      <input type="text" id="title1" name="title1" class="form-control" placeholder="请输入标题">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">内容:</label>
						    <div class="col-sm-10">
						      <textarea name="content1" id="content1" style="width:662px;height:400px;resize: none;"></textarea>
						    </div>
						  </div>
						   <div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">照片:</label>
						    <div class="col-sm-10">
						      <input type="text" id="img1" name="img1" class="form-control" placeholder="请输入照片">
						     
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">发布人:</label>
						    <div class="col-sm-10">
						      <input type="text" id="fbman1" name="fbman1" class="form-control" placeholder="请输入发布人">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">发布时间:</label>						   
						    <div class="col-sm-10">
						      <input type="text" id="fbtime1" name="fbtime1" class="form-control Wdate" placeholder="请输入发布时间" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" style="height:34px;">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="inputEmail3" class="col-sm-2 control-label">发布类型:</label>						   
						    <div class="col-sm-10">
						      <input type="text" id="fblx1" name="fblx1" class="form-control" placeholder="请输入发布类型">
						    </div>
						  </div>
						 <div class="form-group">
					    	<label for="inputEmail3" class="col-sm-2 control-label">用户状态:</label>
						    <div class="col-sm-10">
						    	<input type="text" id="state1" class="form-control" readonly="true"/>
						    </div>					    
					  	</div>
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>