 function startTime(){
        var today=new Date()
        var week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
        var year=today.getFullYear()
        var month=today.getMonth()+1
        var date=today.getDate()
        var day=today.getDay()
        var h=today.getHours()
        var m=today.getMinutes()
        var s=today.getSeconds()
        // add a zero in front of numbers<10
        h=checkTime(h)
        m=checkTime(m)
        s=checkTime(s)
        document.getElementById('time').innerHTML=" "+year+"年"+month+"月"+date+"日  "+week[day]
        t=setTimeout('startTime()',500)
       }
       
function checkTime(i){
   if (i<10)  
     {i="0" + i}
     return i
   }
  