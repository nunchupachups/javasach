<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
    String tama=request.getParameter("txtbcc"); 
    if(tama!=null){ 	
    	Long a=Long.parseLong(tama);
    	response.sendRedirect("cuuchuong.jsp?a="+a.toString());
    }    
    %>
</body>
</html>