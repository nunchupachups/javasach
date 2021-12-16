<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <title>Document</title>
</head>
<body>
    <nav class="navbar navbar-inverse">
  	<div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="quanlydonhang">Quản lý hoá đơn</a></li>
      <li><a href="quanlysach">Quản lý sách</a></li>
      <li class="active"><a href="quanlyloai">Quản lý loại</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span><c:out value="Xin chào,${sessionScope.admin.getHoten()}"></c:out></a></li>
      <li><a href="dangnhapcontroller?logout=0"><span class="glyphicon glyphicon-log-out"></span>Đăng Xuất</a></li>
    </ul>
 	</div>
	</nav>
	
	<c:if test="${tb!=null }">
			<script language="javascript">
			alert("Mã loại này đã tồn tại. Vui lòng thử lại mã khác.");
			</script>
		</c:if>
		
	 <table align="center" cellspacing="0" width="800"  >
	 <tr>
	 	<td width="500">
	 		<table class="table table-hover">
	 		<thead>
	 	<th>Mã loại</th>
	 	<th>Tên loại</th>
	 </thead>
	 <tbody>
	 	<c:forEach items="${dsloai }" var="l">
	 		<tr>
	 			<td><c:out value="${l.getMaloai() }"></c:out></td>
	 			<td><c:out value="${l.getTenloai() }"></c:out></td>
	 		</tr>
	 	</c:forEach>
	 	</tbody>
	 		</table>
	 	</td>
	 	<td>
	 		<table>
	 		<tr>	
	 			<td>
	 				<form action="quanlyloai" method="post" style="position: absolute; top:100px;right: 50px;">
  					<input type="text" name="txtTim">
  					<input type="submit" value="Search" name="but1">
  					</form>
	 			</td>
	 		</tr>
	 		<tr>
	 			<td>
	 				<a style="position: absolute; top:150px;right: 180px; font-size: 20px;"  href="#" data-toggle="modal" data-target="#myModal" ><i class="far fa-plus-square" ></i> Thêm loại</a>
	 			</td>
	 		</tr>
	 		</table>
	 	</td>
	 </tr>
	 
	 	
  	</table>
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thêm loại</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	
        	
          <form method="post" action="quanlyloai"> 
          	Mã loại:  <input type="text" name="txtmaloai" required="required" class="form-control">
          	Tên loại:<input type="text" name="txttenloai" required="required" class="form-control">
          	<input type="submit" name="but1" value="Thêm loại" class="btn-primary">
          </form>
        </div>
        
      </div>
    </div>
  </div>
</body>
</html>