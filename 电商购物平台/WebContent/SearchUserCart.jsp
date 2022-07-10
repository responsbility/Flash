<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>删除用户购物车</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">删除用户购物车</a></li>
    </ul>
    </div>

	<%
		String uid = request.getParameter("userid");
		String uname = request.getParameter("username");
		ShoppingCartService scs = new ShoppingCartService();
		ResultSet rs = scs.SelectUserCart(uid, uname);
	%>
		<div class="rightinfo">
    			<table class="tablelist">
    			<thead>
    			<tr>
        		<th><input name="" type="checkbox" value="" checked="checked"/></th>
        		<th>编号</th>
        		<th>书名</th>
        		<th>作者</th>  
        		<th>类型</th>
        		<th>数量</th>
        		<th>价格</th>
        		<th>操作</th>
        		</tr>
        		</thead>
	<%
		while(rs.next()){
	%>
        		
        		<tbody>
				<tr>
				<td><input name="" type="checkbox" value="" /></td>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><a href="adminDelCart.jsp?id=<%=rs.getString(1)%>&userid=<%=rs.getString(7) %>" style="color:red;">删除</a></td>
				</tr>
				</tbody>
	<%
		}
	%>
			</table>
		</div>
		<center>
    		<form action="adminDelUserCart.jsp?userid=<%=request.getParameter("userid") %>" method="post">
				<input name="" type="submit" class="btn" value="全部删除"/>
			</form>
		</center>
</body>
</html>