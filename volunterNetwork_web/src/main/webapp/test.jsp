<%@ page import="com.xxx.volunterNetwork.domain.*" %>
<%@ page import="com.xxx.volunterNetwork.dao.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<!DOCTYPE html>  
<html>  
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>  
<script>  
var x0 = 100  
var x1 = 0  
var x2 = 0  
var x3 = 0  
var zai = 0  
function countSecond0(){  
  x0 = x0-1;
　 document.haorooms.haoroomsinput0.value=x0;
　 meter0= setTimeout("countSecond0()", 1000);  
//$("#tt0").css("float","right");
//$("#tt0").html("还剩"+x0+"%");  
$("#tt0").css("width",x0+"%");  
//$("tt0").css("color",red);
if(document.haorooms.haoroomsinput0.value==0){  
clearTimeout(meter0);  
}  
}  
</script>  
</head>  
<html>  
<body>    
<form name="haorooms"style="margin:100px;display:none;">  
   <input type="text" name="haoroomsinput0"value="0" size=4 >     
</form>     
<div class="progress" style="width:200px;height:12px;margin-top:100px;border: 1px solid gray">  
  <div id="tt0" class="progress-bar bg-warning" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">          
  </div>
</div>
   还剩 9天 
<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>  
<script src="js/bootstrap.min.js" type="text/javascript"></script>  
<script>  
countSecond0()  

</script>  
</body>   
</html>  