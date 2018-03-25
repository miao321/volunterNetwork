<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet">

<script src="js/jquery-3.2.1.min.js" type="text/javascript"> </script>

<script src="js/keyEvent.js" type="text/javascript"> </script>
<script src="js/bootstrap.min.js"> </script>
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row">
			
				<div class="span12" style="margin-left: 16px;">
					<button class="btn btn-info" data-toggle="modal" data-target="#addRole" style="margin: 6px 0;" type="button">
						<span style="margin: 0px 4px;" class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
					</button>				
					<button class="btn btn-info" onclick="deleteRoles()" style="margin: 6px 0;" type="button">
						<span style="margin: 0px 4px;" class="glyphicon glyphicon-trash" aria-hidden="true"></span> 批量删除
					</button>
				</div>
			
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="images/banner01.jpg" style="width:350px;height: 200px;"/>
						<div class="caption">
							<p>
								 <a class="btn btn-primary" href="#">禁用</a> 
								 <a class="btn btn-primary" href="#">启用</a>
								 <a class="btn btn-primary" href="#">删除</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="images/banner01.jpg" style="width:350px;height: 200px;"/>
						<div class="caption">
							<p>
								 <a class="btn btn-primary" href="#">禁用</a> 
								 <a class="btn btn-primary" href="#">启用</a>
								 <a class="btn btn-primary" href="#">删除</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="images/banner01.jpg" style="width:350px;height: 200px;"/>
						<div class="caption">
							<p>
								 <a class="btn btn-primary" href="#">禁用</a> 
								 <a class="btn btn-primary" href="#">启用</a>
								 <a class="btn btn-primary" href="#">删除</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>