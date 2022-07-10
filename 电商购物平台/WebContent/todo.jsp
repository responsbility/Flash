<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>待办事项</title>
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
    <li><a href="#">工作台</a></li>
    <li><a href="#">待办事项</a></li>
    </ul>
    <span><a href="#" onclick="window.history.back();">返回</a></span>
    </div>

	<%
try{
	int pagesize = 8;
	int allcount = 0;
	int pages = 0;
	int currentpage = 0;
	DefaultService ds = new DefaultService();
	ResultSet rs = ds.SelectAllToDo();
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
	for(int i=1;i<=pagesize;i++){
%>
		<ul class="newlist">
    		<li><a href="#"><%=rs.getString(1) %></a><b><%=rs.getString(2) %></b></li>
    	</ul>   
<%	
		if(!rs.next()){
			break;
		}
	}
%>
	
	<div class="pagin">
		<div class="message">共<i class="blue"><%=allcount %></i>条记录</div>
		<ul class="paginList">
        	<li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
<%
		for(int i=1;i<=pages;i++){
%>
        	<li class="paginItem"><a href="todo.jsp?page=<%=i %>"><%=i %></a></li>
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
	
	<script type="text/javascript">
	setWidth();
	$(window).resize(function(){
		setWidth();	
	});
	function setWidth(){
		var width = ($('.leftinfos').width()-12)/2;
		$('.infoleft,.inforight').width(width);
	}
</script>
</body>
</html>