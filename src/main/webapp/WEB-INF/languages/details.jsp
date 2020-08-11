<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    
</head>

<style>

    .wrapper{
      width:700px;
      margin-left: 20px;
      padding: 20px;
      justify-content: space-between;
    }
    
    .header {
    display:flex;
    justify-content: space-between;
  	align-items: center;
	text-align: center;
    
    
    }

</style>
<body>
	<div class="wrapper">
	<div class="header">
		<p>Language name: <c:out value="${language.name}"/></p>
		<a href="/">Main menu</a>
	</div>
	

	<p>Creator: <c:out value="${language.creator}"/></p>
	<p>Current Version: <c:out value="${language.currentVersion}"/></p> 
	<a href="/details/${language.id}/edit">Edit</a>
	<a href="/details/${language.id}/delete">Delete</a>
	
	
	
	
	
	</div>

</body>
</html>