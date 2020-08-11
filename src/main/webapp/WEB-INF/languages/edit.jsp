<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
   

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit language</title>
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
      font-family: sans-serif;
    }

</style>
<body>
<div class="wrapper">


	<form:form action="/details/${language.id}/update" method="post" modelAttribute="language">
	    <input type="hidden" name="_method" value="put">
	    <p>
	        <form:label path="name">Name</form:label>
	        <form:errors path="name"/>
	        <form:input path="name"/>
	    </p>
	    <p>
	        <form:label path="creator">Creator</form:label>
	        <form:errors path="creator"/>
	        <form:textarea path="creator"/>
	    </p>
	    <p>
	        <form:label path="currentVersion">Current Version</form:label>
	        <form:errors path="currentVersion"/>
	        <form:input path="currentVersion"/>
	    </p>    
	    <input type="submit" value="Update"/>
	</form:form>
	
</div>
</body>
</html>