<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC Form Tags</title>
</head>
<body>
	<h1>Hello! Welcome to Spring MVC Form Tags App</h1> <hr><br>
	Student Confirmation : ${student.firstName} ${student.lastName} <br><br>
	
	Country : ${student.country} <br><br>
	
	Favourite Language : ${student.favouriteLanguage} <br><br>
	
	Operating Systems : 
				<ul>
					<c:forEach var="temp" items="${student.operatingSystem}">
						<li> ${temp} </li>
					</c:forEach>
				</ul>
	
</body>
</html>