<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<table align="center" border="1" cellspacing="0">
   <%for(int i=1;i<10;i++){ %>
     <tr>
     <%for(int j=2;j<10;j++){ %>
     <td><%=j%>x<%=i %>=<%=j*i %></td>
     <%} %>
     </tr>
   <%} %>
</table>
</body>
</html>