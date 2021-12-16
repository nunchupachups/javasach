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
    <form method="post" action="tesst.jsp?a="+a+ "&b"+b >
    a= <input type="number" name="txta" value="0"> 
    b= <input type="number" name="txtb" value="0"> 
    <input type="submit" value="hi">
    <%String a=request.getParameter("txta");
    String b=request.getParameter("txtb");%>
    </form>
</body>
</html>