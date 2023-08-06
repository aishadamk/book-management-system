<html>
<head>

<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

</head>
<body>
	<div class="container mt-3">
		<div class="row">

			<div class="col-md-12">

				<h3 class="text-center mb-3">List of available books</h3>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">BookId</th>
							<th scope="col">Book Name</th>
							<th scope="col">Author</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${libraries }" var="b">

							<tr>
								<th scope="row">${b.bookId }</th>
								<td>${b.bookName }</td>
								<td>${b.author }</td>
								<td>${b.description }</td>
								<td class="font-weight-bold">&#x20AC; ${b.price }</td>
								<td><a href="delete-book/${b.bookId }">Delete<i
										class="fas fa-check" style="font-size: 20px;"></i></a> <a
									href="update-book/${b.bookId }">Update<i
										class="fa-solid fa-pen-to-square text-primary"
										style="font-size: 20px;"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">

					<a href="${pageContext.request.contextPath }"
						class="btn btn-outline-danger">Back</a>
					<!-- <button type="submit" class="btn btn-primary">Add</button> -->

				</div>

			</div>

		</div>

	</div>


</body>
</html>