<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.sub-menus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.sub-menus').hide();
			}else{
				$parent.addClass("open").find('.sub-menus').show();	
			}
			
			
		}
	});
	
	// 三级菜单点击
	$('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
		$(this).addClass("active");
    });
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('.menuson').slideUp();
		if($ul.is(':visible')){
			$(this).next('.menuson').slideUp();
		}else{
			$(this).next('.menuson').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#fff3e1;">
	<div class="lefttop"><span></span>电商购物平台</div>
    
    <dl class="leftmenu">
    
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>首页
    </div>
    	<ul class="menuson">
          <li class="active"><cite></cite><a href="default.jsp?i=<%=request.getParameter("count") %>" target="rightFrame"  title="tab.html">工作台</a><i></i></li>    
        </ul>    
    </dd>
       
    <!--管理信息模块开始--> 
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>用户管理
    </div>
    	<ul class="menuson">
          <li><cite></cite><a href="addUser.html" target="rightFrame"  title="tab.html">添加用户</a><i></i></li>    
          <li><cite></cite><a href="modifyUser.jsp" target="rightFrame"  title="right.html">修改用户</a><i></i></li>
          <li><cite></cite><a href="deleteUser.jsp" target="rightFrame" title="displayStudents">删除用户</a><i></i></li>   
          <li><cite></cite><a href="findUser.jsp" target="rightFrame" title="tools.html">查询用户</a><i></i></li>   
        </ul>    
    </dd>
      <!--管理信息模块结束-->    
    
     <!--其他设置模块开始-->    
    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>商品管理
    </div>      
        <ul class="menuson">
          <li><cite></cite><a href="addBook.html" target="rightFrame"  title="tab.html">添加商品</a><i></i></li>    
          <li><cite></cite><a href="modifyBook.jsp" target="rightFrame"  title="right.html">修改商品</a><i></i></li>
          <li><cite></cite><a href="deleteBook.jsp" target="rightFrame" title="displayStudents">删除商品</a><i></i></li>   
          <li><cite></cite><a href="AdminFindBookAuthor.jsp" target="rightFrame" title="tools.html">按作者查询商品</a><i></i></li>
          <li><cite></cite><a href="AdminFindBookName.jsp" target="rightFrame" title="tools.html">按书名查询商品</a><i></i></li>   
        </ul>     
    </dd> 
     <!--其他设置模块结束-->    
	 
	 <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>购物车管理
    </div>
    <ul class="menuson">       
        <li><cite></cite><a href="deleteAllCart.jsp" target="rightFrame" title="project.html">清空购物车</a><i></i></li>
        <li><cite></cite><a href="deleteUserCart.jsp" target="rightFrame" title="search.html">删除用户购物车</a><i></i></li>     
		<li><cite></cite><a href="modifyUserCart.jsp" target="rightFrame" title="search.html">修改用户购物车</a><i></i></li>   
        </ul>     
    </dd>   
    </dl>
</body>
</html>
