<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
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
					$('#seeModule').modal('show');
					$("#parentName1").val(result.parentName);
					$("#moduleName1").val(result.moduleName);
					$("#layerNum1").val(result.layerNum);
					$("#isLeaf1").val(result.isLeaf);
					$("#icon1").val(result.icon);
					$("#cpermission1").val(result.cpermission);
					$("#curl1").val(result.curl);
					$("#ctype1").val(result.ctype);
					$("#belong1").val(result.belong);
					$("#remark1").val(result.remark);
					$("#orderNo1").val(result.orderNo);
					$("#createBy1").val(result.createBy);
					$("#createCollege1").val(result.createCollege);
					$("#createTime1").val(result.createTime);
					$("#updateBy1").val(result.updateBy);
					$("#updateTime1").val(result.updateTime);
					
					
					if(result.state == 1){
						$("#state1").val("启用");
					}else{
						$("#state1").val("停用");
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
function deleteModule(id){
		 $.ajax({			 
			 type : "POST",
			 url : "delete",
			 data : {id:id},
			 cache : false,
			 async : true,
			 success : function(result) {	
				 $("#tr_"+id).remove();
			 }
		}); 	
}
//删除多条数据
function deleteModules(){
	 var checkbox = document.getElementsByName("id"); 
     var strIds =[];  
     for ( var i = 0; i < checkbox.length; i++) {  
         if(checkbox[i].checked){  
        	 strIds.push(checkbox[i].value); 
         }  
     }    
	 $.ajax({			 
		 type : "POST",	
         dataType : "json",
		 url : "deleteModules",
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
//修改数据
function editModule(id){
	 $.ajax({			 
		 type : "POST",
		 url : "findOne",
		 data : {id:id},
		 cache : false,
		 async : true,
		 success : function(result) {
			if (result.state !== 0) {
				$('#editModule').modal('show');
				$("#id").val(result.id);				
				$("#parentName").val(result.parentName);
				$("#moduleName").val(result.moduleName);
				$("#layerNum").val(result.layerNum);
				$("#isLeaf").val(result.isLeaf);
				$("#icon").val(result.icon);
				$("#cpermission").val(result.cpermission);
				$("#curl").val(result.curl);
				$("#ctype").val(result.ctype);
				$("#belong").val(result.belong);
				$("#remark").val(result.remark);
				$("#orderNo").val(result.orderNo);
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
function saveModule() {
	var id = document.getElementById("id").value;
	var parentName = document.getElementById("parentName").value;
	var moduleName = document.getElementById("moduleName").value;
	var layerNum = document.getElementById("layerNum").value;
	var isLeaf = document.getElementById("isLeaf").value;	
	var icon = document.getElementById("icon").value;
	var cpermission = document.getElementById("cpermission").value;
	var curl = document.getElementById("curl").value;
	var ctype = document.getElementById("ctype").value;
	var belong = document.getElementById("belong").value;
	var remark = document.getElementById("remark").value;
	var orderNo = document.getElementById("orderNo").value;
	var createBy = document.getElementById("createBy").value;
	var createCollege = document.getElementById("createCollege").value;
	var createTime = document.getElementById("createTime").value;
	var updateBy = document.getElementById("updateBy").value;
	var updateTime = document.getElementById("updateTime").value;
	var state = document.getElementById("state").value;
	if(state == "启用"){
		state = 1;
	}else{
		state = 0;
	}
	 $.ajax({			 
		 type : "POST",
		 url : "update",    
         dataType : "json",
         data:{id:id,parentName:parentName,moduleName:moduleName,layerNum:layerNum,isLeaf:isLeaf,icon:icon,
        	 cpermission:cpermission,curl:curl,ctype:ctype,belong:belong,remark:remark,orderNo:orderNo,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {		
			location.reload();
		 }
	}); 
} 
//添加数据
function addModule(){
	var parentName = document.getElementById("parentName2").value;
	var moduleName = document.getElementById("moduleName2").value;
	var layerNum = document.getElementById("layerNum2").value;
	var isLeaf = document.getElementById("isLeaf2").value;	
	var icon = document.getElementById("icon2").value;
	var cpermission = document.getElementById("cpermission2").value;
	var curl = document.getElementById("curl2").value;
	var ctype = document.getElementById("ctype2").value;
	var belong = document.getElementById("belong2").value;
	var remark = document.getElementById("remark2").value;
	var orderNo = document.getElementById("orderNo2").value;
	var createBy = document.getElementById("createBy2").value;
	var createCollege = document.getElementById("createCollege2").value;
	var createTime = document.getElementById("createTime2").value;
	var updateBy = document.getElementById("updateBy2").value;
	var updateTime = document.getElementById("updateTime2").value;
    var state = $('#state2 input[name="radio"]:checked ').val(); 
	 $.ajax({			 
		 type : "POST",
		 url : "saveOrUpdate",           
         dataType : "json",
         data:{parentName:parentName,moduleName:moduleName,layerNum:layerNum,isLeaf:isLeaf,icon:icon,
        	 cpermission:cpermission,curl:curl,ctype:ctype,belong:belong,remark:remark,orderNo:orderNo,
        	 createBy:createBy,createCollege:createCollege,createTime:createTime,updateBy:updateBy,updateTime:updateTime,state:state},
		 cache : false,
		 async : true,
		 success : function(data) {				
			location.reload();
		 }
	}); 
}
//禁用数据
function disableModule(id){
	$.ajax({			 
		 type : "POST",
		 url : "disableModule",           
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
function enableModule(id){
	$.ajax({			 
		 type : "POST",
		 url : "enableModule",           
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
				<button class="btn btn-info" onclick="deleteModules()" style="margin: 6px 0;" type="button">
					<span style="margin: 0px 4px;" class="glyphicon glyphicon-trash" aria-hidden="true"></span> 批量删除
				</button>
				<table class="table" id="table">
					<thead>
						<tr>
							<th><input type="checkbox" name="selid"
								onclick="checkAll('id',this)"></th>
							<!-- <th data-checkbox="true"></th> -->
							<th>编号</th>
							<th>标题</th>
							<th>内容</th>	
							<th>发布人</th>	
							<th>发布时间</th>							
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${moduleLists}" var="module" varStatus="status">
							<tr id="tr_${module.id }">
								<td><input type="checkbox" id="id" name="id" value="${module.id}" /></td>
								<td>${status.index+1}</td>
								<td>${module.belong}</td>
								<td>${module.moduleName}</td>
								<td>${module.moduleName}</td>	
								<td>${module.moduleName}</td>									
								<c:if test="${module.state ==1}">
								<td id="sta">启用</td>
								</c:if>
								<c:if test="${module.state ==0}">
								<td id="sta">停用</td>
								</c:if>
								<td>
									<a onclick="editModule(${module.id})">
										<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-pencil" aria-hidden="true"
											data-toggle="tooltip" data-placement="top" title="编辑" ></span>
									</a>
									<a onclick="deleteModule(${module.id})" id="id"><span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-trash" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="删除" >										
									</span></a>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ban-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="禁用" onclick="disableModule(${module.id})"></span>
									<span style="margin: 0 4px; cursor: pointer;"class="glyphicon glyphicon-ok-circle" aria-hidden="true"
									data-toggle="tooltip" data-placement="top" title="启用" onclick="enableModule(${module.id})"></span>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav aria-label="Page navigation"
					style="margin:0 auto;margin-top:-16px;">
				<ul class="pager pagination-lg">
					<c:if test="${pageNumber>0 }">
						<li><a
							href="<c:url value="/module/findPage?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
					</c:if>
					<c:forEach begin="${pageNumber+1 }" end="${pageTotalPages}"
						varStatus="loop">
						<c:set var="active" value="${loop.index==page?'active':''}" />
						<li class="${active}"><a
							href="<c:url value="/module/findPage?page=${loop.index}"/>">${loop.index}</a>
						</li>
					</c:forEach>
					<li><a
						href="<c:url value="/module/findPage?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
					</li>
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
<!-- addModule -->
<div class="modal fade" id="addModule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加模块信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						 <label>父模块名字:</label><input type="text" id="parentName2"/><br/>
						 <label>模块名字:</label><input type="text" id="moduleName2"/><br/>
						 <label>层数:</label><input type="text" id="layerNum2"/><br/>
						 <label>叶子节点:</label><input type="text" id="isLeaf2"/><br/>
						 <label>图片:</label><input type="text" id="icon2"/><br/>
						 <label>权限:</label><input type="text" id="cpermission2"/><br/>
						 <label>链接地址:</label><input type="text" id="curl2"/><br/>						 
						 <label>类型:</label><input type="text" id="ctype2"/><br/>
						 <label>从属:</label><input type="text" id="belong2"/><br/>
						 <label>备注:</label><input type="text" id="remark2"/><br/>
						 <label>序号:</label><input type="text" id="orderNo2"/><br/>
						 <label>创建者:</label><input type="text" id="createBy2"/><br/>
						 <label>创建者学院:</label><input type="text" id="createCollege2"/><br/>
						 <label>创建时间:</label><input type="text" class="Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="createTime2"/><br/>
						 <label>修改者:</label><input type="text" id="updateBy2"/><br/>
						 <label>修改时间:</label><input type="text" class="Wdate" onClick="WdatePicker({lang:'zh-cn',minDate:new Date(),dateFmt:'yyyy/MM/dd HH:mm:ss'})" id="updateTime2"/><br/>
						 <label id="state2">模块状态:
						 	<input type="radio" name="radio" value="1"/> 启用
						 	<input type="radio" name="radio" value="0"/> 停用
						 </label> 
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="addModule()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
   $(function () { $('#addModule').modal('hide')});
</script>
<!-- eidtModule -->
<div class="modal fade" id="editModule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					编辑模块信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						 <input type="hidden" id="id">
						 <label>父模块名字:</label><input type="text" id="parentName"/><br/>
						 <label>模块名字:</label><input type="text" id="moduleName"/><br/>
						 <label>层数:</label><input type="text" id="layerNum"/><br/>
						 <label>叶子节点:</label><input type="text" id="isLeaf"/><br/>
						 <label>图片:</label><input type="text" id="icon"/><br/>
						 <label>权限:</label><input type="text" id="cpermission"/><br/>
						 <label>链接地址:</label><input type="text" id="curl"/><br/>						 
						 <label>类型:</label><input type="text" id="ctype"/><br/>
						 <label>从属:</label><input type="text" id="belong"/><br/>
						 <label>备注:</label><input type="text" id="remark"/><br/>
						 <label>序号:</label><input type="text" id="orderNo"/><br/>
						 <label>创建者:</label><input type="text" id="createBy"/><br/>
						 <label>创建者学院:</label><input type="text" id="createCollege"/><br/>
						 <label>创建时间:</label><input type="text" id="createTime"/><br/>
						 <label>修改者:</label><input type="text" id="updateBy"/><br/>
						 <label>修改时间	:</label><input type="text" id="updateTime"/><br/>						 					
						 <label>模块状态:</label><input type="text" id="state" readonly="true"/><br/>
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">取消
				</button>
				<button type="button" class="btn btn-primary" onclick="saveModule()">
					保存
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- seeModule -->
<div class="modal fade" id="seeModule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
				</button>
				<h4 class="modal-title" id="myModalLabel">
					模块信息
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline">
					<fieldset>
						 <label>父模块名字:</label><input type="text" id="parentName1" value="${result.parentName }" style="padding-left: 4px;"/><br/>
						 <label>模块名字:</label><input type="text" id="moduleName1" value="${result.moduleName }" style="padding-left: 4px;"/><br/>
						 <label>层数:</label><input type="text" id="layerNum1" value="${result.layerNum }" style="padding-left: 4px;"/><br/>
						 <label>叶子节点:</label><input type="text" id="isLeaf1" value="${result.isLeaf }" style="padding-left: 4px;"/><br/>
						 <label>图片:</label><input type="text" id="icon1" value="${result.icon }" style="padding-left: 4px;"/><br/>
						 <label>权限:</label><input type="text" id="cpermission1" value="${result.cpermission }" style="padding-left: 4px;"/><br/>
						 <label>链接地址:</label><input type="text" id="curl1" value="${result.curl }" style="padding-left: 4px;"/><br/>						 
						 <label>类型:</label><input type="text" id="ctype1" value="${result.ctype }" style="padding-left: 4px;"/><br/>
						 <label>从属:</label><input type="text" id="belong1" value="${result.belong }" style="padding-left: 4px;"/><br/>
						 <label>备注:</label><input type="text" id="remark1" value="${result.remark }" style="padding-left: 4px;"/><br/>
						 <label>序号:</label><input type="text" id="orderNo1" value="${result.orderNo }" style="padding-left: 4px;"/><br/>
						 <label>创建者:</label><input type="text" id="createBy1" value="${result.createBy }" style="padding-left: 4px;"/><br/>
						 <label>创建者学院:</label><input type="text" id="createCollege1" value="${result.createCollege }" style="padding-left: 4px;"/><br/>
						 <label>创建时间:</label><input type="text" id="createTime1" value="${result.createTime }" style="padding-left: 4px;"/><br/>
						 <label>修改者:</label><input type="text" id="updateBy1" value="${result.updateBy }" style="padding-left: 4px;"/><br/>
						 <label>修改时间	:</label><input type="text" id="updateTime1" value="${result.updateTime }" style="padding-left: 4px;"/><br/>						 
						 <label>模块状态:</label><input type="text" id="state1" value="${result.state }" style="padding-left: 4px;"/><br/>						
					</fieldset>
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