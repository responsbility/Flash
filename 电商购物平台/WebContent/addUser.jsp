<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*,nuc.sw.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
</head>
<body>
	<%
		String id = request.getParameter("userid");
		String name = request.getParameter("username");
		String password = request.getParameter("userpassword");
		String sex = request.getParameter("sex");
		String city = request.getParameter("city");
		String type = request.getParameter("usertype");
		if(id.equals("")||password.equals("")||name.equals("")){
	%>
			<script type="text/javascript">
				alert("信息填写不全，请重新输入！");
				window.location="register.html";
			</script>
	<%
			return;
		}
		User u = new User(id, name, password, sex.charAt(0), city, "普通用户");
		UserService us = new UserService();
		int rs = us.addUser(u);
		if(rs!=0){
	%>
			<script type="text/javascript">
				alert("注册成功！");
				window.location="register.html";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("注册失败！");
			</script>
	<%
		}
	%>
</body>
</html>