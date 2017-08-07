<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
  <%
  	//要得到客户端请求发过来的数据就要使用内置对象request的getParameter方法
  	//getParameter方法的参数对应表单的input标签的name属性值，name=“xxx”
  	String name=request.getParameter("username");
  	String pas=request.getParameter("password");
  	if(name.equals("niududu")&& pas.equals("123")){
  	//
  		session.setAttribute("username", name);
  		response.sendRedirect("main.jsp");
  	}else{
  		out.write("<script>alert('用户名或者密码错误')</script>");
  	}
   %>
    
  </body>
</html>
