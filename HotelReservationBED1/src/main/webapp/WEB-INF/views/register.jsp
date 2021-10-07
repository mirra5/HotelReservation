<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-color : grey;
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


</head>
<body>
<h1>Registration Form</h1><hr><br><br>
<form method="post" action="submitDetails">
Name:<input type="text" id="name" name="name" style="width:300px;height:30px" pattern='[A-Za-z\\s]*' required> <br>

 Gender:<select id="gender" size="1" style="width:300px;height:30px" required>
<option value="" disabled selected>Choose Gender</option>
<option>Male</option>
<option>Female</option>
</select></br>


Age:<input type="number" id="age" min="1" max="150" style="width:300px;height:30px" required>
</br>

Email:<input type="email" id="email" style="width:300px;height:30px" required>
</br>
Mobile:<input type="number" id="mobile" style="width:300px;height:30px" required>
</br></br>

<button id="submit" type="submit" style="width:100px;height:30px">Confirm</button>
<button type="button" style="width:100px;height:30px" onclick="window.location.href='index.jsp'">back</button>
</form>
</body>
</html>