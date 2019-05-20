<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="resources/background.css"/>">
<meta charset="ISO-8859-1">
<title>ELECTRICITY</title>
</head>
<body class="bg">
	<div class="colour">
		<div class ="text-center">
			<h1>ELECTRICITY</h1>
		</div>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    			<ul class="navbar-nav">
      			<li class="nav-item active"><a class="nav-link" href="/ElectricityWeb">Home</a></li>
      			<li class="nav-item"><a class="nav-link" href="product">Products</a></li>
      			<li class="nav-item"><a class="nav-link" href="shop">Shops</a></li>
      			<li class="nav-item"><a class="nav-link" href="contact">Contact Us</a></li>
      			<c:choose>
  					<c:when  test="${sessionScope.username != null}">
    					<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
    					<li class="nav-item"><a class="nav-link">${sessionScope.username}</a></li>
				  	</c:when>
				  	<c:otherwise>
				  		<li class="nav-item"><a class="nav-link" href="showLoginForm">Login</a></li>
				  	</c:otherwise>
				</c:choose>
    			</ul>
		</nav>
		<div class="container">
			This website gives information about gadget items(such as laptop, handphone etc) and where to sell it.
			${sessionScope.username }
		</div>
	</div>
</body>
</html>