<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title><c:out value="${page }"></c:out></title>
</head>
<body>

	<div class="container mt-3">
		<h1 class="text-center">Welcome to Library Management System</h1>

		<c:if test="${not empty msg }">
			<div class="alert alert-success">
				<b><c:out value="${msg }"></c:out></b>
			</div>

		</c:if>


		<div class="row">
			<div class="col-md-2">
				<c:if test="${page=='home' }">
					<h3>ID</h3>
					<h1>
						<c:out value="${name }"></c:out>
					</h1>


					<c:forEach items="${libraries }" var="l">
						<div class="card">
							<div class="card-body">
								<h3>
									<c:out value="${l.bookName }"></c:out>
								</h3>
								<h3>
									<c:out value="${l.author }"></c:out>
								</h3>

							</div>
						</div>


					</c:forEach>

				</c:if>
			</div>

			<div class="col-md-3">
				<h3>BookName</h3>
			</div>

			<div class="col-md-2">
				<h3>Author</h3>
			</div>

			<div class="col-md-2">
				<h3>Issue Date</h3>
			</div>

			<div class="col-md-3">
				<h3>Return Date</h3>
			</div>

			<div class="list-group">
				<a href='<c:url value='/add'></c:url>'
					class="list-group-item list-group-item-action active">Add Book</a>


				<c:if test="${page=='add' }">
					<h1 class="text-center">Add Book</h1>
					<br>
					<form:form action="saveBook" method="post" modelAttribute="library">

						<div class="form-group">
							<form:input path="bookName" cssClass="form-control"
								placeholder="Enter Book Name" />
						</div>

						<div class="form-group">
							<form:input path="author" cssClass="form-control"
								placeholder="Enter author Name" />
						</div>

						<div class="form-group">
							<form:input path="issueDate" cssClass="form-control"
								placeholder="Enter issueDate Name" />
						</div>
						
							<div class="form-group">
				
							<form:input type="date" path="issueDate" cssClass="form-control"
								placeholder="Enter issueDate Name" />
						</div>

						

						<div class="form-group">
							<form:input path="returnDate" cssClass="form-control"
								placeholder="Enter returnDate Name" />
						</div>


						<div class="form-group">

							<form:input type="date" path="issueDate" cssClass="form-control"
								placeholder="Enter issueDate Name" />
						</div>

						<div class="container text-center">
							<button class="btn btn-outline-success">Add Book</button>

						</div>

					</form:form>

				</c:if>

			</div>


		</div>

	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>