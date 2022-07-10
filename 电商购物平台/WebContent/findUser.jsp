<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*,nuc.sw.conn.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查询用户</title>
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
    <li><a href="#">查询用户</a></li>
    </ul>
   	</div> 
   	
   	<form action="SearchUser.jsp" method="post">
    	<div class="formbody">
    		<div id="tab2" class="tabson">       
    			<ul class="seachform">    
    				<li><label>姓名</label><input name="username" type="text" class="scinput" /></li> 
    				<li><label>性别</label><input name="sex" type="radio" value="男" checked="checked" />男&nbsp;&nbsp;&nbsp;&nbsp;<input name="sex" type="radio" value="女" />女</li>  
    				<li><label>用户类型</label>
    					<span style="margin-left: 87px;">
    						<select class="select3" name="usertype">
      							<option>管理员</option>
      							<option>普通用户</option>
      							<option>采购员</option>
      						</select>
      					</span>
					</li>  
    				<li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>    
    			</ul> 
    		</div>
    	</div>
    </form>
    
     <div class="rightinfo">
<%
try{
	int pagesize = 3;
	int allcount = 0;
	int pages = 0;
	int currentpage = 0;
	UserService us = new UserService();
	ResultSet rs = us.SelectUser();
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
        <th>用户名<i class="sort"><img src="images/px.gif" /></i></th>
        <th>姓名</th>
        <th>密码</th>   
        <th>性别</th>
        <th>城市</th>
        <th>用户类型</th>
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
        	<li class="paginItem"><a href="findUser.jsp?page=<%=i %>"><%=i %></a></li>
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
      $("#usual1 ul").idTabs(); 
   </script>
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>