<%@page import="Business_Logic_Package.Service_Operation"%>
<%@ page import="Model_Package.Service"%>
<%@ page import="Database_Package.Database"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>USERS</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<style>
#top {
	width: auto;
	height: auto;
	position: relative;
	top: 0%;
}

#bottom {
	width: auto;
	height: auto;
	position: relative;
	top: 120px;
}

i:hover {
	color: yellow;
}
</style>
<script type="text/javascript"
	src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body>


	<div id="top">
		<form action="Admin" method="get">
		  <div class="row">
		         <div class="col-4">
		        <input value="" placeholder="Your Service Type" name="servicetype" />
		  </div>  
		     <div class="col-4">
		         <input type="number" value="" placeholder="Price : 1000.00 dhs" name="price" />
		  </div>  
		     <div class="col-4">
		        <input type="submit" 
		        name="btn"
				value="SAVE" />
		  </div>  
		  </div>
		</form>

	</div>
	<div id="bottom">
		<table class="table table-primary">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">User_Name</th>
					<th scope="col">Password</th>
					<th scope="col">E</th>
					<th scope="col">S</th>
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					<th scope="row"><input /></th>

					<td><input id="" class="" value="" /></td>

					<th scope="row"><input /></th>

					<td>
					<td><i id="" class="fa fa-edit"></i></td>
					<td><i class="fa fa-save"></i></td>
					<td><i class="fa fa-trash"></i></td>
				</tr>

			</tbody>
		</table>
	</div>
</body>
</html>