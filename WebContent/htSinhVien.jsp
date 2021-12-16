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
	SinhVienbo svbo= new SinhVienbo();
    Khoabo kbo =new Khoabo();
    request.setCharacterEncoding("UTF-8");
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
        		<th>Danh sách sinh viên <%=kbo.tenkhoa(request.getParameter("mk"))%></th>
      			</tr>
    		</thead>
    		<tbody>
    		<%
    		String txthotensv=request.getParameter("txthotensv");
			if(txthotensv!=null){
				for(SinhVienbean sv:svbo.timkiemsv(request.getParameter("txthotensv"))){
					%>
					<tr>
    	            <td><a href="htSinhVien.jsp?msv=<%=sv.getMasv()%>&txthotensv=<%=txthotensv%>"><%=sv.getHoten()%> </a></td>
    	            </tr> 
    	            <%} 			
			}				
    		if(svbo.svkhoa(request.getParameter("mk"))!=null){
    			for(SinhVienbean sv: svbo.svkhoa(request.getParameter("mk"))){
   				%>
	            <tr>
	            <td><a href="htSinhVien.jsp?msv=<%=sv.getMasv()%>&mk=<%=request.getParameter("mk")%>"><%=sv.getHoten() %> </a></td>
	            </tr> 
	            <%}} %>            
        	</tbody>
  			</table>
  		</td>
  		<td valign="top" width="400">
        	<form action="htSinhVien.jsp" method="post">
			Nhập tên sinh viên: 
			<input type="text" name="txthotensv" value=<%=request.getParameter("txthotensv")!=null?request.getParameter("txthotensv"):"" %>>
  			<input type="submit" name="btntimkiem" value="Tìm Kiếm">
  			
			</form>
			
			<div class="ttsv">
				<h1>Thông tin sinh viên</h1>
				<div>
				<%SinhVienbean sv=svbo.thongtinsv(request.getParameter("msv"));
				if(sv!=null){%>
        		Mã sinh viên: <%=sv.getMasv()%><br>
          		Họ tên sinh viên: <%=sv.getHoten() %><br>
          		Địa chỉ: <%=sv.getDiachi() %><br>
          		Điểm trung bình: <%=sv.getDtb() %><br>
          		Mã lớp: <%=sv.getMalop() %><br>
        		</div>
        		<%} %>
			</div>
       	</td>
	</tr>
</table>     
</body>
</html>