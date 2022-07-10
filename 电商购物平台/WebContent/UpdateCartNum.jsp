<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userid = request.getParameter("uid");
		String bid = request.getParameter("id");
		String num = request.getParameter("bnum");
		String price = request.getParameter("bprice");
		PurchaseService ps = new PurchaseService();
		ShoppingCartService scs = new ShoppingCartService();
		if(scs.ModifyCart(bid, userid, num, price)!=0&&ps.Update(bid, num)!=0){
	%>
			<script type="text/javascript">
				alert("修改成功！");
				window.location="ShowCart.jsp?userid=<%=request.getParameter("uid") %>";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("修改失败！");
				window.location="ShowCart.jsp?userid=<%=request.getParameter("uid") %>";
			</script>
	<%
		}
	%>
</body>
</html>