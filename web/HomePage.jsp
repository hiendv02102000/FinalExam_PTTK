<%-- 
    Document   : HomePage
    Created on : Dec 31, 2021, 1:06:21 AM
    Author     : pc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Final Exam A&D</title>
        <link rel="stylesheet" href="styles/bootstrap.css" type="text/css">
        
        <style>
            <jsp:include page="styles/css/bootstrap.css"></jsp:include>
            <jsp:include page="styles/css/book.css"></jsp:include>
            </style>
        </head>

        <body>
            <header>
                <nav class="navbar-expand-md navbar-dark" style="background-color: forestgreen">
                    <a href="<%=request.getContextPath()%>/home" class="navbar-brand text-uppercase text-xl-start">Bookstore - A&D 2021</a>
                <a href="<%=request.getContextPath()%>/login" class="navbar-brand text-center">Đăng nhập</a>
                <a href="<%=request.getContextPath()%>/register" class="navbar-brand text-center">Đăng ký</a>
            </nav>
        </header>
        <br>

        <div class="container">
            <h3 class="text-center text-uppercase">Chào mừng bạn đến với cửa hàng sách!</h3>
            <br>

            <ul class="books">
                <c:forEach var="itemBook" items="${listItemBooks}">
                    <li onclick="detailBook(${itemBook.book.isbn})">

                        <div class="image">
                            <c:forEach items="${itemBook.images}" var="image">
                                <img src="${image.src}" >
                            </c:forEach>
                        </div>
                        <div class="content-book">
                            <span>${itemBook.book.title}</span> 
                            <br>

                        </div>
                      <fmt:formatNumber var="priceBook" type="number" value="${itemBook.price*(1-itemBook.discount)}" maxFractionDigits="0"/>
                        <span class="price"> <c:out value="${priceBook}"/>đ</span>
                        <c:if test="${itemBook.discount>0}">
                            <fmt:formatNumber var="priceBookNotDiscont" type="number" value="${itemBook.price}" maxFractionDigits="0"/>
                            <span class="price-not-discount"><c:out value="${priceBookNotDiscont}"/>đ</span>
                        </c:if>

                        </a
                    </li>
                </c:forEach> 

            </ul>
        </div>
        <script type="text/javascript" src="styles/js/replace.js"></script>
    </div>
</body>
</html>