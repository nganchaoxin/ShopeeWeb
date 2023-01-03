<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8">
<title>Management Product</title>
<style>
#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #fb5533;
	color: white;
}
</style>
</head>
<body>
	<h1>Product Management</h1>
	<a href="addProduct.jsp"><button>Add Product</button></a>
	<br></br>
	<table id="customers">
		<tr>
			<th>ID</th>
			<th>Name Product</th>
			<th>Price of Product</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td><c:out value="${product.id}" /></td>
				<td><c:out value="${product.name}" /></td>

				<td><c:out value="${product.price}" /></td>

				<td><a href="./update?id=${product.id}"><button>Update</button></a>
					<a href="./delete?id=${product.id}"><input type="submit"
						value="Delete" name="Action"></a></td>
			</tr>
		</c:forEach>

	</table>
</body>


</html>