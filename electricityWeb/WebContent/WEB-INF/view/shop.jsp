<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="resources/background.css"/>">
<meta charset="ISO-8859-1">
<title>ELECTRICITY</title>
</head>
<body class="bg">
	<div class="colour">
		<div class="text-center">
			<h1>ELECTRICITY</h1>
		</div>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="/ElectricityWeb">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="product">Products</a></li>
				<li class="nav-item"><a class="nav-link" href="shop">Shops</a></li>
				<li class="nav-item"><a class="nav-link" href="contact">Contact
						Us</a></li>
				<c:choose>
					<c:when test="${sessionScope.username != null}">
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
			<div class="row">
				<div class="col-sm-3 order-1">
					<div class="border p-4 rounded mb-4">
						<c:choose>
							<c:when test="${sessionScope.username != null}">

								<h3 class="mb-3 h6 text-uppercase text-black d-block">Admin
									Privileges</h3>
								<ul class="list-unstyled mb-0">
									<li class="mb-1"><a
										href="${pageContext.request.contextPath}/shop-edit"
										class="d-flex"><span>Shop Settings</span></a></li>
								</ul>

							</c:when>
						</c:choose>
					</div>
				</div>

				<div class="col-sm-9 order-2">
					<c:forEach var="tempSellers" items="${sellers}">
						<c:url var="shopDetailsLink" value="/shop-detail">
							<c:param name="sellerId" value="${tempSellers.sellerId}" />
						</c:url>
						<br>
						<br>
						<div class="row border">
							<div class="col-sm-7">
								<img style="width: 450px; height: 250px;"
									src="<c:url value="/resources/img/${tempSellers.sellerImage}"/>" />
							</div>
							<div class="col-sm-5">
								<ul class="list-unstyled mb-0">
									<li class="mb-1"><span>${tempSellers.sellerName}</span></li>
									<li class="mb-1"><span>${tempSellers.sellerAddress}</span></li>
									<li class="mb-1"><span><a href="${shopDetailsLink}">Details</a></span></li>
								</ul>
							</div>
						</div>
						<br>
						<br>
					</c:forEach>
				</div>
			</div>
		</div>

	</div>
</body>
</html>