<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<meta http-equiv="Content-Type"
	content="multipart/form-data; charset=utf-8" />
<head>
<title></title>
<link href="css/forum.css" rel="stylesheet" type="text/css" />
<link href="css/core.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<divstyle="position: relative; margin-left: 10%; height: 30px; margin-top: 50px;"class="col-xs-6">
		<span style="margin-left: 115px; width: 18px; overflow: hidden; height: 30px;">
		<select id="_select" style="width: 240px; margin-left: -115px; height: 30px;" onchange="setRuleContent();">
				<option value="1">请选择....</option>
				<option value="1">11</option>
				<option value="1">22</option>
				<option value="1">33</option>
		</select>
		</span> <input id="_input" type="text" style="width: 220px; position: absolute; left: 0px; height: 24px;" onchange="setRuleContent1();" placeholder="输入">
	</div>
</body>
</html>
