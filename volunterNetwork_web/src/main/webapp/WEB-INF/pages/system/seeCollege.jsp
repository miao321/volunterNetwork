<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>学院信息</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table" id="table">
				<thead>
					<tr>
						<th>
							<input type="checkbox" name="selid" onclick="checkAll('id',this)">
						</th>		
						<th>编号</th>
						<th>产品</th>
						<th>交付时间</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>				
					<c:forEach items="${collegeLists}" var="c" varStatus="status" >						
						<tr>
							<td><input type="checkbox" name="id" value="${c.id}"/></td>
							<td>${status.index+1}</td>
							<td>${c.collegeName}</td>
							<td>${c.major}</td>
							<td>${c.state }</td>
							<td>								
								<span style="margin:0 4px;cursor:pointer;" class="glyphicon glyphicon-pencil" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="编辑"></span>
								<span style="margin:0 4px;cursor:pointer;" class="glyphicon glyphicon-trash" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="删除"></span>
								<span style="margin:0 4px;cursor:pointer;" class="glyphicon glyphicon-ban-circle" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="禁用"></span>
								<span style="margin:0 4px;cursor:pointer;" class="glyphicon glyphicon-ok-circle" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="启用"></span>								
							</td>
						</tr>						
					</c:forEach>
				</tbody>
			</table>
<!-- 模态框（Modal） -->
<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加学院信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						 <label>学院名字:</label><input type="text" /><br/>
						 <label>专业名字:</label><input type="text" /><br/>
						 <label>学院排序:</label><input type="text" /><br/>
						 <label>学院名字:</label><input type="text" />
						 <span class="help-block">这里填写帮助信息.</span>
						 <label class="checkbox">
						 	<input type="checkbox" /> 勾选同意
						 </label> 
						 <button type="submit" class="btn">提交</button>
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary">
					保存
				</button>
			</div>
		</div>/.modal-content
	</div>/.modal-dialog
</div>/.modal -->
<h2>模态框（Modal）插件事件</h2>
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
	开始演示模态框
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					模态框（Modal）标题
				</h4>
			</div>
			<div class="modal-body">
				点击关闭按钮检查事件功能。
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">
					关闭
				</button>
				<button type="button" class="btn btn-primary">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#myModal').modal('hide')});
</script>
<script>
   $(function () { $('#myModal').on('hide.bs.modal', function () {
      alert('嘿，我听说您喜欢模态框...');})
   });
</script>

<script>
$(function () { $('#myModal').modal({
	keyboard: false
})});
</script>

</body>
</html>