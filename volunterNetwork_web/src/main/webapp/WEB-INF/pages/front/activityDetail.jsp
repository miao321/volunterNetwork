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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/lang/zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/background.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.uploadifive.min.js"></script>

<script type="text/javascript">
var editor;
KindEditor.ready(function(K) {
    editor = K.create('textarea[name="content"]', {
        allowFileManager : true,
        allowImageUpload:false,
        resizeType : 1,
        width:"100%",
        height:"400px",
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
					$('#seeActi').modal('show');
					
					$("#title2").val(result.title);
					alert($("#fwyp2").val(result.fwyp));
					$("#content2").val(result.content);
					$("#fwyp2").val(result.fwyp);
					$("#hdjj2").val(result.hdjj);
					$("#xxdz2").val(result.xxdz);
					$("#lxfs2").val(result.lxfs);
					$("#hdsj2").val(result.hdsj);
					$("#img2").val(result.img);
					$("#hdlx2").val(result.hdlx);
					$("#fbzz2").val(result.fbzz);
					$("#fbtime2").val(result.fbtime);
					$("#zmrs2").val(result.zmrs);				
					if(result.state == 1){
						$("#state2").val("启用");
					}else{
						$("#state2").val("停用");
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
function deleteActi(id){
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
function deleteActis(){
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
		 url : "deleteActis",
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
function editActi(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editActi').modal('show');
				$("#id").val(result.id);
				$("#title1").val(result.title);
				alert($("#fwyp1").val(result.fwyp));
				$("#content1").val(result.content);
				$("#fwyp1").val(result.fwyp);
				$("#hdjj1").val(result.hdjj);
				$("#xxdz1").val(result.xxdz);
				$("#lxfs1").val(result.lxfs);
				$("#hdsj1").val(result.hdsj);
				$("#img1").val(result.img);
				$("#hdlx1").val(result.hdlx);
				$("#fbzz1").val(result.fbzz);
				$("#fbtime1").val(result.fbtime);
				$("#zmrs1").val(result.zmrs);				
				if(result.state == 1){
					$("#state1").val("启用");
				}else{
					$("#state1").val("停用");
				}
			}else{
				alert("该数据是禁用状态无法编辑!");
			}
			
		 }
	}); 	
}
function saveModule() {
	var id = document.getElementById("id").value;
	var parentName = document.getElementById("parentName").value;
	var moduleName = document.getElementById("moduleName").value;
	var layerNum = document.getElementById("layerNum").value;
	var isLeaf = document.getElementById("isLeaf").value;	
	var icon = document.getElementById("icon").value;
	var cpermission = document.getElementById("cpermission").value;
	var curl = document.getElementById("curl").value;
	var ctype = document.getElementById("ctype").value;
	var belong = document.getElementById("belong").value;
	var remark = document.getElementById("remark").value;
	var orderNo = document.getElementById("orderNo").value;
	var createBy = document.getElementById("createBy").value;
	var createCollege = document.getElementById("createCollege").value;
	var createTime = document.getElementById("createTime").value;
	var updateBy = document.getElementById("updateBy").value;
	var updateTime = document.getElementById("updateTime").value;
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
         data:{id:id,parentName:parentName,moduleName:moduleName,layerNum:layerNum,isLeaf:isLeaf,icon:icon,
        	 cpermission:cpermission,curl:curl,ctype:ctype,belong:belong,remark:remark,orderNo:orderNo,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
//添加数据
 	
    $(document).ready(function() {
		$('#img').uploadifive({
			'uploadScript' : 'uploadImg',
			'queueID' : 'fileQueue',
			'auto' : false,
			'multi' : false,
			'buttonText' : '选择图片',
			'fileSizeLimit' : 500
		});
		
		$("#uploadImg").click(function() {
			var content = document.getElementById("content").value;
			$('#img').uploadifive({				
				'uploadScript' : 'uploadImg',
				'queueID' : 'fileQueue',
				'auto' : false,
				'multi' : false,
				'buttonText' : '选择图片',
				'formData' : {
					'title' : $("#title").val(),
					'content' : $("#content").val(),
					'fwyp' : $("#fwyq").val(),
					'hdjj' : $("#hdjj").val(),
					'xxdz' : $("#xxdz").val(),
					'lxfs' : $("#lxfs").val(),
					'hdsj' : $("#hdsj").val(),
					'img' : $("#img").val(),
					'hdlx' : $("#hdlx").val(),
					'fbzz' : $("#fbzz").val(),
					'fbtime' : $("#fbtime").val(),
					'zmrs' : $("#zmrs").val(),
					'state' : $('#state input[name="radio"]:checked ').val()
				},
				/* success : function(data) {				
					location.reload();
				}, */
				'fileSizeLimit' : 500
			});
			$('#img').uploadifive('upload');
		});
	});

//禁用数据
function disableActi(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableActi",           
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
function enableActi(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableActi",           
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
</script>
</head>
<body>
<form>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<button class="btn btn-info" data-toggle="modal" data-target="#addActi" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
				</button>			
				<button  type="button" class="btn btn-info" onclick="toView()" style="margin: 6px 0;">					
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-edit" aria-hidden="true"></span> 查看					
				</button>
				<button class="btn btn-info" onclick="deleteActis()" style="margin: 6px 0;" type="button">
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
							<th>服务内容</th>
							<th>发布时间</th>
							<th>发布组织</th>							
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${actiLists}" var="acti" varStatus="status">
							<tr id="tr_${acti.id }">
								<td><input type="checkbox" id="id" name="id" value="${acti.id}" /></td>
								<td>${status.index+1}</td>
								<td>${acti.title}</td>
								<td>${acti.content}</td>
								
								<td>${acti.fbtime}</td>
								<td>${acti.fbzz}</td>								
								<c:if test="${acti.state ==1}">
								<td id="sta">启用</td>
								</c:if>
								<c:if test="${acti.state ==0}">
								<td id="sta">停用</td>
								</c:if>
								<td>
									<a onclick="editActi(${acti.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a>
									<a onclick="deleteActi(${acti.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="禁用" onclick="disableActi(${acti.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="启用" onclick="enableActi(${acti.id})"></span>
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
							href="<c:url value="/acti/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>
					<c:forEach begin="${pageNumber+1 }" end="${pageTotalPages}"
						varStatus="loop">
						<c:set var="active" value="${loop.index==page?'active':''}" />
						<li class="${active}"><a
							href="<c:url value="/acti/findPage?page=${loop.index}"/>">${loop.index}</a>
						</li>
					</c:forEach>
					<li><a
						href="<c:url value="/acti/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
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
<!-- addActi -->
<div class="modal fade" id="addActi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加活动信息
				</h4>
			</div>
			<div class="modal-body">				
				<form action="acti/uploadImg"  id="formId" class="form-horizontal" enctype="multipart/form-data" method="post">
				  <div class="form-group"  style="margin-top: 16px;">
				    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
				    <div class="col-sm-10">
				      <input type="text" id="title" name="title" class="form-control" placeholder="请输入标题">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">服务内容:</label>
				    <div class="col-sm-10">
				      <textarea name="content" id="content" style="width:362px;height:400px;visibility:hidden;display: block;resize: none;"></textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">服务要求:</label>
				    <div class="col-sm-10">
				      <input type="text" id="fwyq" name="fwyq" class="form-control" placeholder="请输入服务要求">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">活动简介:</label>
				    <div class="col-sm-10">
				      <input type="text" id="hdjj" name="hdjj" class="form-control" placeholder="请输入活动简介">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">招募人数:</label>
				    <div class="col-sm-10">
				      <input type="text" id="zmrs" name="zmrs" class="form-control" placeholder="请输入招募人数">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">详细地址:</label>
				    <div class="col-sm-10">
				      <input type="text" id="xxdz" name="xxdz" class="form-control" placeholder="请输入详细地址">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">联系方式:</label>
				    <div class="col-sm-10">
				      <input type="text" id="lxfs" name="lxfs" class="form-control" placeholder="请输入联系方式">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">活动时间:</label>
				    <div class="col-sm-10">
				       <input type="text" id="hdsj" name="hdsj" class="form-control Wdate" placeholder="请输入活动时间" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd'})" style="height:34px;">
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
				    <label for="inputEmail3" class="col-sm-2 control-label">活动类型:</label>
				    <div class="col-sm-10">
				      <input type="text" id="hdlx" name="hdlx" class="form-control" placeholder="请输入活动类型">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">发布组织:</label>
				    <div class="col-sm-10">
				      <input type="text" id="fbzz" name="fbzz" class="form-control" placeholder="请输入发布组织">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">发布时间:</label>
				   
				    <div class="col-sm-10">
				      <input type="text" id="fbtime" name="fbtime" class="form-control Wdate" placeholder="请输入发布时间" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" style="height:34px;">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-4 control-label" id="state" >用户状态:&nbsp;&nbsp;
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
   $(function () { $('#addUser').modal('hide')});
</script>
<!-- editActi -->
<div class="modal fade" id="editActi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					编辑活动信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" enctype="multipart/form-data" method="post">
				  <div class="form-group"  style="margin-top: 16px;">
				    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
				    <div class="col-sm-10">
				      <input type="text" id="title1" name="title1" class="form-control" placeholder="请输入标题">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">服务内容:</label>
				    <div class="col-sm-10">
				      <textarea name="content1" id="content1" style="width:362px;height:400px;visibility:hidden;display: block;resize: none;"></textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">服务要求:</label>
				    <div class="col-sm-10">
				      <input type="text" id="fwyq1" name="fwyq1" class="form-control" placeholder="请输入服务要求">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">活动简介:</label>
				    <div class="col-sm-10">
				      <input type="text" id="hdjj1" name="hdjj1" class="form-control" placeholder="请输入活动简介">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">招募人数:</label>
				    <div class="col-sm-10">
				      <input type="text" id="zmrs1" name="zmrs1" class="form-control" placeholder="请输入招募人数">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">详细地址:</label>
				    <div class="col-sm-10">
				      <input type="text" id="xxdz1" name="xxdz1" class="form-control" placeholder="请输入详细地址">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">联系方式:</label>
				    <div class="col-sm-10">
				      <input type="text" id="lxfs1" name="lxfs1" class="form-control" placeholder="请输入联系方式">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">活动时间:</label>
				    <div class="col-sm-10">
				       <input type="text" id="hdsj1" name="hdsj1" class="form-control Wdate" placeholder="请输入活动时间" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd'})" style="height:34px;">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">照片:</label>
				    <div class="col-sm-10">
				      <input type="file" id="img1" name="img1" class="form-control" placeholder="请输入照片">
				      <div id="fileQueue"></div>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">活动类型:</label>
				    <div class="col-sm-10">
				      <input type="text" id="hdlx1" name="hdlx1" class="form-control" placeholder="请输入活动类型">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">发布组织:</label>
				    <div class="col-sm-10">
				      <input type="text" id="fbzz1" name="fbzz1" class="form-control" placeholder="请输入发布组织">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">发布时间:</label>
				   
				    <div class="col-sm-10">
				      <input type="text" id="fbtime1" name="fbtime1" class="form-control Wdate" placeholder="请输入发布时间" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" style="height:34px;">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-4 control-label" id="state1" >用户状态:&nbsp;&nbsp;
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
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveActi()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seeActi -->
<div class="modal fade" id="seeActi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					活动信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" enctype="multipart/form-data" method="post">
				  <div class="form-group"  style="margin-top: 16px;">
				    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
				    <div class="col-sm-10">
				      <input type="text" id="title2" name="title2" class="form-control" placeholder="请输入标题">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">服务内容:</label>
				    <div class="col-sm-10">
				      <textarea name="content2" id="content2" style="width:362px;height:400px;visibility:hidden;display: block;resize: none;"></textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">服务要求:</label>
				    <div class="col-sm-10">
				      <input type="text" id="fwyq2" name="fwyq2" class="form-control" placeholder="请输入服务要求">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">活动简介:</label>
				    <div class="col-sm-10">
				      <input type="text" id="hdjj2" name="hdjj2" class="form-control" placeholder="请输入活动简介">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">招募人数:</label>
				    <div class="col-sm-10">
				      <input type="text" id="zmrs2" name="zmrs2" class="form-control" placeholder="请输入招募人数">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">详细地址:</label>
				    <div class="col-sm-10">
				      <input type="text" id="xxdz2" name="xxdz2" class="form-control" placeholder="请输入详细地址">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">联系方式:</label>
				    <div class="col-sm-10">
				      <input type="text" id="lxfs2" name="lxfs2" class="form-control" placeholder="请输入联系方式">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">活动时间:</label>
				    <div class="col-sm-10">
				       <input type="text" id="hdsj2" name="hdsj2" class="form-control Wdate" placeholder="请输入活动时间" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd'})" style="height:34px;">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">照片:</label>
				    <div class="col-sm-10">
				      <input type="file" id="img2" name="img2" class="form-control" placeholder="请输入照片">
				      <div id="fileQueue"></div>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">活动类型:</label>
				    <div class="col-sm-10">
				      <input type="text" id="hdlx2" name="hdlx2" class="form-control" placeholder="请输入活动类型">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">发布组织:</label>
				    <div class="col-sm-10">
				      <input type="text" id="fbzz2" name="fbzz2" class="form-control" placeholder="请输入发布组织">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">发布时间:</label>
				   
				    <div class="col-sm-10">
				      <input type="text" id="fbtime2" name="fbtime2" class="form-control Wdate" placeholder="请输入发布时间" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" style="height:34px;">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-4 control-label" id="state2" >用户状态:&nbsp;&nbsp;
				    	<input type="radio" name="radio" value="1" style="padding-left: 4px;"/> 启用					    	
					 	<input type="radio" name="radio" value="0"/> 停用
				    </label>
				  </div>
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