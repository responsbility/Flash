<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>意见反馈</title>
</head>
<body>
	<%
		String userid = request.getParameter("uid");
		String advice = request.getParameter("advice");
		if(advice.equals("")){
	%>
			<script type="text/javascript">
				alert("请填写您的宝贵意见！");
				window.location="advice.jsp?id=<%=request.getParameter("uid") %>";
			</script>
	<%
			return;
		}
		UserService us = new UserService();
		ResultSet rs = us.SelectOneUser(userid);
		if(rs.next()&&us.addAdvice(rs.getString(1), rs.getString(2), advice)!=0){
	%>
			<script type="text/javascript">
				alert("反馈成功！\n暂无回复功能，本站会尽可能采纳您的意见，感谢。");
				window.location="advice.jsp?id=<%=request.getParameter("uid") %>";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("反馈失败！\n请重新尝试填写提交。");
				window.location="advice.jsp?id=<%=request.getParameter("uid") %>";
			</script>
	<%
		}
	%>
</body>
</html>