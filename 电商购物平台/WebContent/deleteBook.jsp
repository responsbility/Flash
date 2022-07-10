<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>删除商品</title>
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
    <li><a href="#">删除商品</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
<%
try{
	int pagesize = 3;
	int allcount = 0;
	int pages = 0;
	int currentpage = 0;
	BookService bs = new BookService();
	ResultSet rs = bs.SelectBook();
	rs.last();
	allcount = rs.getRow();
	pages = (allcount % pagesize == 0)?(allcount / pagesize):((allcount / pagesize) + 1);
	String str = request.getParameter("page");
	if(str == null){
		str = "0";
	}else{
		currentpage = Integer.parseInt(str);
	}
	rs.absolute((currentpage-1)*pagesize + 1);
%>
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
	for(int i=1;i<=pagesize;i++){
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
				<td><a href="delBook.jsp?id=<%=rs.getString(1)%>" style="color:red;">删除</a></td>
			</tr>
		</tbody>
<%	
		if(!rs.next()){
			break;
		}
	}
%>
	</table>
	
	<div class="pagin">
	<div class="message">共<i class="blue"><%=allcount %></i>条记录</div>
		<ul class="paginList">
        	<li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
<%
		for(int i=1;i<=pages;i++){
%>
        	<li class="paginItem"><a href="deleteBook.jsp?page=<%=i %>"><%=i %></a></li>
<%	
		}
%>
			<li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
    	</ul>
    </div>
<%
	}catch(Exception e){
			out.print(e);
	}
%>  
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>