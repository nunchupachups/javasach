<%@page import="java.util.ArrayList"%>
<%@page import="bo.Khoabo"%>
<%@page import="bean.Khoabean"%>
<%@page import="bean.SinhVienbean"%>
<%@page import="bo.SinhVienbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" href="htSinhVien.css">
    <title>Document</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8") ;
    response.setCharacterEncoding("utf-8");
    SinhVienbo svbo= new SinhVienbo();
    Khoabo kbo= new Khoabo();
    String mk=request.getParameter("mk");
    String key=request.getParameter("txtTim");
    ArrayList<SinhVienbean> ds=svbo.getsv();
    if(mk!=null) ds=svbo.svkhoa(mk);
    else
    	if(key!=null) ds=svbo.timkiemsv(key);
  %>

<table align="center" cellspacing="0" width="1200">
	<tr>
   		<td valign="top" width="200">
     	<%for(Khoabean k: kbo.getkhoa()){ %>
        <a href="htSinhVien.jsp?mk=<%=k.getMakhoa()%>">  <%=k.getTenkhoa() %> </a><hr>
            <%} %>
       	</td>
       	<td valign="top" width="400">
  			<table class="table table-striped">
    		<thead>
     			<tr>
        		<th>Danh sách sinh viên</th>
      			</tr>
    		</thead>
    		<tbody>
    		<%
				for(SinhVienbean sv:ds){
					%>
					<tr>
    	            <td><a href="htSinhVien.jsp"></a></td>
    	            </tr> 
    	            <%} %>			            
        	</tbody>
  			</table>
  		</td>
  		<td valign="top" width="400">
        	<form action="htSinhVien.jsp" method="post">
			Nhập tên sinh viên: 
			<input type="text" name="txtTim" value="" >
  			<input type="submit" name="btntimkiem" value="Tìm Kiếm">
  			
			</form>
			
			
       	</td>
	</tr>
</table>     
</body>
</html>