<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html lang = "vn">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Resources/css/product_list.css">
	<title>Insert title here</title>
</head>
<body>
	 <main>
        <h1>Product Management</h1>
        <a href="addProduct.jsp"><button>Add Product</button></a>
        <header>
            <div class="h1">
                <h4>Id</h4>
            </div>
            <div class="h1">
                <h4>Img</h4>
            </div>
            <div class="h1">
                <h4>Name Product</h4>
            </div>
            <div class="h1">
                <h4>Price of Product</h4>
            </div>
            <div class="h1">
                <h4>Actions</h4>
            </div>
        </header>
       
        	<c:forEach items="${productList}" var="product">
	        <div class="main1">
	            <div class="slide">
	               <c:out value="${product.id}"/>
	            </div>
	            <div class="slide">
	               <c:out value="${product.img}"/>
	            </div>
	            <div class="slide">
	                <c:out value="${product.name}"/>
	            </div>
	            <div class="slide">
	                <c:out value="${product.price}"/>
	            </div>
	            
		            <div class="slide">
		                <div class="up">
		                    <a href="./update?id=${product.id}"><button>Update</button></a>
		                </div>
		                <div class="del">
		                	
		                    <a href="./delete?id=${product.id}"><input type="submit" value="Delete" name="Action"></a>
		                </div>
		            </div>   
	                
	        </div>       
	        </c:forEach>
	 	
        
    </main>
</body>
</html>