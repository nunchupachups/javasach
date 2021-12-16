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
	<form action="cuuchuonghi.jsp" method="post">
	 Bảng cửu chương: <input type="number" name="txtbcc" value=<%=request.getParameter("a")!=null?request.getParameter("a"):2 %> max="9" min="2">
	 <input type="submit" name="buthienthi"value="Hiển thị">
	</form>
    <br>
    <%	String tama=request.getParameter("a");
    if(tama!=null){
    	Long b=Long.parseLong(tama);%>
    	<table align="center" border="1" cellspacing="0">
	    	<%for(int i=1;i<=10;i++){%>
	    	<tr><td><%=b+"x"+i+"="+b*i %></td></tr>
	    	<%}%>
    	</table>
   <% } %>
  		
    
</body>
</html>