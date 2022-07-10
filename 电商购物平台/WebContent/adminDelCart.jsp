<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>移除商品</title>
</head>
<body>
	<%
		String bid = request.getParameter("id");
		String uid = request.getParameter("userid");
		ShoppingCartService scs = new ShoppingCartService();
		if(scs.DeleteCart(bid, uid)!=0){
	%>
			<script type="text/javascript">
				alert("删除成功！");
				window.location="deleteUserCart.jsp";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("删除失败！");
				window.location="deleteUserCart.jsp";
			</script>
	<%
		}
	%>
</body>
</html>