<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除商品</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		BookService bs = new BookService();
		if(bs.DeleteBook(id)!=0){
	%>
			<script type="text/javascript">
				alert("删除成功！");
				window.location="deleteBook.jsp";
			</script>
	<%
		}else{
	%>
			<script type="text/javascript">
				alert("删除失败！");
			</script>
	<%
		}
	%>
</body>
</html>