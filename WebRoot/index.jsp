<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script type="text/javascript" src="js/jquery-1.8.0.js"></script>
    <script type="text/javascript">
    	$(document).ready(function(){
    		//为用户名输入框增加失去焦点事件
			var flag1=false;
			var flag2=false;
    		$("#username").blur(function(){
				var name=$("#username").val();
				if(name=="" || name==null){
					flag1=true;
					$("#userlab").text("用户名不能为空")
					}else{
						flag1=false;
						$("#userlab").text("")
						
						}
				});
				//为密码输入框增加失去焦点事件
    		$("#password").blur(function(){
				
				var pas=$("#password").val();
				if(pas=="" || pas==null){
					flag2=true;
					$("#paslab").text("密码不能为空")
					}else{
						flag2=false;
						$("#paslab").text("")
						
						}
				});
				//给提交按钮增加单击事件
				$("#submit").click(function(){
					if(flag1 && flag2){
						alert("登陆失败");
						return false;
						}else{
							
							
							$("#fr").submit();
							}
					});
    	});
    </script>
  </head>
  
  <body>
    <form action="LoginServlet" method="post" id="fr">
    	<input type="text" name="username" id="username" placeholder="用户名">
        <label id="userlab"></label><br>
    	<input type="text" name="password" id="password" placeholder="密码">
        <label id="paslab"></label><br>
    	<input type="submit" value="登录" id="submit"><br>
    </form>
  </body>
</html>
