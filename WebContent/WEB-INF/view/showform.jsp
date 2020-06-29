<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC Form Tags</title>
</head>
<body>
	<h1>Hello! Welcome to Spring MVC Form Tags App</h1> <hr><br>
	<form:form action="processForm" modelAttribute="student"> <!-- attribute name must be same as you have given in the java code -->
		First Name : <form:input path="firstName"/> <br><br>
		Last Name : <form:input path="lastName"/> <br><br>
		
		<!-- Country : <form:select path="country">
					<form:option value="Not Selected" label="Country"/>
					<form:option value="India" label="India"/>
					<form:option value="France" label="France"/>
					<form:option value="Germany" label="Germany"/>
					<form:option value="Russia" label="Russia"/>
					<form:option value="UK" label="UK"/>	
				  </form:select> <br><br> 
			-->
			
		<!-- Instead of hardcoding these values in here, if you wanna read it from the POJO class then do this -->
		Country : <form:select path="country">
					
					<form:options items="${student.countryOptions}"/> <!-- items refers to collection of data, it will call the getter method like student.getCountryOptions and will return a list of country values -->
				
				</form:select> <br><br>
		
		<!-- Radio Button -->
		<!-- Favourite Language : 
				Java <form:radiobutton path="favouriteLanguage" value="Java"/>
				C# <form:radiobutton path="favouriteLanguage" value="C#"/>
				PHP <form:radiobutton path="favouriteLanguage" value="PHP"/>
				.NET <form:radiobutton path="favouriteLanguage" value=".Net"/> -->
		
		Favourite Language : 
			<form:radiobuttons path="favouriteLanguage" items="${student.favouriteLanguageOptions}" /> <br><br>  
		
		<!-- Check Boxes -->
		Operating Systems : 
			Linux <form:checkbox path="operatingSystem" value="Linux"/>
			Mac OS <form:checkbox path="operatingSystem" value="Mac OS"/>
			MS Windows <form:checkbox path="operatingSystem" value="MS Windows"/> <br><br>
		
		
		
		<input type="submit" value="submit">
	</form:form>
</body>
</html>





