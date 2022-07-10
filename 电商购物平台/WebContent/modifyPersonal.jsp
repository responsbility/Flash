<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
<link rel="icon" type="image/x-icon" href="images/personal.ico" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">个人中心</a></li>
    </ul>
    <span><a href="#" onclick="window.history.back();">返回</a></span>
    </div>


	<div class="rightinfo">
	<%
		String uid = request.getParameter("id");
		UserService us = new UserService();
		ResultSet rs = us.SelectOneUser(uid);
		while(rs.next()){
	%>
			<span style="font-family: 微软雅黑;font-size: 12px;margin-left: 40px;">用户名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(1) %></span>
			<form action="UpdatePersonal.jsp?userid=<%=rs.getString(1) %>&usertype=<%=rs.getString(6) %>" method="post">
				<div class="formbody">         
  					<div id="tab1" class="tabson">    
    					<ul class="forminfo">
    						<li>
    							<label>姓名<b>*</b></label>
    							<input name="username" type="text" class="dfinput" value="<%=rs.getString(2) %>" style="width:345px;" />
    						</li>
    						<li>
    							<label>密码<b>*</b></label>
    							<input name="userpassword" type="password" class="dfinput" value="<%=rs.getString(3) %>" style="width:345px;" />
    						</li>
    						<li>
       							<label>性别<b>*</b></label>
    <%
    							if(rs.getString(4).equals("男")){
    %>
    								<input name="sex" type="radio" value="男" checked="checked" />男&nbsp;&nbsp;&nbsp;&nbsp;
       								<input name="sex" type="radio" value="女" />女</cite>
    <%
    							}else if(rs.getString(4).equals("女")){
    %>
    								<input name="sex" type="radio" value="男" />男&nbsp;&nbsp;&nbsp;&nbsp;
       								<input name="sex" type="radio" value="女" checked="checked" />女</cite>
    <%
    							}
    %>
     						</li>
     						<li>
       							<label>城市<b>*</b></label>
       								<span style="margin-left: 87px;">
      								<select class="select3" name="city">
      									<option>山西</option>
      									<option>山东</option>
      									<option>北京</option>
      									<option>广东</option>
      									<option>广西</option>
      									<option>江苏</option>
      									<option>陕西</option>
      									<option>甘肃</option>
      									<option>河北</option>
      									<option>河南</option>
      									<option>江西</option>
      									<option>安徽</option>
      									<option>湖北</option>
      									<option>湖南</option>
      									<option>四川</option>
      									<option>青海</option>
      									<option>上海</option>
      									<option>天津</option>
      									<option>重庆</option>
      									<option>贵州</option>
      									<option>福建</option>
      									<option>浙江</option>
      									<option>云南</option>
      									<option>西藏</option>
      									<option>宁夏</option>
      									<option>吉林</option>
      									<option>黑龙江</option>
      									<option>辽宁</option>
      									<option>内蒙古</option>
      									<option>海南</option>
      									<option>新疆</option>
      									<option>香港</option>
      									<option>澳门</option>
      									<option>台湾</option>
      								</select>
								</span>
     						</li>
     						<li><label>&nbsp;</label><input name="" type="submit" class="btn" value="修改"/></li>
    					</ul>
    				</div>
    			</div>
			</form>
	<%
		}
	%>
	</div>
</body>
</html>