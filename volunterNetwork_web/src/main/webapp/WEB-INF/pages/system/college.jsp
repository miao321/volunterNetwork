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
					$('#seeCollege').modal('show');
					$("#collegeName1").val(result.collegeName);
					$("#organization1").val(result.organization);
					$("#xjorganization1").val(result.xjorganization);
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
function deleteCollege(id){
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
function deleteColleges(){
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
		 url : "deleteColleges",
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
function editCollege(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editCollege').modal('show');
				$("#id").val(result.id);			
				$("#collegeName").val(result.collegeName);
				$("#organization").val(result.organization);
				$("#xjorganization").val(result.xjorganization);
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
function saveCollege() {
	var id = document.getElementById("id").value;
	var collegeName = document.getElementById("collegeName").value;
	var organization = document.getElementById("organization").value;
	var xjorganization = document.getElementById("xjorganization").value;
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
         data:{id:id,collegeName:collegeName,organization:organization,xjorganization:xjorganization,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
//添加数据
function addCollege(){
	var collegeName = document.getElementById("collegeName2").value;
	var organization = document.getElementById("organization2").value;
	var xjorganization = document.getElementById("xjorganization2").value;
    var state = $('#state2 input[name="radio"]:checked ').val(); 
	 $.ajax({			 
		 type : "POST",
		 url : "saveOrUpdate",           
         dataType : "json",
         data:{collegeName:collegeName,organization:organization,xjorganization:xjorganization,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {				
			location.reload();
		 }
	}); 
}

//禁用数据
function disableCollege(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableCollege",           
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
function enableCollege(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableCollege",           
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
				<button class="btn btn-info" data-toggle="modal" data-target="#addCollege" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
				</button>								
				<button  type="button" class="btn btn-info" onclick="toView()" style="margin: 6px 0;">					
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-edit" aria-hidden="true"></span> 查看					
				</button>
				<button class="btn btn-info" onclick="deleteColleges()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-trash" aria-hidden="true"></span> 批量删除
				</button>
				<table class="table" id="table">
					<thead>
						<tr>
							<th><input type="checkbox" name="selid"
								onclick="checkAll('id',this)"></th>
							<!-- <th data-checkbox="true"></th> -->
							<th>编号</th>
							<th>学院名称</th>
							<th>组织名称</th>
							<th>下属组织</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${collegeLists}" var="c" varStatus="status">
							<tr id="tr_${c.id }">
								<td><input type="checkbox" id="id" name="id" value="${c.id}" /></td>
								<td>${status.index+1}</td>
								<td>${c.collegeName}</td>
								<td>${c.organization}</td>
								<td>${c.xjorganization}</td>
								<c:if test="${c.state ==1}">
								<td id="sta">启用</td>
								</c:if>
								<c:if test="${c.state ==0}">
								<td id="sta">停用</td>
								</c:if>
								<td>
									<a onclick="editCollege(${c.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a>
									<a onclick="deleteCollege(${c.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="禁用" onclick="disableCollege(${c.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="启用" onclick="enableCollege(${c.id})"></span>
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
							href="<c:url value="/college/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>
					<%-- <%
						int currentPage = 1;
						if(${pageTotalPages }>5){
							pageTotalPages = 5;
						}
					%> --%>
					<c:forEach begin="${pageNumber+1 }" end="${pageTotalPages }"
						varStatus="loop">
						<c:set var="active" value="${loop.index==page?'active':''}" />
						<li class="${active}"><a
							href="<c:url value="/college/findPage?page=${loop.index}"/>">${loop.index}</a>
						</li>
					</c:forEach>
					<c:if test="${pageNumber+1 < pageTotalPages }">
					<li><a
						href="<c:url value="/college/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
					</li>
					</c:if>
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
<!-- addCollege -->
<div class="modal fade" id="addCollege" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加组织信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						 <label>学院名字:</label><input type="text" id="collegeName2"/><br/>
						 <label>组织名字:</label><input type="text" id="organization2"/><br/>
						 <label>下属组织:</label><input type="text" id="xjorganization2"/><br/>
						 <label id="state2">学院状态:
						 	<input type="radio" name="radio" value="1"/> 启用
						 	<input type="radio" name="radio" value="0"/> 停用
						 </label> 
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="addCollege()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addCollege').modal('hide')});
</script>

<!-- eidtCollege -->
<div class="modal fade" id="editCollege" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					编辑组织信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						 <input type="hidden" id="id">
						 <label>学院名字:</label><input type="text" id="collegeName"/><br/>
						 <label>组织名字:</label><input type="text" id="organization"/><br/>
						 <label>下属组织:</label><input type="text" id="xjorganization"/><br/>
						 <label>学院状态:</label><input type="text" id="state" readonly="true"/><br/>
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveCollege()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seeCollege -->
<div class="modal fade" id="seeCollege" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					组织信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>					
						 <label>学院名字:</label><input type="text" id="collegeName1" value="${result.collegeName }" style="padding-left: 4px;"/><br/>
						 <label>组织名字:</label><input type="text" id="organization1" value="${result.organization }" style="padding-left: 4px;"/><br/>
						 <label>下属组织:</label><input type="text" id="xjorganization1" value="${result.xjorganization }" style="padding-left: 4px;"/><br/>						 
						 <label>学院状态:</label><input type="text" id="state1" value="${result.state }" style="padding-left: 4px;"/><br/>						
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