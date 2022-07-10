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
		String num = request.getParameter("bnum");
		ShoppingCartService scs = new ShoppingCartService();
		if(scs.DeleteCart(bid, uid)!=0&&scs.Update(bid, num)!=0){
	%>
			<script type="text/javascript">
				alert("移除成功！");
				window.location="ShowCart.jsp?userid=<%=request.getParameter("userid") %>";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("移除失败！");
				window.location="ShowCart.jsp?userid=<%=request.getParameter("userid") %>";
			</script>
	<%
		}
	%>
</body>
</html>