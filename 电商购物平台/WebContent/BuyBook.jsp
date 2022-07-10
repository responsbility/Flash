<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购买商品</title>
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
    <li><a href="#">购买商品</a></li>
    <li></li>
    </ul>
    </div>
    
   	<span style="font-family: 微软雅黑;font-size: 20px;">您正在购买书名为<%=request.getParameter("name") %>，作者为<%=request.getParameter("author") %>的书籍，请输入购买数量：</span>
   	
   	<form action="Purchase.jsp?bid=<%=request.getParameter("id") %>&uid=<%=request.getParameter("useid") %>" method="post">
   		<div class="formbody">         
  			<div id="tab1" class="tabson">    
    			<ul class="forminfo">
    				<li>
    					<label>数量<b>*</b></label>
    					<input name="bnum" type="text" class="dfinput" style="width:345px;" />
    					<input name="" type="submit" class="btn" value="购买"/>
    				</li>
    			</ul>
    		</div>
    	</div>
   	</form>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>