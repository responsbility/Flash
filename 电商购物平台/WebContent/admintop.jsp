<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.*,java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
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
<style>
	.topcenter{
		background:url(images/topbg.gif) repeat-x;
		height:150px;
	}
</style>
</head>

<body onload="startTime()">

     <div class="topleft">
    	<i style="margin-left:50px;font-size: 13px;">
    		<script type="text/javascript">
    			var d = new Date();
    			document.write(d.getFullYear()+"年");
    			document.write(d.getMonth()+1+"月");
    			document.write(d.getDate()+"日");
    		</script>
    	</i>
    	<i id="week" style="font-size: 13px;"></i>
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
		<i id="txt" style="font-size: 13px;"></i>
		<div style="margin-left:70px;margin-top:5px;">
    		<script type="text/javascript">
				var d = new Date();
				var time = d.getHours();
				if(time>=6&&time<8)
				{
					document.write("<b>早上好! 欢迎登录行程系统</b>");
				}
				else if(time>=8&&time<11)
				{
					document.write("<b>上午好! 欢迎登录行程系统</b>");
				}
				else if(time>=11&&time<14)
				{
					document.write("<b>中午好! 欢迎登录行程系统</b>");
				}
				else if(time>=14&&time<19)
				{
					document.write("<b>下午好! 欢迎登录行程系统</b>");
				}
				else
				{
					document.write("<b>晚上好! 欢迎登录行程系统</b>");
				}
			</script>
		</div>	
		<div style="margin-top:5px;width:280px">
			<center>
		<%
			TopService ts = new TopService();
			LocalDate date = LocalDate.now();
			ResultSet rs = ts.getFestival(date.getMonthValue(), date.getDayOfMonth());
			if(rs.next()){
		%>
				<script type="text/javascript">
					document.write("今天是<%=rs.getString(1) %>");
				</script>
		<%
			}else{
		%>
				<script type="text/javascript">
					document.write("今天是很平凡的一天！");
				</script>
		<%
			}
		%>
			</center>
		</div>
    </div>

	<div class="topcenter">
		<center>
			<span style="font-family: 宋体;font-size: 30px;padding-top: 20px;">欢迎登录电商购物平台&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</center>
	</div>
       
    <div class="topright" style="margin-top: -150px;">    
    <ul>
    <li><a href="main.jsp?userid=<%=session.getAttribute("uid") %>&time=<%=request.getParameter("count") %>" target="_parent">切换到普通用户</a></li>
     <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="tophelp.html" target="_parent">帮助</a></li>
    <li><a href="about.html" target="_parent">关于</a></li>
    <li><a href="LoginFrame.jsp" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    	<a href="modifyPersonal.jsp?id=<%=request.getParameter("uid") %>" target="_parent"><span>admin</span></a>
    	<i>消息</i>
    	<b>5</b>
    </div>    
    
    </div>

</body>
</html>
