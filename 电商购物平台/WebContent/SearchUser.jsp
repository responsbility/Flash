<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查询用户</title>
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
    <li><a href="#">查询用户</a></li>
    <li><a href="findUser.jsp">返回首页</a></li>
    </ul>
   	</div> 
   	<span><a href="findUser.jsp">返回首页</a></span>

	<%
		String username = request.getParameter("username");
		String sex = request.getParameter("sex");
		String type = request.getParameter("usertype");
		if(username.equals("")){
	%>
			<script type="text/javascript">
				alert("输入姓名不能为空，请重新输入！");
				window.location="findUser.jsp";
			</script>
	<%
			return;
		}
		UserService us = new UserService();
		ResultSet rs = us.SearchUser(username, sex, type);
		if(rs.next()){
	%>
			<table class="tablelist">
    			<thead>
    				<tr>
        				<th><input name="" type="checkbox" value="" checked="checked"/></th>
        				<th>用户名<i class="sort"><img src="images/px.gif" /></i></th>
       					<th>姓名</th>
        				<th>密码</th>   
        				<th>性别</th>
        				<th>城市</th>
        				<th>用户类型</th>
        				<th>操作</th>
        		</thead>
        		
        		<tbody>
					<tr>
						<td><input name="" type="checkbox" value="" /></td>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><a href="delUser.jsp?id=<%=rs.getString(1)%>" style="color:red;">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="modifiedUser.jsp?id=<%=rs.getString(1) %>" style="color:red;">修改</a></td>
					</tr>
				</tbody>
			</table>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("查询失败！");
				window.location="findUser.jsp";
			</script>
	<%
		}
	%>
		<script type="text/javascript"> 
     		$("#usual1 ul").idTabs(); 
   		</script>
    	<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
		</script>
</body>
</html>