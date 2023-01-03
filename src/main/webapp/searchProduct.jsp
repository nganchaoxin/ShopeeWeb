<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vn">
<head>
<meta content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopee Việt Nam | Mua và Bán</title>
<link rel="stylesheet" href="./Resources/css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>
<body>
	<header class="container-header">
		<div class="container">
			<div class="box">
				<p>Kênh người bán |</p>
				<p>Trở thành Người bán Shopee |</p>
				<p>Tải ứng dụng |</p>
				<p>Kết nối</p>
			</div>
			<ul class="box">
				<a href="">
					<p>Thông báo</p>
				</a>
				<a href="">
					<p>Hỗ trợ</p>
				</a>
				<a href="">
					<p>Tiếng việt</p>
				</a>
				<a href="/register.html">
					<p>Đăng ký</p>
				</a>
				<a href="/signUp">
					<p>Đăng nhập</p>
				</a>
		</div>
		<div class="container-below">
			<a href="/ShopeeWeb">
        		<div class="logo">
                <img src="./Resources/img/shopee-logo-vector.png" alt="">
            </div>
            </a>
			<div class="search">
				<div class="input-background">
					<div class="top-search">
						<form action="SearchController" method="post">
							<input type="text" name="name"
								placeholder="Đăng ký và nhận voucher bạn mới đến 70k!">
							</input>
						</form>
					</div>
					<button>
						<i class="fa fa-search" style="font-size: 18px;"> </i>
					</button>
				</div>

				<div class="keyword-search">
					<div>Áo khoác</div>
					<div>Dép</div>
					<div>Túi xách nữ</div>
					<div>Áo croptop</div>
				</div>

			</div>

			<div class="buy">
				<p>
					<i class="fa-solid fa-cart-shopping fa-xl"></i>

				</p>
			</div>
		</div>
	</header>
	<div class="body">
		<div class="mx-5">
			<div class="container-row wrap gap-3">
				<c:forEach items="${listSearch}" var="listSearch">
					<a href="./detail?id=${listSearch.id} " style="color: black;">
						<div class="card border-light shadow-sm  mb-2"
							style="width: 13rem; height: 25rem;">
							<img style="width: 13rem; height: 13rem;" src="${listSearch.img}"
								class="card-img-top" alt="...">
							<div class="card-body pa-2">
								<p class="card-text fs-6 ">${listSearch.name}</p>
								<div class="row my-0 ">
									<p class="col my-0  ">${listSearch.price}</p>
									<!-- <p class="col my-0  px-1">${users.email}</p> -->
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<!-- pagination -->
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-lg d-flex flex-row justify-content-center">
				<li class="page-item d-flex flex-row justify-content-center">
					<c:forEach begin="1" end="${endPage}" var="i">
						<a class="page-link" href="SearchController?index=${i}&name=${name}">${i}</a>
					</c:forEach>
				</li>
					
				
			</ul>
		</nav>

	</div>

</body>
<script src="https://kit.fontawesome.com/c1adae5876.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script src="./Resources/js/main.js"></script>
</html>