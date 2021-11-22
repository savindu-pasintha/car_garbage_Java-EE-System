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
<title>Car Garbage</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
:root { -
	-background-gradient: linear-gradient(30deg, #f39c12 30%, #f1c40f); -
	-gray: #34495e; -
	-darkgray: #2c3e50;
}

select {
	/* Reset Select */
	appearance: none;
	outline: 0;
	border: 0;
	box-shadow: none;
	/* Personalize */
	flex: 1;
	padding: 0 1em;
	color: #fff;
	background-color: var(- -darkgray);
	background-image: none;
	cursor: pointer;
}
/* Remove IE arrow */
select::-ms-expand {
	display: none;
}
/* Custom Select wrapper */
.select {
	position: relative;
	display: flex;
	width: 100%;
	height: 3em;
	border-radius: .25em;
	overflow: hidden;
}
/* Arrow */
.select::after {
	content: '\25BC';
	position: absolute;
	top: 0;
	right: 0;
	padding: 1em;
	background-color: #34495e;
	transition: .25s all ease;
	pointer-events: none;
}
/* Transition */
.select:hover::after {
	color: #f39c12;
}

/* Other styles*/
body {
	color: #000;
	background: var(- -background-gradient);
}

h1 {
	margin: 0 0 0.25em;
}

a {
	font-weight: bold;
	color: var(- -gray);
	text-decoration: none;
	padding: .25em;
	border-radius: .25em;
	background: white;
}

.remobeButtonClass {
	
}

/* PAYMENT CARD */
@import
	url(https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700,300italic,400italic,500italic,700italic)
	;

@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,100italic,100,300,300italic,400italic,500,500italic,700,700italic,900,900italic)
	;

.card {
	width: 600px;
	height: 360px;
	background: #FFF;
	margin: 0 auto;
	border-radius: 20px;
	margin-top: 20px;
}

.top {
	width: 100%;
	background: rgb(25, 146, 250);
	padding: 57px 0;
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	position: relative;
}

.payment {
	position: absolute;
	width: 30px;
	font-size: 22px;
	color: #FFF;
	font-family: 'ubuntu', sans-serif;
	text-transform: uppercase;
	line-height: 25px;
	font-weight: 500;
	top: 32px;
	left: 35px;
}

/*form styles*/
form {
	width: 550px;
	margin: 0 auto;
}

.one {
	width: 225px;
}

.two {
	width: 245px;
}

.one, .two, .three, .four, .five {
	float: left;
	margin: 15px 40px 5px 0;
}

.three, .four, .five {
	float: left;
	width: 143px;
}

input, select {
	clear: both;
	float: none;
	display: block;
	-webkit-appearance: none;
	border: 1px solid rgb(197, 197, 197);
	padding: 14px 15px;
	border-radius: 3px;
	width: 100%;
	font-size: 15px;
	color: #000;
	text-align: left;
	font-weight: bold;
	background: #FFF;
}

input {
	color: rgb(244, 195, 88);
	text-shadow: 0px 0px 0px #000;
	-webkit-text-fill-color: transparent;
}

select {
	padding-left: 15px;
}

::-webkit-input-placeholder {
	font-size: 15px;
	color: #000;
	text-align: left;
	font-weight: bold;
	padding-left: 0px;
}

:-moz-placeholder { /* older Firefox*/
	font-size: 15px;
	color: #000;
	text-align: left;
	font-weight: bold;
	padding-left: 0px;
}

::-moz-placeholder { /* Firefox 19+ */
	font-size: 15px;
	color: #000;
	text-align: left;
	font-weight: bold;
	padding-left: 0px;
}

:-ms-input-placeholder {
	font-size: 15px;
	color: #000;
	text-align: left;
	font-weight: bold;
	padding-left: 0px;
}

label {
	color: rgb(151, 151, 151);
	font-size: 12px;
	font-weight: 500;
	letter-spacing: . -0px;
	font-family: 'ubuntu', sans-serif;
	text-transform: uppercase;
	margin: 15px 0;
	display: block;
}

input[type=text]:focus, input[type=number]:focus, textarea:focus, select:focus
	{
	box-shadow: none;
	outline: none;
	border: 1px solid rgb(25, 146, 250);
}

/*drop down arrow */
/* Targetting Webkit browsers only. FF will show the dropdown arrow with so much padding. */
@media screen and (-webkit-min-device-pixel-ratio:0) {
	select {
		padding-right: 18px
	}
}

label {
	position: relative
}

.three label:after, .four label:after {
	content: "\f078";
	font-family: "FontAwesome";
	font-size: 11px;
	color: rgb(140, 140, 140);
	right: 10px;
	top: 45px;
	padding: 0 0 2px;
	position: absolute;
	pointer-events: none;
}

