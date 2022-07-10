<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*,nuc.sw.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人中心</title>
<link rel="icon" type="image/x-icon" href="images/personal.ico" />
</head>
<body>
	<%
		String id = request.getParameter("userid");
		String name = request.getParameter("username");
		String password = request.getParameter("userpassword");
		String sex = request.getParameter("sex");
		String city = request.getParameter("city");
		String type = request.getParameter("usertype");
		User u = new User(id, name, password, sex.charAt(0), city, type);
		UserService us = new UserService();
		int rs = us.ModifyUser(u);
		if(rs!=0){
	%>
			<script type="text/javascript">
				window.location="modifyPersonal.jsp?id=<%=request.getParameter("userid") %>";
				alert("修改成功！");
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				window.location="modifyPersonal.jsp?id=<%=request.getParameter("userid") %>";
				alert("修改失败！");
			</script>
	<%
		}
	%>
</body>
</html>