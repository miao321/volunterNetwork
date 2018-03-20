window.onload=function() {  
	var table = document.getElementsByClassName("table");
    var tbl = document.getElementById("table"); // 先获取table
    var rows = tbl.getElementsByTagName("tr"); // 获取里面的行tr
    for(var i=0;i<rows.length;i++) {  // 遍历里面的行
      
       if(i%2==0){ // 再通过取模来设置每隔3行显示不同的两种颜色
         rows[i].style.backgroundColor="#dff0d8";
       }else{
         rows[i].style.backgroundColor="#fff";
       } 
   }   
}; 

/* 全选*/
function checkAll(who, obj){
	var curCheckBox = document.getElementsByName(who);
	for(i = 0; i < curCheckBox.length; i++){
		curCheckBox.item(i).checked = obj.checked;
	}
}