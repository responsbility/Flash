<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,nuc.sw.service.*,nuc.sw.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购买商品</title>
</head>
<body>
	<%
		String id = request.getParameter("bid");
		String num = request.getParameter("bnum");
		String userid = request.getParameter("uid");
		BookService bs = new BookService();
		ResultSet rs = bs.SelectOneBook(id);
		if(rs.next()){
			if(Integer.parseInt(num) > Integer.parseInt(rs.getString(5))){
	%>
				<script type="text/javascript">
					alert("库存不足！");
					window.location="PurchaseBook.jsp?userid=<%=request.getParameter("uid") %>";
				</script>
	<%
				return;
			}
			Book b = new Book(rs.getString(1), rs.getString(2), rs.getString(3), Float.parseFloat(rs.getString(4)), Integer.parseInt(rs.getString(5)), rs.getString(6));
			PurchaseService ps = new PurchaseService();
			if(!ps.Judge(id, userid).next()&&ps.Purchase(b, num, userid)!=0&&ps.Update(id, num)!=0){
	%>
				<script type="text/javascript">
					alert("成功添加到购物车！");
					window.location="PurchaseBook.jsp?userid=<%=request.getParameter("uid") %>";
				</script>
	<%
			}else if(ps.Judge(id, userid).next()&&ps.PurchaseAgain(id, userid, num, b.getPrice())!=0&&ps.Update(id, num)!=0){
	%>
				<script type="text/javascript">
					alert("成功添加到购物车！");
					window.location="PurchaseBook.jsp?userid=<%=request.getParameter("uid") %>";
				</script>
	<%
			}else{
	%>
				<script type="text/javascript">
					alert("添加失败！");
					window.location="PurchaseBook.jsp";
				</script>
	<%
			}
		}else{
	%>
				<script type="text/javascript">
					alert("不存在该书籍！");
					window.location="PurchaseBook.jsp";
				</script>
	<%
		}
	%>
</body>
</html>