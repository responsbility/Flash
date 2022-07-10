<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jsapi.js"></script>
<script type="text/javascript" src="js/format+zh_CN,default,corechart.I.js"></script>		
<script type="text/javascript" src="js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ba-resize.min.js"></script>

<script type="text/javascript">
		gvChartInit();
		jQuery(document).ready(function(){

		jQuery('#myTable5').gvChart({
				chartType: 'PieChart',
				gvSettings: {
					vAxis: {title: 'No of players'},
					hAxis: {title: 'Month'},
					width: 650,
					height: 250
					}
			});
		});
		</script>
</head>
<body>
	
	<%
		UserService us = new UserService();
		BookService bs = new BookService();
		DefaultService ds = new DefaultService();
	%>
	
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">工作台</a></li>
    </ul>
    </div>
    
    
    <div class="mainbox">
    
    <div class="mainleft">
    
    
    <div class="leftinfo">
    <div class="listtitle">数据统计</div>
        
    <div class="maintj">  
    <table id='myTable5'>
				<caption>uimaker.com players count</caption>
				<thead>
					<tr>
						<th></th>
						<th>Jan</th>
						<th>Feb</th>
						<th>Mar</th>
						<th>Apr</th>
						<th>May</th>
						<th>Jun</th>
						<th>Jul</th>
						<th>Aug</th>
						<th>Sep</th>
						<th>Oct</th>
						<th>Nov</th>
						<th>Dec</th>
					</tr>
				</thead>
					<tbody>
					<tr>
						<th>2010</th>
						<td>125</td>
						<td>185</td>
						<td>327</td>
						<td>359</td>
						<td>376</td>
						<td>398</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
					</tr>
				</tbody>
			</table>  
    </div>
    
    </div>
    <!--leftinfo end-->
    
    
    <div class="leftinfos">
    
   
    <div class="infoleft">
    
    <div class="listtitle"><a href="todo.jsp" class="more1">更多</a>待办事项</div>  
    <%
    	ResultSet rs = ds.SelectAllToDo();
    	int i = 0;
    	while(rs.next()){
    %>
    		<ul class="newlist">
    			<li><a href="#"><%=rs.getString(1) %></a><b><%=rs.getString(2) %></b></li>
    		</ul>
    <%
    		i++;
    		if(i==5){
				break;
			}
    	}
    %>  
    
    </div>
    
    
    <div class="inforight">
    <div class="listtitle">常用工具</div>
    
    <ul class="tooli">
    <li><span><img src="images/d02.png" /></span><p><a href="advice.jsp?id=<%=request.getParameter("uid") %>">意见反馈</a></p></li>
    <li><span><img src="images/d03.png" /></span><p><a href="todo.jsp">待办事项</a></p></li>
    <li><span><img src="images/d01.png" /></span><p><a href="news.jsp">最新信息</a></p></li>
    <li><span><img src="images/d06.png" /></span><p><a href="discount.jsp">最新折扣</a></p></li>
    <li><span><img src="images/d07.png" /></span><p><a href="information.jsp">最新通知</a></p></li>    
    </ul>
    
    </div>
    
    
    </div>
    
    
    </div>
    <!--mainleft end-->
    
    
    <div class="mainright">
    
    
    <div class="dflist">
    <div class="listtitle"><a href="news.jsp" class="more1">更多</a>最新信息</div>    
   <%
    	ResultSet nrs = ds.SelectNews();
    	int j = 0;
    	while(nrs.next()){
    %>
    		<ul class="newlist">
    			 <li><a href="#"><%=nrs.getString(1) %></a></li>
    		</ul>
    <%
    		j++;
    		if(j==6){
				break;
			}
    	}
    %>        
    </div>
    
    <div class="dflist1">
    <div class="listtitle">信息统计</div>    
    <ul class="newlist">
    <li><i>登录次数：</a></i><%=request.getParameter("i") %></li>
    <li><i>商品数目：</a></i><%=bs.getBookNum() %></li>
    <li><i>注册人数：</a></i><%=us.getUserNum() %></li>
    <li><i>工作人员：</a></i><%=us.getAdminNum() %></li>    
    </ul>        
    </div>
    
    </div>
    <!--mainright end-->
    
    
    </div>



</body>
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
</html>
