<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.weatherBean"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show weather</title>
</head>
<link rel="stylesheet" href="./stylesheets/style.css">
<style>
body{
background-image: url('images/clouds.jpeg');
}


</style>
<body>
<h1>Sunshine</h1>
<p>
<%
	weatherBean wBean = (weatherBean) request.getAttribute("wBean");
	out.print("The weather in " + wBean.getCityStr() + " is " + wBean.getCloudsStr() + " , Todays date is "+ wBean.getDate());
	out.print(" The wind feels like a " + wBean.getWind());
	%>
</p>
<p><a href="./index.jsp">Back</a></p>

	<footer>Here is the nice footer again :)</footer>
</body>
</html>