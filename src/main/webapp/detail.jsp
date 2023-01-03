<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
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
			<div class="box">
				<p>Thông báo</p>
				<p>Hỗ trợ</p>
				<p>Tiếng việt</p>
				<p>Đăng ký</p>
				<p>Đăng nhập</p>
			</div>
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
						<form action="#">
							<input type="text"
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
		<div class="row bg-white mx-4 py-3">
			<div class="col-6">
				<section class="gallery">
					<div class="gallery__item">
						<input type="radio" id="img-1" checked name="gallery"
							class="gallery__selector" /> <img class="gallery__img"
							src="${detailProduct.img}" alt="" /> <label for="img-1"
							class="gallery__thumb"><img src="${detailProduct.img}"
							alt="" /></label>
					</div>
					<div class="gallery__item">
						<input type="radio" id="img-2" name="gallery"
							class="gallery__selector" /> <img class="gallery__img"
							src="${detailProduct.img}" alt="" /> <label for="img-2"
							class="gallery__thumb"><img src="${detailProduct.img}"
							alt="" /></label>
					</div>
					<div class="gallery__item">
						<input type="radio" id="img-3" name="gallery"
							class="gallery__selector" /> <img class="gallery__img"
							src="${detailProduct.img}" alt="" /> <label for="img-3"
							class="gallery__thumb"><img src="${detailProduct.img}"
							alt="" /></label>
					</div>
					<div class="gallery__item">
						<input type="radio" id="img-4" name="gallery"
							class="gallery__selector" /> <img class="gallery__img"
							src="${detailProduct.img}" alt="" /> <label for="img-4"
							class="gallery__thumb"><img src="${detailProduct.img}"
							alt="" /></label>
					</div>
				</section>
			</div>
			<div class="col-6">
				<div class="title">
					<h3>${detailProduct.name}</h3>
					<p>${detailProduct.id}</p>
				</div>
				<div class="price">
					<h4 style="color: #f25220;">${detailProduct.price}</p>
				</div>
				<div class="button-buy">
					<div class="col ">
						<button
							onclick="window.location.href='/ShopeeWeb/AddIntoCart?id=${detailProduct.id}';"
							type="button" class="btn btn-outline-* btn-lg btn-bd-primary ">Thêm
							vào giỏ hàng</button>
						<button type="button"
							class="btn btn-primary btn-lg btn-bd-primary ">Mua ngay</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer> </footer>
</body>
<script src="https://kit.fontawesome.com/c1adae5876.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>

</html>