<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<meta content="text/html; charset=utf-8">
<title>Add Product</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body> 
	<div class="container mx-auto w-50  ">
		<form action="ManagementController" method="post" accept-charset="utf-8">
			<h1 align="center">Add Product</h1>
			<h1>
				<a href="ManagementController">List Products</a>
			</h1>
			<div class="form-group">
				<label for="exampleInputEmail1">Name Of Product</label> <input
					name="name" class="form-control" placeholder="Enter name product">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Price Of Product</label> <input
					name="price" class="form-control" placeholder="Enter price product">
			</div>

			<button name="Action" value="Add Product" type="submit"
				class="btn btn-primary mt-4">Add Product</button>
		</form>
	</div>


</body>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>

</html>