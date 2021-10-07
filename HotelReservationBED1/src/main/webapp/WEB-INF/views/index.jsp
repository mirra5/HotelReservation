<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>HotelReservation-Home Page</title>
<style>
body {
	background-color : lightblue;
	margin: 0;
	padding: 0;
}
h1 {
	color : dark-blue;
	text-align : center;
	font-family: "SIMPSON";
	
}
form {
	width: 300px;
	margin: 0 auto;
	font-size: 200%;
	
}

</style>
<script type="text/javascript">

var hotelsByCities = {
Chennai: ["ITC Grand Chola","Taj"],
Delhi: ["The Imperial","The Leela palace"],
Bangalore: ["The Shangri-La","Sheraton Grand"],
Hyderabad: ["Taj Banjara","RedFox Hotel"]
}
function makeSubmenu(value) {
if(value.length==0) document.getElementById("hotelname").innerHTML = "<option></option>";
else {
var citiesOptions = "";
for(cityId in hotelsByCities[value]) {
citiesOptions+="<option>"+hotelsByCities[value][cityId]+"</option>";
}
document.getElementById("hotelname").innerHTML = citiesOptions;
}
}
</script>

</head>
<body>
<h1>HOTEL RESERVATION SYSTEM</h1><hr><br><br>
<form method="post" action="checkAvailability">
<label for="city"><b>City:</b></label>
  <select id="cityname" name="cityname" type="text" size="1" style="width:300px;height:30px" onchange="makeSubmenu(this.value)">
<option value="" disabled selected>Choose City</option>
<option>Chennai</option>
<option>Delhi</option>
<option>Bangalore</option>
<option>Hyderabad</option>
</select></br></br>
<label for="hotels"><b>Hotel:</b></label>
<select id="hotelname" name="hotelname" type="text" style="width:300px;height:30px" size="1" >
<option value="" disabled selected>Choose Hotel</option></select>
</br></br>
<label for="date"><b>Date:</b></label>
<input type="date" id="date" name="date" style="width:300px;height:30px" value="2020-12-12">
</br></br> 

<button id="submit" type="submit" style="width:500px;height:30px">Check Availability</button>
</form>
</body>
</html> 