label:before {
	content: '';
	right: 4px;
	top: 0px;
	width: 23px;
	height: 18px;
	background: #fff;
	position: absolute;
	pointer-events: none;
	display: block;
}

/* Info */
.info {
	width: 300px;
	margin: 35px auto;
	text-align: center;
	font-family: 'roboto', sans-serif;
}

.info h1 {
	margin: 0;
	padding: 0;
	font-size: 28px;
	font-weight: 400;
	color: #333333;
	padding-bottom: 5px;
}

.info span {
	color: #666666;
	font-size: 13px;
	margin-top: 20px;
}

.info span a {
	color: #666666;
	text-decoration: none;
}

.info span .fa {
	color: rgb(226, 168, 16);
	font-size: 19px;
	position: relative;
	left: -2px;
}

.info span .spoilers {
	color: #999999;
	margin-top: 5px;
	font-size: 10px;
}


</style>

<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"
	src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
	var selectedArray = [];//[4#type#price]
	
	var selectedArrayItemsList = [];
	var selectedArrayItems = [];
	
	var totalValue = 0.00;
	var arrHead = new Array();
	arrHead = [ 'NO', 'SERVICE-TYPE', 'PRICE (dhs)', '' ] // table headers.
	function selected() {
		var select = document.getElementById('serviceId');
		var optionValue = select.options[select.selectedIndex].value;//4#type#price
		selectedArray.push(optionValue);//['4#Brakes Service#100.0', '9#Engine & Transmission#200.0']
		selectedArrayItems = optionValue.split("#");//['8', 'Minor and Major Service', '200.0']
		
		selectedArrayItemsList.push(selectedArrayItems);
		console.log(selectedArrayItemsList);
		addRow(selectedArrayItems);
	}

	function totalAdd(price) {
		var dbl = parseFloat(price);
		totalValue = totalValue + dbl;
		var ht = document.getElementById("totalHTag");
		ht.innerText = totalValue;
	}

	function totalWhenRemoveClick(pr) {
		var prc = parseFloat(pr);
		totalValue = totalValue - prc;
		var htg = document.getElementById("totalHTag");
		htg.innerText = totalValue;
		totalValue = totalValue;
	}
	// first create a TABLE structure by adding few headers.
	function createTable() {
		var empTable = document.createElement('table');
		empTable.setAttribute('id', 'empTable'); // table id.
		empTable.setAttribute('class', 'table');
		var tr = empTable.insertRow(-1);
		for (var h = 0; h < arrHead.length; h++) {
			var th = document.createElement('th'); // the header object.
			th.innerHTML = arrHead[h];
			tr.appendChild(th);
		}
		var div = document.getElementById('cont');
		div.appendChild(empTable); // add table to a container.
		
		
		//page load time execute
		 var x = document.getElementById("paymentCard");
		  if (x.style.display !== "none") {
			  x.style.display = "none";
			  document.getElementById("nexttext").innerText="NEXT";
		  }
	}

	// function to add new row.
	function addRow(selectedArrayItemsParameter) {
		totalAdd(selectedArrayItems[2]);
		var empTab = document.getElementById('empTable');
		var rowCnt = empTab.rows.length; // get the number of rows.
		var tr = empTab.insertRow(rowCnt); // table row.
		tr = empTab.insertRow(rowCnt);
		for (var count = 0; count < arrHead.length; count++) {
			var td = document.createElement('td'); // TABLE DEFINITION.
			td = tr.insertCell(count);
			if (count == 3) {
				var button = document.createElement('input');
				button.setAttribute('type', 'button');
				button.setAttribute('value', 'Remove');
				button.setAttribute('class', 'btn btn-warning');
				button.setAttribute('id', Math.random());
				
				button.setAttribute('code', selectedArrayItemsParameter[0]);
				button.setAttribute('service_type', selectedArrayItemsParameter[1]);
				button.setAttribute('price', selectedArrayItemsParameter[2]);
				
				button.setAttribute('onclick', 'removeRow(this)');
				td.appendChild(button);
			} else {
				var setDataToColumElements = document.createElement('h');
				setDataToColumElements.innerText = selectedArrayItemsParameter[count];
				td.appendChild(setDataToColumElements);
			}

		}
	}

	function removeRow(oButton) {
		var tableElementAcces = document.getElementById('empTable');
		var getRemoveButtonPriceAttributeValue = document.getElementById(
				event.srcElement.id).getAttribute("price");
		totalWhenRemoveClick(getRemoveButtonPriceAttributeValue);
		tableElementAcces.deleteRow(oButton.parentNode.parentNode.rowIndex); // buttton -> td -> tr
	}

	// function to extract and submit table data.
	function submit() {
		var myTab = document.getElementById('empTable');
		var arrValues = new Array();

		// loop through each row of the table.
		for (row = 1; row < myTab.rows.length - 1; row++) {
			// loop through each cell in a row.
			for (c = 0; c < myTab.rows[row].cells.length; c++) {
				var element = myTab.rows.item(row).cells[c];
				if (element.childNodes[0].getAttribute('type') == 'text') {
					arrValues.push("'" + element.childNodes[0].value + "'");
				}
			}
		}

		// finally, show the result in the console.
		console.log(arrValues);
	}
	
	

	function nextClick()  {
		submit(); 
		  var x = document.getElementById("paymentCard");
		  var tbl = document.getElementById("cont");
		  if (x.style.display === "none") {
		    x.style.display = "block";
		    tbl.style.display = "none";
		    document.getElementById("nexttext").innerText="BACK";
		    document.getElementById("select_bar").style.display="none";
		  } else {
		    x.style.display = "none";
		    tbl.style.display = "block";
		    document.getElementById("nexttext").innerText="NEXT";
		    document.getElementById("select_bar").style.display="block";	
		    
		  }
		}
	
	function cardPayNow(){
		swal({
			  title: "Are you sure ?",
			  text: "ARE YOU READY TO PAY , NOW ?",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
				window.location.href="./invoice.jsp";
			  } else {
				  window.location.href="./index.jsp";
			  }
			});
		
	}
	
