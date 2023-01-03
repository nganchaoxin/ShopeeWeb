<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vn">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopee Việt Nam | Mua và Bán</title>
<link rel="shortcut icon" href="./Resources/img/icon-logo-shopee.png"
	type="image/x-icon">
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
				<a href="/ShopeeWeb/ManagementController">
					<p>Kênh người bán |</p>
				</a>
				
				<p>Trở thành Người bán Shopee |</p>
				<p>Tải ứng dụng |</p>
				<p>Kết nối</p>
			</div>
			<ul class="box">
				<a href="#">
					<p>Thông báo</p>
				</a>
				<a href="#">
					<p>Hỗ trợ</p>
				</a>
				<a href="#">
					<p>Tiếng việt</p>
				</a>
				<a href="/register.html">
					<p>Đăng ký</p>
				</a>
				<a href="/ShopeeWeb/OutController">
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
						<form action="SearchController?index=1" method="post">
							<input class="px-4" type="text" name="name"
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
		<!-- hero -->
		<div class="hero">
			<!-- slideshow -->
			<div class="slide-container">

				<div class="flex-left mx-0 px-0">
					<div class="slide-container-left">
						<img src="./Resources/img/slide/slide (1).jpg" alt="">
					</div>

					<div class="slide-container-left">
						<img src="./Resources/img/slide/slide (2).jpg" alt="">
					</div>

					<div class="slide-container-left">
						<img src="./Resources/img/slide/slide (3).jpg" alt="">
					</div>

					<div class="slide-container-left">
						<img src="./Resources/img/slide/slide (4).jpg" alt="">
					</div>
					<div class="slide-container-left">
						<img src="./Resources/img/slide/slide (5).jpg" alt="">
					</div>
					<div class="slide-container-left">
						<img src="./Resources/img/slide/slide (6).jpg" alt="">
					</div>
					<div class="slide-container-left">
						<img src="./Resources/img/slide/slide (7).jpg" alt="">
					</div>
					<div class="slide-container-left">
						<img src="./Resources/img/slide/slide (10).png" alt="">
					</div>

					<a class="prev" onclick="nextBtn(-1)">&#10094;</a> <a class="next"
						onclick="nextBtn(1)">&#10095;</a>
				</div>
				<!-- <br>
                <div style="text-align:center">
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div> -->
				<div class="flex-right">
					<div class="box2">
						<img src="./Resources/img/slide/slide (9).jpg" alt="">
					</div>
					<div class="box3">
						<img src="./Resources/img/slide/slide (8).jpg" alt="">
					</div>
				</div>
			</div>
			<!-- apps -->
			<div class="container">
				<div class="row pt-4 ">
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (1).gif"
							alt="">
						<p>Khung Giờ Săn Sale</p>
					</div>
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (8).png"
							alt="">
						<p>Gì cũng rẻ - Mua là Freeship</p>
					</div>
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (2).png"
							alt="">
						<p>Miễn Phí Vận Chuyển</p>
					</div>
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (3).png"
							alt="">
						<p>Bắt Trend - Giá Sốc</p>
					</div>
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (4).png"
							alt="">
						<p>Hoàn Xu Xtra Từ 100K</p>
					</div>
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (5).png"
							alt="">
						<p>Hàng Hiệu Giá Tốt</p>
					</div>
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (6).png"
							alt="">
						<p>Hàng Quốc Tế</p>
					</div>
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (7).png"
							alt="">
						<p>Nạp Thẻ & Dịch Vụ</p>
					</div>
					<div class="box-app col">
						<img src="./Resources/img/menu-services/menu-services (9).png"
							alt="">
						<p>Trúng 10 Triệu Tiền Mặt</p>
					</div>

				</div>



			</div>
		</div>
		<!-- discount -->
		<div class="discount">
			<img align="middle" src="./Resources/img/discount.png" alt="">
		</div>
		<!-- topics -->
		<div class="d-flex flex-column container-background mx-auto my-4">
			<div class="px-4 pt-4 pb-2 align-center ">
				<h4>DANH MỤC</h4>
			</div>
			<div class="d-flex flex-wrap">
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (1).png" alt="">
					<p>Ô Tô & Xe Máy & Xe Đạp</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (2).png" alt="">
					<p>Thể Thao & Du Lịch</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (3).png" alt="">
					<p>Thiết Bị Điện Gia Dụng</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (4).png" alt="">
					<p>Phụ Kiện & Trang Sức Nữ</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (5).png" alt="">
					<p>Balo & Túi Ví Nam</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (6).png" alt="">
					<p>Nhà Cửa & Đời Sống</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (7).png" alt="">
					<p>Giày Dép Nam</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (8).png" alt="">
					<p>Thời trang nữ</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (9).png" alt="">
					<p>Mẹ & Bé</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (10).png" alt="">
					<p>Thời trang nam</p>
				</div>

				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (11).png" alt="">
					<p>Thiết Bị Điện Tử</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (12).png" alt="">
					<p>Thời Trang Trẻ Em</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (13).png" alt="">
					<p>Điện Thoại & Phụ Kiện</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (14).png" alt="">
					<p>Giày Dép Nữ</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (15).png" alt="">
					<p>Sức Khỏe</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (16).png" alt="">
					<p>Nhà Sách Online</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (17).png" alt="">
					<p>Voucher & Dịch Vụ</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (18).png" alt="">
					<p>Máy Tính & Laptop</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (19).png" alt="">
					<p>Bách Hóa Online</p>
				</div>
				<div class="box-border pt-4">
					<img src="./Resources/img/menu-lists/menu-lists (20).png" alt="">
					<p>Giặt Giũ & Chăm Sóc Nhà Cửa</p>
				</div>
			</div>

		</div>

		<!-- flash-sale -->
		<div class="d-flex flex-column container-background mx-auto my-4">
			<div class="px-4 py-4">
				<img src="./Resources/img/flash-sale-text.png" alt="">
			</div>
			<div class="container-row">
				<div class="card text-center" style="width: 18rem; border: none;">
					<img style="width: 170px; height: 170px;" class="mx-auto"
						src="./Resources/img/flash-sale/flash-sale (1).jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="color: #f25220;">đ 655.000</h5>
					</div>
				</div>
				<div class="card text-center" style="width: 18rem; border: none;">
					<img style="width: 170px; height: 170px;" class="mx-auto"
						src="./Resources/img/flash-sale/flash-sale (1).png"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="color: #f25220;">đ 250.000</h5>
					</div>
				</div>
				<div class="card text-center" style="width: 18rem; border: none;">
					<img style="width: 170px; height: 170px;" class="mx-auto"
						src="./Resources/img/flash-sale/flash-sale (2).jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="color: #f25220;">đ 232.000</h5>
					</div>
				</div>
				<div class="card text-center" style="width: 18rem; border: none;">
					<img style="width: 170px; height: 170px;" class="mx-auto"
						src="./Resources/img/flash-sale/flash-sale (3).jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="color: #f25220;">đ 467.000</h5>
					</div>
				</div>
				<div class="card text-center" style="width: 18rem; border: none;">
					<img style="width: 170px; height: 170px;" class="mx-auto"
						src="./Resources/img/flash-sale/flash-sale (4).jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="color: #f25220;">đ 245.000</h5>
					</div>
				</div>
				<div class="card text-center" style="width: 18rem; border: none;">
					<img style="width: 170px; height: 170px;" class="mx-auto"
						src="./Resources/img/flash-sale/flash-sale (5).jpeg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title" style="color: #f25220;">đ 615.000</h5>
					</div>
				</div>

			</div>


		</div>
		<!-- vouchers -->
		<div class="discount">
			<img src="https://cf.shopee.vn/file/66a8000192ca8cab8ccd1a2b5fa1da7a"
				alt="">
		</div>
		<!-- shopee mall -->
		<div class="d-flex flex-column container-background mx-auto my-4">
			<div class="container-row gap-3 px-4 pt-4 pb-0">
				<h4 style="color: #d0011b;">
					SHOPEE MALL
					</h3>
					<p>|</p>
					<div class="row">
						<div class="col-2 pr-0 ">
							<img width="60px" alt=""
								src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/homepage/6c502a2641457578b0d5f5153b53dd5d.png">
						</div>

						<p class="col-10 px-0">7 Ngày Miễn Phí Trả Hàng</p>
					</div>
					<div class="row">
						<div class="col-2 pr-0 ">
							<img width="60px" alt=""
								src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/homepage/511aca04cc3ba9234ab0e4fcf20768a2.png">
						</div>

						<p class="col-10 px-0">7 Ngày Miễn Phí Trả Hàng</p>
					</div>
					<div class="row">
						<div class="col-2 pr-0 ">
							<img width="60px" alt=""
								src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/homepage/16ead7e0a68c3cff9f32910e4be08122.png">
						</div>

						<p class="col-10 px-0">7 Ngày Miễn Phí Trả Hàng</p>
					</div>
			</div>
			<hr style="border: #c9c0c0 1px solid;">
			<div class="row">
				<div class="col-4">
					<img src="./Resources/img/shopee-mall1.jpeg" alt="">
				</div>
				<div class="col-8">
					<div class="container-row">
						<div class="card text-center"
							style="width: 18em; height: auto; border: none;">
							<img style="width: 180px; height: auto;" class="mx-auto"
								src="https://cf.shopee.vn/file/4bfdc8084ac95d96ec4b5facec1228dc_xhdpi"
								class="card-img-top">
							<h5 class="card-text py-0" style="color: #d0011b;">Mua là có
								quà</h5>
						</div>
						<div class="card text-center"
							style="width: 18em; height: auto; border: none;">
							<img style="width: 180px; height: auto;" class="mx-auto"
								src="https://cf.shopee.vn/file/fe1205119e3af6c46f0962f25c3d6232_xhdpi"
								class="card-img-top">
							<h5 class="card-text py-0" style="color: #d0011b;">Mua là có
								quà</h5>
						</div>
						<div class="card text-center"
							style="width: 18em; height: auto; border: none;">
							<img style="width: 180px; height: auto;" class="mx-auto"
								src="https://cf.shopee.vn/file/3ba5d4e6f1aac0727c53ca056a87780b_xhdpi"
								class="card-img-top">
							<h5 class="card-text py-0" style="color: #d0011b;">Giảm đến
								40%</h5>
						</div>
						<div class="card text-center"
							style="width: 18em; height: auto; border: none;">
							<img style="width: 180px; height: auto;" class="mx-auto"
								src="https://cf.shopee.vn/file/0f7a5afad61bf61954ca52ef8d8e578c_xhdpi"
								class="card-img-top">
							<h5 class="card-text py-0" style="color: #d0011b;">Giá chỉ
								từ 99k</h5>
						</div>

					</div>
					<div class="container-row">
						<div class="card text-center"
							style="width: 18em; height: auto; border: none;">
							<img style="width: 180px; height: auto;" class="mx-auto"
								src="https://cf.shopee.vn/file/10b311b31630ddf1a8e8d2a6bfce5d07_xhdpi"
								class="card-img-top">
							<h5 class="card-text py-0" style="color: #d0011b;">Ưu đãi
								đến 50%</h5>
						</div>
						<div class="card text-center"
							style="width: 18em; height: auto; border: none;">
							<img style="width: 180px; height: auto;" class="mx-auto"
								src="https://cf.shopee.vn/file/65b899dc42301b489257e7d871a3dfb2_xhdpi"
								class="card-img-top">
							<h5 class="card-text py-0" style="color: #d0011b;">Deal trên
								tay</h5>
						</div>
						<div class="card text-center"
							style="width: 18em; height: auto; border: none;">
							<img style="width: 180px; height: auto;" class="mx-auto"
								src="https://cf.shopee.vn/file/49bd4737feeb3f261e2ca9835b1d8b67_xhdpi"
								class="card-img-top">
							<h5 class="card-text py-0" style="color: #d0011b;">Quà độc
								quyền</h5>
						</div>
						<div class="card text-center"
							style="width: 18em; height: auto; border: none;">
							<img style="width: 180px; height: auto;" class="mx-auto"
								src="https://cf.shopee.vn/file/3be79b0d655d0ecbb04e56ce9422b5ed_xhdpi"
								class="card-img-top">
							<h5 class="card-text py-0" style="color: #d0011b;">Mua là có
								quà</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- top search -->
		<div class="d-flex flex-column container-background mx-auto my-4 ">
			<h5 class="pt-4 px-4" style="color: #ee4d2d;">
				TÌM KIẾM HÀNG ĐẦU
				</h4>
				<hr style="border: #c9c0c0 1px solid;">
				<div class="container-row pb-4 px-auto">
					<div class="col ma-6 px-2">
						<div class="card text-center" style="width: 13rem; border: none;">
							<img style="width: 170px; height: 170px;" class="mx-auto"
								src="https://cf.shopee.vn/file/4aa904c63438ce055c6a066990e4fd05"
								class="card-img-top" alt="...">

							<div class="position-absolute bottom-0 text-light w-100"
								style="background-color: rgba(0, 0, 0, 0.5)">
								<p class="p-2 m-0">Bán 59k+ / tháng </p>
							</div>
						</div>
						<div class="pt-4">
							<h5 class="pl-4" >Bút quay </h5>
						</div>
					</div>
					<div class="col ma-6 px-2">
						<div class="card text-center" style="width: 13rem; border: none;">
							<img style="width: 170px; height: 170px;" class="mx-auto"
								src="https://cf.shopee.vn/file/12bbe8a3ee619a8aa2d92a2191301cc0"
								class="card-img-top" alt="...">

							<div class="position-absolute bottom-0 text-light w-100"
								style="background-color: rgba(0, 0, 0, 0.5)">
								<p class="p-2 m-0">Bán 59k+ / tháng </p>
							</div>
						</div>
						<div class="pt-4">
							<h5 class="pl-4" >Bút quay </h5>
						</div>
					</div>
					<div class="col ma-6 px-2">
						<div class="card text-center" style="width: 13rem; border: none;">
							<img style="width: 170px; height: 170px;" class="mx-auto"
								src="https://cf.shopee.vn/file/14a2ac0bd69dc0f9c54623d563ee4d5e"
								class="card-img-top" alt="...">

							<div class="position-absolute bottom-0 text-light w-100"
								style="background-color: rgba(0, 0, 0, 0.5)">
								<p class="p-2 m-0">Bán 59k+ / tháng </p>
							</div>
						</div>
						<div class="pt-4">
							<h5 class="pl-4" >Bút quay </h5>
						</div>
					</div>
					<div class="col ma-6 px-2">
						<div class="card text-center" style="width: 13rem; border: none;">
							<img style="width: 170px; height: 170px;" class="mx-auto"
								src="https://cf.shopee.vn/file/869e383afea64cdd7811e9efbfa79e26"
								class="card-img-top" alt="...">

							<div class="position-absolute bottom-0 text-light w-100"
								style="background-color: rgba(0, 0, 0, 0.5)">
								<p class="p-2 m-0">Bán 59k+ / tháng </p>
							</div>
						</div>
						<div class="pt-4">
							<h5 class="pl-4" >Bút quay </h5>
						</div>
					</div>
					<div class="col ma-6 px-2">
						<div class="card text-center" style="width: 13rem; border: none;">
							<img style="width: 170px; height: 170px;" class="mx-auto"
								src="https://cf.shopee.vn/file/586b9ea48feb321985e7cfda391fc848"
								class="card-img-top" alt="...">

							<div class="position-absolute bottom-0 text-light w-100"
								style="background-color: rgba(0, 0, 0, 0.5)">
								<p class="p-2 m-0">Bán 59k+ / tháng </p>
							</div>
						</div>
						<div class="pt-4">
							<h5 class="pl-4" >Bút quay </h5>
						</div>
					</div>
					<div class="col ma-6 px-2">
						<div class="card text-center" style="width: 13rem; border: none;">
							<img style="width: 170px; height: 170px;" class="mx-auto"
								src="https://cf.shopee.vn/file/1c23ccb76031614584cbdd977e31bd7a"
								class="card-img-top" alt="...">

							<div class="position-absolute bottom-0 text-light w-100"
								style="background-color: rgba(0, 0, 0, 0.5)">
								<p class="p-2 m-0">Bán 59k+ / tháng </p>
							</div>
						</div>
						<div class="pt-4">
							<h5 class="pl-4" >Bút quay </h5>
						</div>
					</div>
				</div>
		</div>
		<!-- recommend -->
		<div class="d-flex flex-column mx-auto"
			style="width: 1200px; height: auto; justify-content: center">
			<div
				class="container-background mx-auto my-4 border-recommend text-center">
				<h5 class="text-center text-uppercase fw-bold pt-4 pb-2"
					style="color: #ee4d2d;">Gợi ý hôm nay</h5>
			</div>
			<div class="mx-auto d-flex flex-column ">
				<div class="container-row wrap gap-3"
					style="justify-content: center;">
					<c:forEach items="${arrayProduct}" var="products">
						<a href="./detail?id=${products.id} " style="color: black; text-decoration:none;">
							<div class="card border-light shadow-sm  mb-2 card-hover"
								style="width: 13rem; height: 22rem;">
								<img src="${products.img}" class="card-img-top" alt="...">
								<div class="card-body py-1">
									<p class="card-text ">${products.name}</p>
									<div class="row my-0 ">
										<p class="col my-0" style="color: #ee4d2d;">đ ${products.price}</p>
										<p class="col my-0 px-1" style="color: #555555;">Đã bán 305</p>
									</div>
								</div>
							</div>
						</a>
					</c:forEach>
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
<script src="./Resources/js/main.js"></script>

</html>