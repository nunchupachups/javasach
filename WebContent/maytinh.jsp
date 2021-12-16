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
 long kq=0;
long a=0;
long b=0;
 if(request.getAttribute("kq")!=null)
	 kq=(long) request.getAttribute("kq");
 if(request.getAttribute("a")!=null)
  a=(long) request.getAttribute("a");
 if(request.getAttribute("b")!=null)
 	b=(long) request.getAttribute("b");
 %>
<form action="maytinhcontroller" method="post">
 a=   <input name="txta" value=<%=a %> type="number"> <br>
 b=   <input name="txtb" value=<%=b %> type="number"> <br>
 Ket qua: <%=kq %><br>
    <input name="butcong" value="+" type="submit">
    <input name="buttru" value="-" type="submit">
    <input name="butnhan" value="*" type="submit">
    <input name="butchia" value="/" type="submit">
    </form>
</body>
</html>