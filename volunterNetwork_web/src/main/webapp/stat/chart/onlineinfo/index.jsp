<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="Wed, 26 Feb 1997 08:21:57 GMT">
<title>Multiple charts on one page</title>
</head>
<body style="margin:20;padding-top:60;text-align:center;vertical-align:middle;">
<table width="100%" border="0", cellspacing="0" cellpadding="0">
<tr>
	<td align="center">
		<div style="font-family:微软雅黑;">系统访问压力图</div>
	</td>
</tr>	
<tr>
	<td align="center">
	<!-- saved from url=(0013)about:internet -->
	<!-- amline script-->
	  <script type="text/javascript" src="${pageContext.request.contextPath}/components/chart/amline_1.6.4.1/amline/swfobject.js"></script>
		<!-- this id must be unique! -->
	  <div id="flashcontent1">
			<strong>You need to upgrade your Flash Player</strong>
		</div>
	
		<script type="text/javascript">
			// <![CDATA[		
			var so = new SWFObject("${pageContext.request.contextPath}/components/chart/amline_1.6.4.1/amline/amline.swf", "amline1", "800", "300", "8", "#FFFFFF");
			so.addVariable("path", "${pageContext.request.contextPath}/components/chart/amline_1.6.4.1/amline/");
			so.addVariable("settings_file", encodeURIComponent("${pageContext.request.contextPath}/stat/chart/onlineinfo/amline_settings.xml"));
			so.addVariable("data_file", encodeURIComponent("${pageContext.request.contextPath}/stat/chart/onlineinfo/data.xml"));		
			so.write("flashcontent1");  // this id must match the div id above
			// ]]>
		</script>
	<!-- end of amline script -->
	</td>
</tr>
</table>
</body>
</html>
