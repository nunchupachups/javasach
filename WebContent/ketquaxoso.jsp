<%@page import="java.util.Random"%>
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
<% Random r= new Random();%>
    <table align="center" border="1" cellspacing="0">
    	<tr>
    		<td colspan="7">
    			XSQT - Kết quả Xổ số Quảng Trị - XSQT hôm nay 
    		</td>
    	</tr>
    	<tr>
    		<td></td>
    		<td colspan="6">
    			XSQT <%=request.getParameter("sngay") %>/<%=request.getParameter("sthang") %>/<%=request.getParameter("snam") %>
    		</td>
    	</tr>
    	<tr>
    		<td>8</td>
    		<td colspan="6">
    			<%=r.nextInt(100) %>
    		</td>
    	</tr>
    	<tr>
    		<td>7</td>
    		<td colspan="6">
    			<%=r.nextInt(1000) %>
    		</td>
    	</tr>
    	<tr>
    		<td>6</td>
    	<%for(int i=1;i<4;i++){ %>  		
    		<td colspan="2">
    			<%=r.nextInt(10000) %>
    		</td>
    		<%} %>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td colspan="6">
    			<%=r.nextInt(10000) %>
    		</td>
    	</tr>
    	<tr>
    		<td rowspan="3">4</td>
    		<%for(int i=1;i<4;i++){ %>  		
    		<td colspan="2">
    			<%=r.nextInt(100000) %>
    		</td>
    		<%} %>
    	</tr>
    	<tr>
    		<%for(int i=1;i<4;i++){ %>  		
    		<td colspan="2">
    			<%=r.nextInt(100000) %>
    		</td>
    		<%} %>
    	</tr>
    	<tr>		
    		<td colspan="6">
    			<%=r.nextInt(100000) %>
    		</td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<%for(int i=1;i<3;i++){ %>  		
    		<td colspan="3">
    			<%=r.nextInt(100000) %>
    		</td>
    		<%} %>
    	</tr>
    	<tr>
    		<td>2</td>		
    		<td colspan="6">
    			<%=r.nextInt(100000) %>
    		</td>
    	</tr>
    	<tr>
    		<td>1</td>		
    		<td colspan="6">
    			<%=r.nextInt(100000) %>
    		</td>
    	</tr>
    	<tr>
    		<td>ĐB</td>		
    		<td colspan="6">
    			<%=r.nextInt(1000000) %>
    		</td>
    	</tr>
    	
    </table>
</body>
</html>