</script>

</head>
<body onload="createTable()">
	<div id="select_bar" class="select">
		<select id="serviceId" onchange="selected()">
			<%
			try {
				ArrayList<Service> list = new ArrayList<Service>();
				list = new Service_Operation().viewServiceList();
				if (list.size() != 0) {
					for (int i = 0; i < list.size(); i++) {
			%>
			<option id="item"
				value="<%out.print(list.get(i).getId() + "#" + list.get(i).getServiceType() + "#" + list.get(i).getPrice());%>">
				<div class="row">
					<h3>
						<span> <%
 out.print(list.get(i).getId());
 %></span> <span> <%
 out.print(list.get(i).getServiceType());
 %>
						</span> <span> <%
 out.print(list.get(i).getPrice() + " dhs");
 %>
						</span>
					</h3>
				</div>

			</option>
			<%
			}
			}
			} catch (Exception ex) {
			throw ex;
			}
			%>
		</select>
	</div>

	<div id="total" class="text-center p-5">
		<h1 id="myDIV">
			Total : <span id="totalHTag" class="text-warning"></span> dhs
		</h1>
		<button class="btn btn-primary pl-5 pr-5" onclick="nextClick()">
			<h1 id="nexttext"></h1>
		</button>
	</div>
	<!-- PAYMENT CARD -->
	<div class="card" id="paymentCard">
		<div class="top">
			<div class="payment">
				<h1 class="d-flex">pay</h1>
			</div>
		</div>
		<div class="card-body">
			<form action="invoice.jsp" method="get">
				<div class="one">
					<label for=''>Name on card</label> <input size="50"
						placeholder='Shamma Mohommed' type='text'>
				</div>

				<div class="two">
					<label for=''>Card Number</label> <input size="16" name="cardno"
						maxlength='16' placeholder='4478 6632 9923 8890' type='number'>
				</div>

				<div class="three">
					<label for=''>Expiry Date</label> <select name="month">
						<option>January</option>
						<option>February</option>
						<option>March</option>
						<option>April</option>
						<option>May</option>
						<option>June</option>
						<option>July</option>
						<option>August</option>
						<option>September</option>
						<option>October</option>
						<option>November</option>
						<option>December</option>
					</select>
				</div>

				<div class="four">
					<!-- blank character -->
					<label for=''>&#x200b;</label> <select name="year">
						<option>2015</option>
						<option>2016</option>
						<option>2017</option>
						<option>2018</option>
						<option>2019</option>
						<option>2020</option>
					</select>
				</div>
				<div class="five">
					<label for=''>CVV</label> <input size="3" name="cvv" maxlength='3'
						placeholder='633' type='number'>
				</div>

				<div id="total" class="text-center p-2">
					<div class="row">
					<div class="col-12 p-2">
							<input name="ID" required type="text" size="30"
								placeholder="Identity/Passport : 12 45 78 89"
								class="form-control" />
						</div>
						<div class="col-12 p-2">
							<input name="mobile" required type="tel" size="12"
								placeholder="Mobile : + 97 156 800 0000"
								class="form-control" />
						</div>

						<div class="col-12 p-3">
							<button onclick="cardPayNow()"
								class="form-control btn btn-warning p-5">
								<h3>PAY NOW</h3>
							</button>
						</div>
					</div>
				</div>
			</form>

		</div>

	</div>
	<!-- Table load here-->
	<div id="cont">
		<!--the container to add the table.-->
	</div>
</body>
</html>