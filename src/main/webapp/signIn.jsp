<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập tài khỏan | Shopee </title>
    <link rel="stylesheet" href="./Resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>

<body>
    <header class=" container-fluid bg-white  pt-3">
        <div class="row d-flex justify-content-between px-4 ">

            <div class="col-2 text-start align-self-center pb-4">
                <a href="" class="navbar-brand">
                    <img src="./Resources/img/logo-orange-shopee.png" alt="" width="150" height="50">
                </a>
            </div>
            <div class="col align-self-center text-start">
                <h3>Đăng Nhập </h3>
            </div>

            <div class="col-8 text-end align-self-center">
                <a href="">
                    <p>Bạn cần giúp đỡ?</p>
                </a>
            </div>
        </div>
    </header>

    <body class="body" id="background-register">
        <div class="col d-flex justify-content-end container ">
            <form action="OutController" method="post" name="user_session" class="signUp " id="signupForm">
                <h1 class="signUpTitle pb-4">Đăng Nhập</h1>
                <input type="text" class="signUpInput" name="Username" placeholder="Email/Số điện thoại/Tên đăng nhập" autofocus
                    required>
                <input type="password" class="signUpInput" name="Password" placeholder="Mật khẩu" required>

                <input type="submit" value="Đăng nhập" class="signUpButton">
            </form>
        </div>
    </body>


    <footer>

    </footer>
</body>
<script src="https://kit.fontawesome.com/c1adae5876.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>

</html>