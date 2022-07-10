<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*,nuc.sw.conn.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改商品</title>
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
    <li><a href="#">修改商品</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">

	<%
		BookService bs = new BookService();
		ResultSet rs = bs.SelectOneBook(request.getParameter("id"));
		while(rs.next()){
	%>
		<form action="UpdateBook.jsp?bid=<%=request.getParameter("id") %>" method="post">
    		<div class="formbody">         
  				<div id="tab1" class="tabson">    
    				<ul class="forminfo">
    					<li>
    						<label>书名<b>*</b></label>
    						<input name="bname" type="text" class="dfinput" value="<%=rs.getString(2) %>" style="width:345px;" />
    					</li>
	 					<li>
      						<label>作者<b>*</b></label>
      						<input name="author" type="text" class="dfinput"  value="<%=rs.getString(3) %>" style="width:345px;"/>
    					</li>
     					<li>
      						<label>价格<b>*</b></label>
      						<input name="bprice" type="text" class="dfinput"  value="<%=rs.getString(4) %>" style="width:345px;"/>
    					</li>
    					<li>
      						<label>数量<b>*</b></label>
      						<input name="bnum" type="text" class="dfinput"  value="<%=rs.getString(5) %>" style="width:345px;"/>
    					</li>
    		 			<li>
       						<label>类型<b>*</b></label>
       							<span style="margin-left: 87px;">
      							<select class="select3" name="bcategory">
      								<option>教材</option>
      								<option>小说</option>
      							</select>
							</span>
     					</li>
    					<li><label>&nbsp;</label><input name="" type="submit" class="btn" value="修改"/></li>
    				</ul>
    			</div> 
			</div> 
 		</form>
	<%
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