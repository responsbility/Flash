<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>按书名查询商品</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>
<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
 </script>
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
</head>
<body>
	
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">按书名查询商品</a></li>
    </ul>
    <span><a href="#" onclick="window.history.back();">返回</a></span>
   	</div> 

	<%
		String name = request.getParameter("bname");
		if(name.equals("")){
	%>
			<script type="text/javascript">
				alert("输入书名不能为空，请重新输入！");
				window.location="findBookName.jsp";
			</script>
	<%
			return;
		}
		BookService bs = new BookService();
		ResultSet rs = bs.SelectBookName(name);
		if(rs.next()){
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
        		
        		<tbody>
					<tr>
						<td><input name="" type="checkbox" value="" /></td>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><a href="BuyBook.jsp?id=<%=rs.getString(1) %>&name=<%=rs.getString(2)%>&author=<%=rs.getString(3) %>&useid=<%=request.getParameter("uid") %>" style="color:red;">购买</a></td>
					</tr>
				</tbody>
			</table>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("查询失败！");
				window.location="findBookName.jsp";
			</script>
	<%
		}
	%>
		<script type="text/javascript"> 
     		$("#usual1 ul").idTabs(); 
   		</script>
    	<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
		</script>
</body>
</html>