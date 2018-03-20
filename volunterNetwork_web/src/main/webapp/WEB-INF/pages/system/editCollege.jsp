<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>添加学院信息</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
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
				<c:forEach items="${collegeLists}" var="c" varStatus="status">
					<fieldset>
						 <label>学院名字:</label><input type="text" />${c.collegeName}<br/>
						 <label>专业名字:</label><input type="text" />${c.major}<br/>
						 <label>学院排序:</label><input type="text" />${c.state }<br/>
						 <label>学院名字:</label><input type="text" />
						 <span class="help-block">这里填写帮助信息.</span>
						 <label class="checkbox">
						 	<input type="checkbox" /> 勾选同意
						 </label> 
						 <button type="submit" class="btn">提交</button>
					</fieldset>
				</c:forEach>
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
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
$(function () { $('#myModal').modal({
	keyboard: false
})});
</script>

</body>
</html>