<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<title><c:out value="${page }"></c:out></title>
</head>
<body>
	<div class="container mt-3">

		<h1 class="text-center">Welcome to Library</h1>


		 

		<div class="row-mt-4">

			<div class="col-md-2">

				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
						Menu</button>
					<form action="add_book.jsp">
					<input type="submit" value="submit" />
					</form>
					<a href="add_book.jsp"
						class="list-group-item list-group-item-action">Add Book</a> 
						<a
						href='<c:url value='/home'></c:url>'
						class="list-group-item list-group-item-action">View Books</a>
				</div>
				
				
				
				
			</div>
			<div class="col-md-10">
				<c:if test="${page=='home' }">
					<h1 class="text-center">All BOOKS</h1>

					<c:forEach items="${libraries }" var="l">
						<div class="text-center card">
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


				<c:if test="${page=='add' }">
					<h1 class="text-center">Add BOOKS</h1>

					<form:form action="saveBook" method="post" modelAttribute="library">

						<div class="form-group">
							<form:input path="bookName" cssClass="form-control"
								placeholder="Enter Book Name" />
						</div>

						<div class="form-group">
							<form:input path="author" cssClass="form-control"
								placeholder="Enter author Name" />
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