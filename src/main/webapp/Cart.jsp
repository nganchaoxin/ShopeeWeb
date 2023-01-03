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
	<h1>Cart Management</h1>

	<table id="customers">
		<tr>
			<th>product ID</th>
			<th>Quantity</th>
			<th>Product Name</th>
			<th>Product Price</th>
			
		</tr>
		<c:forEach items="${arrayCart}" var="arrayCart">
			<tr>
				
				<td><c:out value="${arrayCart.product_id}" /></td>
				<td><c:out value="${arrayCart.quantity}" /></td>
				<td><c:out value="${arrayCart.product_name}" /></td>
				<td><c:out value="${arrayCart.product_price}" /></td>
				
			</tr>
		</c:forEach>

	</table>
</body>


</html>