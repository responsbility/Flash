<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="nuc.sw.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>清空购物车</title>
</head>
<body>
	<%
			ShoppingCartService scs = new ShoppingCartService();
			if(scs.DeleteAllCart()!=0){
	%>
				<script type="text/javascript">
					alert("已清空购物车！");
					window.location="adminMain.jsp";
				</script>
	<%
			}else{
	%>
				<script type="text/javascript">
					alert("清空失败！");
					window.location="adminMain.jsp";
				</script>
	<%
			}
	%>
</body>
</html>