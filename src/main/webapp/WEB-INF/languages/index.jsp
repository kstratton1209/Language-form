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

</style>
<body>
	<div class="wrapper">
	
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">Name</th>
	      <th scope="col">Creator</th>
	      <th scope="col">Version</th>
	      <th scope="col">Action</th>
	    </tr>
	  </thead>
	  <tbody>
	  <c:forEach items="${all}" var="language">
	    <tr>
	      <td><a href="/language/${language.id}/show" <c:out value="${language.name}"/>><c:out value="${language.name}"/></a></td>
		  <td><c:out value="${language.creator}"/></td>
		  <td><c:out value="${language.currentVersion}"/></td>
		  <td> <a href="/language/${language.id}/delete">Delete</a> <a href="/details/${language.id}/edit">Edit</a> </td>
	    </tr>
	   </c:forEach> 
	  </tbody>
	</table>
	
	
	<form:form action="/create" method="post" modelAttribute="languages">	    
	
	    <p>
		    <form:label path="name">Name</form:label>
	        <form:errors path="name"/>
	        <form:input path="name"/>
	    </p>
	    
	    <p>
		    <form:label path="creator">Creator</form:label>
	        <form:errors path="creator"/>
	        <form:input path="creator"/>
	    </p>
	    <p>
	     	<form:label path="currentVersion">Current version</form:label>
	        <form:errors path="currentVersion"/>
	        <form:input path="currentVersion"/>
	    <p></p>
 		<button class="btn btn-primary">Submit</button>
    	</p>
	</form:form> 
	
	
	
	
	</div>

</body>
</html>