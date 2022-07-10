<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="nuc.sw.service.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除购物车</title>
</head>
<body>
	<%
		String uid = request.getParameter("userid");
		ShoppingCartService scs = new ShoppingCartService();
		if(scs.DeleteUserCart(uid)!=0){
	%>
			<script type="text/javascript">
				alert("下单成功！\n欢迎您再次购物！");
				window.location="ShowCart.jsp?userid=<%=request.getParameter("userid") %>";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("下单失败！");
				window.location="ShowCart.jsp?userid=<%=request.getParameter("userid") %>";
			</script>
	<%
		}
	%>
</body>
</html>