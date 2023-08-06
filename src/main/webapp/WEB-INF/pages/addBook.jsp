<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="./base.jsp" %>
</head>
<body>

	<body>

	<div class="container mt-3">

		<div class="row">

			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Fill the book details</h1>

					<form:form action="saveBook" method="post" modelAttribute="library">

					<div class="form-group">
						<label for="bookName">Book Name</label><span class="required ">*</span>
						 <input type="text" required="required" 
							class="form-control" id="bookName" aria-describedby="emailHelp"
							name="bookName" placeholder="Enter the book name here">

					</div>

					<div class="form-group">

						<label for="author">Book Author</label><span class="required ">*</span>
						
						<input class="form-control" name="author" id="author" required="required" 
							rows="5" placeholder="Enter the author name"></textarea>

					</div>
					
					<div class="form-group">

						<label for="description">Book Description</label><span
							class="required">*</span>
						<textarea class="form-control" name="description" id="description"
							required="required" rows="5"
							placeholder="Enter the book description"></textarea>

					</div>

					 

			 <div class="form-group">

				<label for="price">Book Price</label> <span class="required ">*</span>
				<input type="number" required="required" min="0" max="999"
					placeholder="Enter book Price" name="price" class="form-control"
					id="price">

			</div>  

			<div class="container text-center">

				<a href="${pageContext.request.contextPath }"
					class="btn btn-outline-danger">Back</a>
				<button type="submit" class="btn btn-primary">Add</button>

			</div>

			</form:form>

		</div>

	</div>
	</div>



</body>
</html>