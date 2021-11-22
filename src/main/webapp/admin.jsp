<%@page import="Business_Logic_Package.*"%>
<%@ page import="Model_Package.*"%>
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
	top: 0px;
}

i:hover {
	color: yellow;
}
</style>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"
	src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
function carddeleteitem(btn){
	alert(event.srcElement.id);
	
}

</script>	
<body>
       <%
          try{
        	  String type=request.getParameter("servicetype");
        	  String price=request.getParameter("price");
        	  String btn = request.getParameter("btn");
        	  if(type != null && price != null && type != "" && price != ""){
        		  if(new Service_Operation().addService("new service", 122.22)){
        			  %>
        			  <script type="text/javascript">
        				  swal("Saved", "Insert Succesfull !", "success");
        				  window.location.href="./admin.jsp";
        			  </script>
            		  
          <%   	  } else{ %>
                          <script type="text/javascript">
        				  swal("Failed", "Insert Failed !", "error");
        				//  window.location.href="./admin.jsp";
        				  </script>		
        	  
         <%  }
        	  }  else{ %>
        	             <script type="text/javascript">
        				  swal("Failed", "Please enter values !", "error");
        				  </script>	
        <%
        	  }  
          }catch(Exception e){
        	  throw e;
          }
       %>

	<div  class="container-fluid p-3">
		<form action="admin.jsp" method="get">
		  <div class="row">
		         <div class="col-4">
		        <input type="text"  class="form-control" placeholder="Your Service Type" name="servicetype" />
		         </div>  
		     <div class="col-4">
		         <input type="number" class="form-control" value="" placeholder="Price : 1000.00 dhs" name="price" />
		  </div>  
		     <div class="col-4">
		        <input type="submit"  class="btn btn-danger text-center pr-5"
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
					<th scope="col">ID</th>
					<th scope="col">SERVICE-TYPE</th>
					<th scope="col">PRICE (0.00 dhs)</th>
					
					<th scope="col">E</th>
					<th scope="col">S</th>
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>
                  <%
			try {
				ArrayList<Service> list = new ArrayList<Service>();
				list = new Service_Operation().viewServiceList();
				if (list.size() != 0) {
					for (int i = 0; i < list.size(); i++) {
			%>
				<tr>
					<td scope="row"><%out.print(i);%></td>
					<td><%out.print(list.get(i).getId());%></td>
					<td><%out.print(list.get(i).getServiceType());%></td>
					<td><%out.print(list.get(i).getPrice());%></td>
					<td><i id="" class="fa fa-edit"></i></td>
					<td><i class="fa fa-save"></i></td>
					<td>
					<form method="get" action="./admin.jsp">
					<input onclick="carddeleteitem(this);"
					      name="<%out.print(list.get(i).getId());%>"
						id="<%out.print(list.get(i).getId());%>"
						type="button"
					>
					<i   class="fa fa-trash" ></i>
					</input>
					</form>
					</td>
					<%
					}
					}
					} catch (Exception ex) {
					throw ex;
					}
					%>
				</tr>

			</tbody>
		</table>
	</div>
	<!-- customer details -->
	<div id="bottom">
		<table class="table table-primary">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">ID</th>
					<th scope="col">NIC/Passport</th>
					<th scope="col">NAME</th>
					<th scope="col">TELEPHONE</th>
					<th scope="col">BANK CARD NO</th>
					
					<th scope="col">E</th>
					<th scope="col">S</th>
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>
                  <%
			try {
				ArrayList<Customer> list = new ArrayList<Customer>();
				list = new Customer_Operation().viewCustomerList();
				if (list.size() != 0) {
					for (int i = 0; i < list.size(); i++) {
			%>
				<tr>
					<td scope="row"><%out.print(i);%></td>
					<td><%out.print(list.get(i).getId());%></td>
					<td><%out.print(list.get(i).getNic());%></td>
					<td><%out.print(list.get(i).getName());%></td>
					<td><%out.print(list.get(i).getTelephone());%></td>
					<td><%out.print(list.get(i).getCardNo());%></td>
					<td><i id="" class="fa fa-edit"></i></td>
					<td><i class="fa fa-save"></i></td>
					<td><i class="fa fa-trash"></i></td>
					<%
					}
					}
					} catch (Exception ex) {
					throw ex;
					}
					%>
				</tr>

			</tbody>
		</table>
	</div>
	
	<!--  ORDERS TABLE -->
	
	<div id="bottom">
		<table class="table table-primary">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">ID</th>
					<th scope="col">Customer_ID</th>
					<th scope="col">TOTAL_COST (0.00 dhs)</th>
					<th scope="col">SELECTED_SERVICE_ID</th>
					<th scope="col">TIMES_TAMP</th>
					
					<th scope="col">E</th>
					<th scope="col">S</th>
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>
                  <%
			try {
				ArrayList<Orders> list = new ArrayList<Orders>();
				list = new Order_Operation().viewAllOrderList();
				if (list.size() != 0) {
					for (int i = 0; i < list.size(); i++) {
			%>
				<tr>
					<td scope="row"><%out.print(i);%></td>
					<td><%out.print(list.get(i).getId());%></td>
					<td><%out.print(list.get(i).getCustomerId());%></td>
					<td><%out.print(list.get(i).getTotal());%></td>
					<td><%out.print(list.get(i).getSelectedItems());%></td>
					<td><%out.print(list.get(i).getBuyDate());%></td>
					
					<td><i id="" class="fa fa-edit"></i></td>
					<td><i class="fa fa-save"></i></td>
					<td><i class="fa fa-trash"></i></td>
					<%
					}
					}
					} catch (Exception ex) {
					throw ex;
					}
					%>
				</tr>

			</tbody>
		</table>
	</div>
	
		
</body>
</html>