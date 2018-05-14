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
					$('#seeShare').modal('show');
					$("#title1").val(result.title);
					$("#author1").val(result.author);
					$("#content1").val(result.content);
					$("#endResp1").val(result.endResp);
					$("#fbtime1").val(result.fbtime);
					
					if(result.state == 1){
						$("#state1").val("已审核");
					}else{
						$("#state1").val("未审核");
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
function deleteShare(id){
	var flag = confirm("确定删除吗?");
	if (flag) {
		$.ajax({			 
			 type : "POST",
			 url : "delete",
			 data : {id:id},
			 cache : false,
			 async : true,
			 success : function(result) {
				 /* if (result.msg) {
					 alert(result.msg);
				}else{ */
					$("#tr_"+id).remove();
				/* } */
			 }
		}); 	
	}
	 
}
//删除多条数据
function deleteShares(){
	 var checkbox = document.getElementsByName("id"); 
     var strIds =[]; 
     var flag = confirm("确定删除吗?");
     for ( var i = 0; i < checkbox.length; i++) {  
         if(checkbox[i].checked){  
        	 strIds.push(checkbox[i].value); 
         }  
     }   
     if (flag) {
    	 $.ajax({			 
    		 type : "POST",	
             dataType : "json",
    		 url : "deleteShares",
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
	 	
}

//禁用数据
function disableShare(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableShare",           
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
function enableShare(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableShare",           
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
				<button class="btn btn-info" onclick="deleteShares()" style="margin: 6px 0;" type="button">
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
							<th>标题</th>
							<th>内容</th>
							<th>作者</th>
							<th>发布时间</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${shareLists}" var="r" varStatus="status">
							<tr id="tr_${r.id }">
								<td><input type="checkbox" id="id" name="id" value="${r.id}" /></td>
								<td>${status.index+1}</td>
								<td>${r.title}</td>
								<td>${r.content}</td>
								<td>${r.author}</td>
								<td><fmt:formatDate value="${r.fbtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
								<c:if test="${r.state ==1}">
								<td id="sta">已审核</td>
								</c:if>
								<c:if test="${r.state ==0}">
								<td id="sta">未审核</td>
								</c:if>
								<td>
									<a onclick="deleteShare(${r.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="未审核" onclick="disableShare(${r.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="已审核" onclick="enableShare(${r.id})"></span>
								</td>
								<c:if test="${pageNumber+1 > pageTotalPages }">
									该页还没有内容
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav aria-label="Page navigation"
					style="margin:0 auto;margin-top:-16px;">
				<ul class="pager pagination-lg">
					<c:if test="${pageNumber>0 }">
						<li><a
							href="<c:url value="/share/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>		
					<c:if test="${pageNumber-3 >= 1 }">
						<li><a
								href="<c:url value="/share/findPage?page=${pageNumber-3}"/>">${pageNumber-3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-2 >= 1 }">
						<li><a
								href="<c:url value="/share/findPage?page=${pageNumber-2}"/>">${pageNumber-2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber-1 >= 1 }">
						<li><a
								href="<c:url value="/share/findPage?page=${pageNumber-1}"/>">${pageNumber-1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber >= 1 }">
						<li><a
								href="<c:url value="/share/findPage?page=${pageNumber}"/>">${pageNumber}</a>
							</li>
					</c:if>					
					<c:if test="${pageNumber+1 <= pageTotalPages}">
					<c:set var="active" value="${active}" />
						<li class="${active}"><a
								href="<c:url value="/share/findPage?page=${pageNumber+1}"/>">${pageNumber+1}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+2 <= pageTotalPages && !(pageNumber-3 >= 1)}">
						<li><a
								href="<c:url value="/share/findPage?page=${pageNumber+2}"/>">${pageNumber+2}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+3 <= pageTotalPages && !(pageNumber-2 >= 1)}">
						<li><a
								href="<c:url value="/share/findPage?page=${pageNumber+3}"/>">${pageNumber+3}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+4 <= pageTotalPages && !(pageNumber-1 >= 1)}">
						<li><a
								href="<c:url value="/share/findPage?page=${pageNumber+4}"/>">${pageNumber+4}</a>
							</li>
					</c:if>
					<c:if test="${pageNumber+5 <= pageTotalPages && !(pageNumber >= 1)}">
						<li><a
								href="<c:url value="/share/findPage?page=${pageNumber+5}"/>">${pageNumber+5}</a>
							</li>
					</c:if>
					
					<c:if test="${pageNumber+1 < pageTotalPages }">
					<li><a
						href="<c:url value="/share/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
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

<!-- seeCollege -->
<div class="modal fade" id="seeShare" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					帖子信息
				</h4>
			</div>
			<div class="modal-body">
				<form method="post" class="form-horizontal" role="form" >
					<input type="hidden" id="id">
					<div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">标题:</label>
					    <div class="col-sm-10">
					      <input type="text" id="title1" name="title1" class="form-control" placeholder="请输入标题">
					    </div>
					  </div>
					 <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">作者:</label>
					    <div class="col-sm-10">
					      <input type="text" id="author1" name="author1" class="form-control" placeholder="请输入作者">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">内容:</label>
					    <div class="col-sm-10">
					      <input type="text" id="content1" name="content1" class="form-control" placeholder="请输入内容">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">最后回复:</label>
					    <div class="col-sm-10">
					      <input  type="text" id="endResp1" name="endResp1" class="form-control" placeholder="请输入最后回复">
					    </div>
					  </div>
					 
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">发布时间:</label>
					    <div class="col-sm-10">
					      <input type="text" id="fbtime1" name="fbtime1" class="form-control" placeholder="请输入发布时间">
					    </div>
					  </div>
					 
					  
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">帖子状态:</label>
					    <div class="col-sm-10">
					    	<input type="text" id="state1" class="form-control"/>
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