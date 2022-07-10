<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*,nuc.sw.conn.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改用户</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
</head>
<body>
	
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">修改用户</a></li>
    <li></li>
    </ul>
    </div>
    
    <div class="rightinfo">

	<%
		UserService us = new UserService();
		ResultSet rs = us.SelectOneUser(request.getParameter("id"));
		while(rs.next()){
	%>
		<form action="UpdateUser.jsp?userid=<%=request.getParameter("id") %>" method="post">
    		<div class="formbody">         
  				<div id="tab1" class="tabson">    
    				<ul class="forminfo">
    					<li>
    						<label>姓名<b>*</b></label>
    						<input name="username" type="text" class="dfinput" value="<%=rs.getString(2) %>" style="width:345px;" />
    					</li>
	 					<li>
      						<label>密码<b>*</b></label>
      						<input name="userpassword" type="password" class="dfinput"  value="<%=rs.getString(3) %>" style="width:345px;"/>
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
    		 			<li>
       						<label>用户类型<b>*</b></label>
       							<span style="margin-left: 87px;">
      							<select class="select3" name="usertype">
      								<option>管理员</option>
      								<option>普通用户</option>
      								<option>采购员</option>
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
	
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
	
</body>
</html>