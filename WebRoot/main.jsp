<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
  <%
  String name=(String)session.getAttribute("username");
   %>
 <%=name %>
      登 陆 成 功 ！ <br>
      
      ${username} , success in
  </body>
</html>
