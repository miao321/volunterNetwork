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
					$('#seeEnroll').modal('show');
					$("#userName1").val(result.userName);
					$("#studentNo1").val(result.studentNo);
					$("#college1").val(result.college);
					$("#major1").val(result.major);
					$("#sex1").val(result.sex);
					$("#phone1").val(result.phone);
					$("#idCard1").val(result.idCard);
					$("#organization1").val(result.organization);
					$("#xjorganization1").val(result.xjorganization);
					$("#duration1").val(result.duration);
					$("#img1").val(result.img);	
				}else{
					alert("该数据是禁用状态无法查看!");
				}
					
			 }}); 
		 
	 }else{
		 alert("请先选择一项并且只能选择一项，再进行操作！");
	 }
}  	
//删除单条数据
function deleteEnroll(id){
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
function deleteEnrolls(){
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
		 url : "deleteEnrolls",
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
function editEnroll(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {			 
			if (result.state !== 0) {
				$('#editEnroll').modal('show');
				$("#id").val(result.id);					
				$("#userName").val(result.userName);
				$("#studentNo").val(result.studentNo);
				$("#college").val(result.college);
				$("#major").val(result.major);
				$("#sex").val(result.sex);
				$("#phone").val(result.phone);
				$("#idCard").val(result.idCard);
				$("#organization").val(result.organization);
				$("#xjorganization").val(result.xjorganization);
				$("#duration").val(result.duration);
				$("#img").val(result.img);							
			}else{
				alert("该数据是禁用状态无法编辑!");
			}			
		 }
	}); 	
}
function saveEnroll() {
	var id = document.getElementById("id").value;
	var url = document.getElementById("userName").value;
	var token = document.getElementById("studentNo").value;
	var description = document.getElementById("college").value;
	var description = document.getElementById("major").value;
	var description = document.getElementById("sex").value;
	var description = document.getElementById("phone").value;
	var description = document.getElementById("idCard").value;
	var description = document.getElementById("organization").value;
	var description = document.getElementById("xjorganization").value;
	var description = document.getElementById("duration").value;
	var description = document.getElementById("img").value;
	
	
	 $.ajax({			 
		 type : "POST",
		 url : "update",    
         dataType : "json",
         data:{id:id,userName:userName,studentNo:studentNo,college:college,major:major
        	 ,sex:sex,phone:phone,idCard:idCard,organization:organization,xjorganization:xjorganization
        	 ,duration:duration,img:img},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 

//禁用数据
function disableEnroll(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableEnroll",           
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
function enableEnroll(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableEnroll",           
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
function search(){
	var query = document.getElementById("searchActi").value;	
	window.location.href="findPage?query="+query;
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
				<button class="btn btn-info" onclick="deleteEnrolls()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-trash" aria-hidden="true"></span> 批量删除
				</button>
				<div class="form-search" style="float:right;margin-right: 70px;margin-bottom: 10px;">
					<input class="input-medium search-query" id="searchActi" type="text" placeholder="请输入关键字" style="height: 34px;margin-top: 10px;"/>
					<button type="button" class="btn btn-info" onclick="search()">查找</button>
				</div>
				<table class="table" id="table">
					<thead>
						<tr>
							<th><input type="checkbox" name="selid"
								onclick="checkAll('id',this)"></th>
							<!-- <th data-checkbox="true"></th> -->
							<th>编号</th>
							<th>姓名</th>
							<th>学号</th>
							<th>手机号</th>
							<th>学院</th>
							<th>活动名</th>
							<th>专业</th>
							<th>性别</th>
							<th>是否录用</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${enrollLists}" var="c" varStatus="status">
							<tr id="tr_${c.id }">
								<td><input type="checkbox" id="id" name="id" value="${c.id}" /></td>
								<td>${status.index+1}</td>
								<td>${c.userName}</td>
								<td>${c.studentNo}</td>
								<td>${c.phone}</td>
								<td>${c.college}</td>
								<td>${c.hdName}</td>
								<td>${c.major}</td>
								<td>${c.sex}</td>
								<c:if test="${c.state ==1}">
								<td id="sta">录用</td>
								</c:if>
								<c:if test="${c.state ==0}">
								<td id="sta">未录用</td>
								</c:if>
								<td>
									<a onclick="editEnroll(${c.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a>
									<a onclick="deleteEnroll(${c.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="不录用" onclick="disableEnroll(${c.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="录用" onclick="enableEnroll(${c.id})"></span>
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
							href="<c:url value="/enroll/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>
					<c:forEach begin="${pageNumber+1 }" end="${pageTotalPages }"
						varStatus="loop">
						<c:set var="active" value="${loop.index==page?'active':''}" />
						<li class="${active}"><a
							href="<c:url value="/enroll/findPage?page=${loop.index}"/>">${loop.index}</a>
						</li>
					</c:forEach>
					<li><a
						href="<c:url value="/enroll/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
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
<!-- eidtEnroll -->
<div class="modal fade" id="editEnroll" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加时长
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					<div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">头像:</label>
					    <div class="col-sm-10">
					      <input type="text" id="userName" name="userName" class="form-control" placeholder="请输入头像">
					    </div>
					  </div>
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">姓名:</label>
					    <div class="col-sm-10">
					      <input type="text" id="userName" name="userName" class="form-control" placeholder="请输入姓名">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="studentNo" name="studentNo" class="form-control" placeholder="请输入学号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学院:</label>
					    <div class="col-sm-10">
					      <input type="text" id="college" name="college" class="form-control" placeholder="请输入学院">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">专业:</label>
					    <div class="col-sm-10">
					      <input type="text" id="major" name="major" class="form-control" placeholder="请输入专业">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">性别:</label>
					    <div class="col-sm-10">
					      <input type="text" id="sex" name="sex" class="form-control" placeholder="请输入学院性别">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">手机号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="phone" name="phone" class="form-control" placeholder="请输入手机号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">身份证号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="idCard" name="idCard" class="form-control" placeholder="请输入身份证号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">组织:</label>
					    <div class="col-sm-10">
					      <input type="text" id="organization" name="organization" class="form-control" placeholder="请输入组织">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">下级组织:</label>
					    <div class="col-sm-10">
					      <input type="text" id="xjorganization" name="xjorganization" class="form-control" placeholder="请输入下级组织">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">时长:</label>
					    <div class="col-sm-10">
					      <input type="text" id="duration" name="duration" class="form-control" placeholder="请输入时长">
					    </div>
					  </div>
					  
				</form>
			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveEnroll()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seeEnroll -->
<div class="modal fade" id="seeEnroll" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					报名信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">头像:</label>
					    <div class="col-sm-10">
					      <input type="text" id="img1" name="img1" class="form-control" placeholder="请输入头像">
					    </div>
					  </div>
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">姓名:</label>
					    <div class="col-sm-10">
					      <input type="text" id="userName1" name="userName1" class="form-control" placeholder="请输入姓名">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="studentNo1" name="studentNo1" class="form-control" placeholder="请输入学号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学院:</label>
					    <div class="col-sm-10">
					      <input type="text" id="college1" name="college1" class="form-control" placeholder="请输入学院">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">专业:</label>
					    <div class="col-sm-10">
					      <input type="text" id="major1" name="major1" class="form-control" placeholder="请输入专业">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">性别:</label>
					    <div class="col-sm-10">
					      <input type="text" id="sex1" name="sex1" class="form-control" placeholder="请输入学院性别">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">手机号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="phone1" name="phone1" class="form-control" placeholder="请输入手机号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">身份证号:</label>
					    <div class="col-sm-10">
					      <input type="text" id="idCard1" name="idCard1" class="form-control" placeholder="请输入身份证号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">组织:</label>
					    <div class="col-sm-10">
					      <input type="text" id="organization1" name="organization1" class="form-control" placeholder="请输入组织">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">下级组织:</label>
					    <div class="col-sm-10">
					      <input type="text" id="xjorganization1" name="xjorganization1" class="form-control" placeholder="请输入下级组织">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">时长:</label>
					    <div class="col-sm-10">
					      <input type="text" id="duration1" name="duration1" class="form-control" placeholder="请输入时长">
					    </div>
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