<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="nuc.sw.service.*,java.sql.*,java.util.*,org.apache.naming.java.javaURLContextFactory,java.net.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
</head>
<body>

	<%
		request.setCharacterEncoding("GB18030");
		Cookie cookie = null;
		int count = 0;
		String userid = URLEncoder.encode(request.getParameter("id"), "utf-8");
		String userpassword = URLEncoder.encode(request.getParameter("password"), "utf-8");
		String[] checked = request.getParameterValues("remember");
		if(userid.equals("")||userpassword.equals("")){
	%>
			<script type="text/javascript">
				window.location="LoginFrame.jsp";
				alert("账号或密码不能为空，请重新输入");
			</script>
	<%
			return;
		}
		UserService us = new UserService();
		ResultSet rs = us.Login(userid, userpassword);
		if(rs.next()){
			if(rs.getString(6).equals("管理员")){
				cookie = new Cookie("usercookie", userid + "#" + userpassword);
				if(checked!=null){
					cookie.setMaxAge(60*60*24*7);
				}else{
					cookie.setMaxAge(0);
				}
				response.addCookie(cookie);	
				synchronized(application){
					if(application.getAttribute("login")==null){
						count = 1;
					}else{
						count = Integer.parseInt((String)application.getAttribute("login"));
						count++;
					}
					application.setAttribute("login", Integer.toString(count));
				}
	%>
				<jsp:forward page="adminMain.jsp">
					<jsp:param value="<%=rs.getString(1) %>" name="userid"/>
					<jsp:param value="<%=count %>" name="time"/>
				</jsp:forward>
	<%			
			}else if(rs.getString(6).equals("普通用户")||rs.getString(6).equals("管理员")){
				cookie = new Cookie("usercookie", userid + "#" + userpassword);
				if(checked!=null){
					cookie.setMaxAge(60*60*24*7);
				}else{
					cookie.setMaxAge(0);
				}
				response.addCookie(cookie);
				synchronized(application){
					if(application.getAttribute("login")==null){
						count = 1;
					}else{
						count = Integer.parseInt((String)application.getAttribute("login"));
						count++;
					}
					application.setAttribute("login", Integer.toString(count));
				}
	%>
				<jsp:forward page="main.jsp">
					<jsp:param value="<%=rs.getString(1) %>" name="userid"/>
					<jsp:param value="<%=count %>" name="time"/>
				</jsp:forward>
	<%
			}else{
	%>
				<script type="text/javascript">
					window.location="LoginFrame.jsp";
					alert("账号或密码错误，请重新输入\n该用户可能不存在，请注册后登录");
				</script>
	<%
			}
		}else{
	%>
			<script type="text/javascript">
				window.location="LoginFrame.jsp";
				alert("账号或密码错误，请重新输入\n该用户可能不存在，请注册后登录");
			</script>
	<%
		}
	%>
</body>
</html>