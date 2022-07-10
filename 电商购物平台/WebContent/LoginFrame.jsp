<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录电商购物平台</title>
<link rel="icon" type="image/x-icon" href="images/login.ico" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 
<script>
function startTime(){
	var today=new Date();
	var h=today.getHours();
	var m=today.getMinutes();
	var s=today.getSeconds();
	m=checkTime(m);
	s=checkTime(s);
	document.getElementById('txt').innerHTML=h+":"+m+":"+s;
	t=setTimeout(function(){startTime()},1000);//每一秒中重新加载startTime()方法 
}
function checkTime(i){// 如果分钟或小时的值小于10，则在其值前加0，比如如果时间是下午3点20分9秒的话，则显示15：20：09   
	if (i<10){
		i="0" + i;
	}
	return i;
}
</script>
</head>

<body style="background-color:#df7611; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;" onload="startTime()">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录电商购物平台</span> 
    <ul>
    	<li style="color:white;">
    		<script type="text/javascript">
    		var d = new Date();
    		document.write(d.getFullYear()+"年");
    		document.write(d.getMonth()+1+"月");
    		document.write(d.getDate()+"日");
    		</script>
    	</li>
    	<li id="week" style="color:white;"></l>
    	<script>
			var d = new Date();
			var day= new Array(7);
			day[0]="星期日";
			day[1]="星期一";
			day[2]="星期二";
			day[3]="星期三";
			day[4]="星期四";
			day[5]="星期五";
			day[6]="星期六";
			document.getElementById("week").innerHTML=day[d.getDay()];
		</script>
		<li id="txt" style="color:white;"></li>
    	<li><a href="loginhelp.html">帮助</a></li>
    	<li><a href="about.html">关于</a></li>
    	<li><a href="#" onclick="window.close()">退出</a></li>
    </ul>    
    </div>
    
    <%
		    Cookie[] cookies = request.getCookies();
		  	String uid = "";
		  	String upsd = "";
		  	String checked = "";
		  	if(cookies!=null){
		  		for(int i = 0;i < cookies.length;i++){
		  			if(cookies[i].getName().equals("usercookie")){
		  				uid = URLDecoder.decode(cookies[i].getValue().split("#")[0]);
		  				upsd = cookies[i].getValue().split("#")[1];
		  				checked = "checked";
		  			}
		  		}
		  	}
	%>
    
    <form action="login.jsp" method="post">
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    
    <ul>
		<li><input name="id" type="text" class="loginuser" value="<%=uid %>" onclick="JavaScript:this.value=''"/></li>
		<li><input name="password" type="password" class="loginpwd" value="<%=upsd %>" onclick="JavaScript:this.value=''"/></li>
    	<li><input name="" type="submit" class="loginbtn" value="登录" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="" type="button" class="loginbtn" value="注册" onclick="window.location='Register.html'" /><label><input name="remember" type="checkbox" value="yes" <%=checked %> />记住我</label></li>
    </ul>
    
    
    </div>
    
    </div>
    
    </form>
    
    <div class="loginbm">版权所有：responsbility</div>
	
    
</body>

</html>
