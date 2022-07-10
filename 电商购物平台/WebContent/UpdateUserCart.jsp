<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改用户购物车</title>
</head>
<body>
	<%
		String uid = request.getParameter("userid");
		String bid = request.getParameter("id");
		String price = request.getParameter("bprice");
		ShoppingCartService scs = new ShoppingCartService();
		if(scs.ModifyCartPrice(bid, uid, price)!=0){
	%>
			<script type="text/javascript">
				alert("修改成功！");
				window.location="modifyUserCart.jsp";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("修改失败！");
				window.location="modifyUserCart.jsp";
			</script>
	<%
		}
	%>
</body>
</html>