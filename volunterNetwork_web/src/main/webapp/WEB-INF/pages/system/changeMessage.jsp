<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>修改个人信息</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script>
//修改数据
function changeMessage(id){
	 $.ajax({			 
		 type : "POST",
		 url : "user/changeMessage",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#changeMessage').modal('show');
				$("#id").val(result.id);			
				$("#userName").val(result.userName);
				$("#studentNo").val(result.studentNo);
				$("#password").val(result.password);
				$("#inTake").val(result.inTake);
				$("#birthday").val(result.birthday);
				$("#sex").val(result.sex);
				$("#phone").val(result.phone);
				$("#email").val(result.email);
				$("#ancestor").val(result.ancestor);
				$("#politicalStatus").val(result.politicalStatus);
				$("#remark").val(result.remark);
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
function saveUser() {
	var id = document.getElementById("id").value;	
	var userName = document.getElementById("userName").value;
	var studentNo = document.getElementById("studentNo").value;
	var password = document.getElementById("password").value;
	var inTake = document.getElementById("inTake").value;
	var birthday = document.getElementById("birthday").value;
	var sex = document.getElementById("sex").value;
	var phone = document.getElementById("phone").value;
	var email = document.getElementById("email").value;
	var ancestor = document.getElementById("ancestor").value;	
	var politicalStatus = document.getElementById("politicalStatus").value;
	var remark = document.getElementById("remark").value;
	var createBy = document.getElementById("createBy").value;
	var createCollege = document.getElementById("createCollege").value;
	var createTime = document.getElementById("createTime").value;
	var updateBy = document.getElementById("updateBy").value;
	var updateTime = document.getElementById("updateTime").value;
	var state = document.getElementById("state").value;
	var userName1 = /^[\u4e00-\u9fa5]+$/;
    var createBy1 = /^[\u4e00-\u9fa5]+$/;
    var createCollege1 = /^[\u4e00-\u9fa5]+$/;
    var studentNo1 = /^[0-9]*$/ ;
    var password1 = /^[a-zA-Z]\w{5,17}$/;
    var phone1 = /^1\d{10}$/;
    var sex1 = /^['男'|'女']$/ ;
    var state1 = /^[1|0]$/ ;
    if (userName == '') {
		alert("用户名不能为空");
		return false;
	}
    if (!userName1.test(userName)) {
		alert("用户名只能为中文");
		return false;
	}
    if (studentNo == '') {
		alert("学号不能为空");
		return false;
	}
    if (!studentNo1.test(studentNo)) {
		alert("学号只能为数字");
		return false;
	}
    if (password == '') {
		alert("密码不能为空");
		return false;
	}
    if (!password1.test(password)) {
		alert("密码以字母开头，长度在6-18之间，只能包含字符、数字和下划线");
		return false;
	}
    if (inTake == '') {
		alert("入学时间不能为空");
		return false;
	}
    if (!sex1.test(sex)) {
		alert("性别不能为空");
		return false;
	}
    
    if (!phone1.test(phone)) {
		alert("手机号不符合要求！");
		return false;
	}
    if (createBy == '') {
		alert("所属学院不能为空");
		return false;
	}
    if (!createBy1.test(createBy)) {
		alert("学院只能为中文");
		return false;
	}
    if (createCollege == '') {
		alert("所属专业不能为空");
		return false;
	}
    if (!createCollege1.test(createCollege)) {
		alert("专业只能为中文");
		return false;
	}
    if (!state1.test(state)) {
		alert("状态不能为空");
		return false;
	}
	if(state == "启用"){
		state = 1;
	}else{
		state = 0;
	}
	 $.ajax({			 
		 type : "POST",
		 url : "update",    
         dataType : "json",
         data:{id:id,userName:userName,studentNo:studentNo,password:password,inTake:inTake,birthday:birthday,
        	 sex:sex,phone:phone,email:email,ancestor:ancestor,politicalStatus:politicalStatus,remark:remark,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,
        	 state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
</script>
</head>
<body>
<!-- addUser -->
<div class="modal fade" id="changeMessage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改个人信息
				</h4>
			</div>
			<div class="modal-body">
				<!-- <form class="form-inline"> -->
				<form method="post" class="form-horizontal" role="form" >
				<div class="form-group" style="margin-top: 20px;">
					    <label for="inputEmail3" class="col-sm-2 control-label"><span style="padding-right: 8px;color: red;" >*</span>姓名:</label>
					    <div class="col-sm-3">
					      <input type="text" id="userName" name="userName" class="form-control" placeholder="请输入姓名" value="${user.userName }">
					    </div>
					  </div>
					  <div class="form-group">			  	
					    <label for="inputEmail3" class="col-sm-2 control-label"><span style="padding-right: 8px;color: red;" >*</span>学号:</label>
					    <div class="col-sm-3">
					      <input type="text" id="studentNo" name="studentNo" class="form-control" placeholder="请输入学号" value="${user.studentNo }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">用户密码:</label>
					    <div class="col-sm-3">
					      <input type="password" id="password" name="password" class="form-control" placeholder="请输入用户密码" value="${user.password }" readonly="true">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">学院:</label>
					    <div class="col-sm-3">
					      <input type="password" id="college" name="college" class="form-control" placeholder="请输入学院">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">专业:</label>
					    <div class="col-sm-3">
					      <input type="password" id="major" name="major" class="form-control" placeholder="请输入专业">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">入学时间:</label>
					    <div class="col-sm-3">
					      <input type="text" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="inTake2" name="inTake2" class="form-control Wdate" placeholder="请输入入学时间" style="height:34px;" value="${user.inTake }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">出生年月:</label>
					    <div class="col-sm-3">
					      <input type="text" onClick="WdatePicker({dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="birthday2" name="birthday2" class="form-control Wdate" placeholder="请输入出生年月" style="height:34px;">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-3 control-label" id="sex2">性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					      <c:if test="${user.sex == '男' }">
					      <input type="radio" name="sex" value="${user.sex }" checked/> ${user.sex }
					      <input type="radio" name="sex" value="女"/>女
						  </c:if>
						  <c:if test="${user.sex == '女' }">
					      <input type="radio" name="sex" value="男" /> 男
					      <input type="radio" name="sex" value="${user.sex }" checked/>${user.sex }
						  </c:if>
						</label>				      
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">手机号:</label>
					    <div class="col-sm-3">
					      <input type="text" id="phone2" name="phone2" class="form-control" placeholder="请输入手机号">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">邮箱:</label>
					    <div class="col-sm-3">
					      <input type="text" id="email2" name="email2" class="form-control" placeholder="请输入邮箱">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">籍贯:</label>
					    <div class="col-sm-3">
					      <input type="text" id="ancestor2" name="ancestor2" class="form-control" placeholder="请输入籍贯">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">政治面貌:</label>
					    <div class="col-sm-3">
					      <input type="text" id="politicalStatus2" name="politicalStatus2" class="form-control" placeholder="请输入政治面貌">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">备注:</label>
					    <div class="col-sm-3">
					      <input type="text" id="remark2" name="remark2" class="form-control" placeholder="请输入备注">
					    </div>
					  </div>
					
				</form>					
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveMessage()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addUser').modal('hide')});
</script>
</body>
</html> --%>