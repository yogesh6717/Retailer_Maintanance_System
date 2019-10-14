<%@page import="com.capg.rms.beans.Retailer"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Bus</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<jsp:include page="navBar.jsp"></jsp:include>

<body>
	<% Retailer retailer = (Retailer)session.getAttribute("retailer");
	if(retailer != null){
		out.print("<h1>Hello , " + retailer.getName() +"</h1>");
	}else{
		response.sendRedirect("./login");
	}
%>

	<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<h1 class="h1 text-center">Search Product</h1>
			<form action="./searchProduct" method="post">

				<label for="source">Product Id</label>
				<div class="form-group">
					<input type="text" class="form-control" name="productid" required>
				</div>
				<div class="form-group">
					<button class="btn btn-info float-right">Search</button>
				</div>
			</form>
		</div>
	</div>

	<center>
		<h2>${msg}</h2>
	</center>

</body>
</html>