<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-color: lightgreen;
}

h1 {
	color: dark-blue;
	text-align: center;
	font-family: "Calibri";
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 8px;
	text-align: center;
	font-size: 25px;
	border-bottom: 2px solid #ddd;
}
.button{
	background-color: #1c87c9;
        border: none;
        color: white;
        padding: 20px 34px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        margin: 4px 2px;
        cursor: pointer;
}
</style>
</head>
<body>
	<h1>Hotel Details</h1>
	<br>
	<form method="post" action="confirmBooking">
		<table>
			<th>Hotel</th>
			<th>City</th>
			<th>Date</th>
			<th>Room Type</th>
			<th>GST(%)</th>
			<th>Price in Rupees</th>
			<tr>
				<td>${hotelName}</td>
				<td>${cityName}</td>
				<td>${date}</td>
				<td>${roomType}</td>
				<td>${gst}</td>
				<td>${priceInRupees}</td>
			</tr>
		</table>
		<br> <br> <br> <br>
		<button id="submit" type="submit" class="button" >Confirm</button>
		&nbsp
		<a href="index.jsp" class="button" >Back</a>
	</form>
</body>
</html>