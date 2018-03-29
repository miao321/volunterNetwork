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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/background.js"></script>
<script type="text/javascript">
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
					$('#seeModule').modal('show');
					$("#parentName1").val(result.parentName);
					$("#moduleName1").val(result.moduleName);
					$("#layerNum1").val(result.layerNum);
					$("#isLeaf1").val(result.isLeaf);
					$("#icon1").val(result.icon);
					$("#cpermission1").val(result.cpermission);
					$("#curl1").val(result.curl);
					$("#ctype1").val(result.ctype);
					$("#belong1").val(result.belong);
					$("#remark1").val(result.remark);
					$("#orderNo1").val(result.orderNo);
					$("#createBy1").val(result.createBy);
					$("#createCollege1").val(result.createCollege);
					$("#createTime1").val(result.createTime);
					$("#updateBy1").val(result.updateBy);
					$("#updateTime1").val(result.updateTime);
					
					
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
function editModule(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editModule').modal('show');
				$("#id").val(result.id);				
				$("#parentName").val(result.parentName);
				$("#moduleName").val(result.moduleName);
				$("#layerNum").val(result.layerNum);
				$("#isLeaf").val(result.isLeaf);
				$("#icon").val(result.icon);
				$("#cpermission").val(result.cpermission);
				$("#curl").val(result.curl);
				$("#ctype").val(result.ctype);
				$("#belong").val(result.belong);
				$("#remark").val(result.remark);
				$("#orderNo").val(result.orderNo);
				$("#createBy").val(result.createBy);
				$("#createCollege").val(result.createCollege);
				$("#createTime").val(result.createTime);
				$("#updateBy").val(result.updateBy);
				$("#updateTime").val(result.updateTime);					
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
function addModule(){
	var parentName = document.getElementById("parentName2").value;
	var moduleName = document.getElementById("moduleName2").value;
	var layerNum = document.getElementById("layerNum2").value;
	var isLeaf = document.getElementById("isLeaf2").value;	
	var icon = document.getElementById("icon2").value;
	var cpermission = document.getElementById("cpermission2").value;
	var curl = document.getElementById("curl2").value;
	var ctype = document.getElementById("ctype2").value;
	var belong = document.getElementById("belong2").value;
	var remark = document.getElementById("remark2").value;
	var orderNo = document.getElementById("orderNo2").value;
	var createBy = document.getElementById("createBy2").value;
	var createCollege = document.getElementById("createCollege2").value;
	var createTime = document.getElementById("createTime2").value;
	var updateBy = document.getElementById("updateBy2").value;
	var updateTime = document.getElementById("updateTime2").value;
    var state = $('#state2 input[name="radio"]:checked ').val(); 
	 $.ajax({			 
		 type : "POST",
		 url : "saveOrUpdate",           
         dataType : "json",
         data:{parentName:parentName,moduleName:moduleName,layerNum:layerNum,isLeaf:isLeaf,icon:icon,
        	 cpermission:cpermission,curl:curl,ctype:ctype,belong:belong,remark:remark,orderNo:orderNo,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {				
			location.reload();
		 }
	}); 
}
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
				<a class="a" href="javascript:void(0);"
						onClick="openurl('addActivity.jsp');" style="color: #fff;">
				<button class="btn btn-info" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加
				</button></a>				
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
</body>
</html>