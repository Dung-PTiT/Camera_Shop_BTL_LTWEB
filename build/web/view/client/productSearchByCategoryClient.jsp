<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="shortcut icon" href="/Shop/static/client/img/logoCompany.png">

        <meta name="author" content="CodePixar">

        <meta name="description" content="">

        <meta name="keywords" content="">

        <meta charset="UTF-8">

        <title>List Products</title>

        <link
            href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
            rel="stylesheet">
        <link rel="stylesheet" href="/Shop/static/client/css/linearicons.css">
        <link rel="stylesheet"
              href="/Shop/static/client/css/font-awesome.min.css">
        <link rel="stylesheet" href="/Shop/static/client/css/nice-select.css">
        <link rel="stylesheet"
              href="/Shop/static/client/css/ion.rangeSlider.css" />
        <link rel="stylesheet"
              href="/Shop/static/client/css/ion.rangeSlider.skinFlat.css" />
        <link rel="stylesheet" href="/Shop/static/client/css/bootstrap.css">
        <link rel="stylesheet" href="/Shop/static/client/css/main.css">
        <style>
            #product-thumbnail {
                max-width: 180px;
                max-height: 180px;
                min-width: 180px;
                min-height: 180px; 
                border-radius: 80px;   
            }
            #product-thumbnail:hover{
                max-width: 205px;
                max-height: 205px;
                min-width: 205px;
                min-height: 205px; 
            }
            #productInfo:hover{
                border: 2px solid #eee;
                border-radius: 60px;
                background-color: #eee;
            }
        </style>
    </head>
    <body>
        <jsp:include page="./headerClient.jsp" />
        <section >
            <div class="overlay overlay-bg"></div>
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-40">
                        <div class="title text-center">
                            <h1 class="text-white mb-10">New realeased Products for
                                Everybody</h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${productSeachByCategory }" var="p">
                        <div class="col-lg-3 col-md-6 single-product" id="productInfo">
                            <div class="content">

                                <c:url value="/imageProduct?fileName=${p.productFileName }"
                                       var="imgUrl"></c:url>
                                <a href="/Shop/client/view/product-detail?id=${p.id}"><img
                                        class="img-responsive sm-margin-bottom-20" src="${imgUrl}" id="product-thumbnail" class="rounded img-thumbnail"></a>					

                                <a href="/Shop/client/view/product-detail?id=${p.id}"></a> 				

                            </div>
                            <div class="price">
                                <h4><a href="/Shop/client/view/product-detail?id=${p.id}">${p.name }</a></h4>
                                <h5>${p.price } $</h5>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <hr>
        <hr>
        <jsp:include page="./footer.jsp" />
        <script src="/Shop/static/client/js/vendor/jquery-2.2.4.min.js"></script>
        <script
            src="/Shop/static/client/https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="/Shop/static/client/js/vendor/bootstrap.min.js"></script>
        <script src="/Shop/static/client/s/jquery.ajaxchimp.min.js"></script>
        <script src="/Shop/static/client/js/jquery.nice-select.min.js"></script>
        <script src="/Shop/static/client/js/jquery.sticky.js"></script>
        <script src="/Shop/static/client/js/ion.rangeSlider.js"></script>
        <script src="/Shop/static/client/js/jquery.magnific-popup.min.js"></script>
        <script src="/Shop/static/client/js/owl.carousel.min.js"></script>
        <script src="/Shop/static/client/js/main.js"></script>
    </body>
</html>