<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看购物车</title>
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
    <li><a href="#">查看购物车</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    	<table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>编号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>书名</th>
        <th>作者</th>   
        <th>价格</th>
        <th>数量</th>
        <th>类型</th>
        <th>操作</th>
        </tr>
        </thead>
        
	<%
		int allcount = 0;
		ShoppingCartService scs = new ShoppingCartService();
		allcount = scs.getRow(request.getParameter("userid"));
		ResultSet rs = scs.SelectOneCart(request.getParameter("userid"));
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
				<td><a href="delCart.jsp?id=<%=rs.getString(1)%>&userid=<%=rs.getString(7) %>&bnum=<%=rs.getString(5) %>" style="color:red;">移除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="modifiedCartNum.jsp?id=<%=rs.getString(1) %>&userid=<%=rs.getString(7) %>" style="color:red;">修改</a></td>
			</tr>
		</tbody>
	<%
		}
	%>
	</table>
		<div class="pagin">
			<div class="message">共<i class="blue"><%=allcount %></i>条记录</div>
		</div>
    </div>
    <center>
    	<form action="delUserCart.jsp?userid=<%=request.getParameter("userid") %>" method="post">
			<input name="" type="submit" class="btn" value="下单"/>
		</form>
	</center>
</body>
</html>