<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="Wed, 26 Feb 1997 08:21:57 GMT">
<title>Pie & Donut chart</title>
</head>

<body style="text-align:center;vertical-align:middle;">
<div style="margin-top:-20px;">
<!-- ampie script-->
  <script type="text/javascript" src="${pageContext.request.contextPath}/components/chart/ampie_1.6.4.1/ampie/swfobject.js"></script>
	<div id="flashcontent" style="margin-top: 40px;">
		<strong>You need to upgrade your Flash Player</strong>
	</div>

	<script type="text/javascript">
		// <![CDATA[		
		var so = new SWFObject("${pageContext.request.contextPath}/components/chart/ampie_1.6.4.1/ampie/ampie.swf", "ampie", "860", "500", "8", "#FFFFFF");
		so.addVariable("path", "${pageContext.request.contextPath}/components/chart/ampie_1.6.4.1/ampie/");
		so.addVariable("settings_file", encodeURIComponent("${pageContext.request.contextPath}/stat/chart/factorysale/ampie_settings.xml"));                // you can set two or more different settings files here (separated by commas)
		so.addVariable("data_file", encodeURIComponent("${pageContext.request.contextPath}/stat/chart/factorysale/data.xml"));
    		
//	so.addVariable("chart_data", encodeURIComponent("<settings>...</settings>"));                   // you can pass chart data as a string directly from this file
//	so.addVariable("chart_settings", encodeURIComponent("data in CSV or XML format"));              // you can pass chart settings as a string directly from this file
//	so.addVariable("additional_chart_settings", encodeURIComponent("<settings>...</settings>"));    // you can append some chart settings to the loaded ones
//  so.addVariable("loading_settings", "LOADING SETTINGS");                                         // you can set custom "loading settings" text here
//  so.addVariable("loading_data", "LOADING DATA");                                                 // you can set custom "loading data" text here
//  so.addVariable("preloader_color", "#999999");
//  so.addVariable("error_loading_file", "ERROR LOADING FILE");                                     // you can set custom "error loading file" text here
		so.write("flashcontent");
		// ]]>
	</script>
<!-- end of ampie script -->
</div>
</body>
</html>
