<%@page import= "java.time.format.DateTimeFormatter" %>
<%@page import= "java.time.LocalDateTime" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./stylesheets/style.css">
<style>
body{
background-image: url('images/clouds.jpeg');
}


</style>
<meta charset="UTF-8">
<title>Index</title>
</head>

<body>



<h1>A nice yellow header (sun)</h1>



<form action="OWservlet" method="get">
	<label for="search"> City:<input type="text" name="city" /><br /> </label>
		Country:<input type="text" name="country" /><br /> <input type="submit" value="go" />
	</form>
	

	
<%
  Cookie[] cookies = request.getCookies();
  String recentSearch = null;
  if (cookies != null) {
    for (Cookie cookie : cookies) {
      if (cookie.getName().equals("recentSearch")) {
        recentSearch = cookie.getValue();
        break;
      
      }
    }
  }
  
%>
<p> Recent Searches </p>
<a href="OWservlet?city=<%= recentSearch %>"><%=recentSearch %></a>





	
	
	
	<footer>This is a nice green footer that also could resemble grass :)</footer>
	</body>
</html>