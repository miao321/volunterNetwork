<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="Wed, 26 Feb 1997 08:21:57 GMT">
<title>Histogram chart</title>
</head>

<body style="margin:20;padding-top:60;text-align:center;vertical-align:middle;">

<!-- ampie script-->
<script type="text/javascript" src="${pageContext.request.contextPath}/components/chart/amcolumn/swfobject.js"></script>
  <!-- this id must be unique! -->
	<div id="flashcontent" style="margin-top:15px;margin-left:12px;">
		<strong>您需要升级您的Flash播放器</strong>
	</div>
<table width="100%" border="0", cellspacing="0" cellpadding="0">
<tr>
	<td align="center">
	<script type="text/javascript">
		// <![CDATA[		
		var so = new SWFObject("${pageContext.request.contextPath}/components/chart/amcolumn/amcolumn.swf", "amcolumn", "600", "300", "0", "#FFFFFF");
		so.addVariable("path", "${pageContext.request.contextPath}/components/chart/amcolumn/");
		so.addVariable("settings_file", encodeURIComponent("${pageContext.request.contextPath}/stat/chart/productsale/amcolumn_settings.xml"));
		so.addVariable("data_file", encodeURIComponent("${pageContext.request.contextPath}/stat/chart/productsale/data.xml"));
		so.addVariable("preloader_color", "#000000");
		so.write("flashcontent");   // this id must match the div id above
		// ]]>
	</script>
	</td>
</tr>
</table>	

</body>
</html>
