<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="/Shop/static/client/img/logoCompany.png">
        <!-- Author Meta -->
        <meta name="author" content="CodePixar">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>List Products</title>

        <link
            href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
            rel="stylesheet">
        <!--
                                CSS
                                ============================================= -->
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
        <jsp:include page="./menuClient.jsp" />
        <section class="category-area section-gap section-gap" id="catagory" style="padding-bottom:0px">
            <div class="container" style="margin-top: 40px;">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-40">
                        <div class="title text-center">
                            <h1 class="mb-10">Camera Shop </h1>
                            <p>Who are in extremely love with eco friendly system.</p>
                        </div>
                    </div>
                </div>	
                <div class="row">
                    <div class="col-lg-12 col-md-12 mb-30">
                        <div class="content">
                            <a href="#" target="_blank">                            
                                <img class="content-image img-fluid d-block mx-auto" src="/Shop/static/client/img/main.jpg" alt="">
                            </a>
                        </div>
                    </div>

                </div>               
            </div>	
        </section>     
        <section >
            <hr color="red">
            <div class="container" style="margin-top: 40px;">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-40">
                        <div class="title text-center">
                            <h1 class="mb-10">ALL PRODUCTS</h1>
                            <p>Who are in extremely love with eco friendly system.</p>
                        </div>
                    </div>
                </div>	
                <div class="row">
                    <c:forEach items="${productList }" var="p">
                        <div class="col-lg-3 col-md-6 single-product" id="productInfo">
                            <div class="content">
                                <c:url value="/imageProduct?fileName=${p.productFileName }"
                                       var="imgUrl"></c:url>
                                <a href="/Shop/view/product-detail?id=${p.id}"><img
                                        class="img-responsive sm-margin-bottom-20" src="${imgUrl}" id="product-thumbnail" class="rounded img-thumbnail"></a>					
                                <a href="/Shop/view/product-detail?id=${p.id}"></a> 				
                            </div>
                            <div class="price">
                                <h5><a href="/Shop/view/product-detail?id=${p.id}">${p.name }</a></h5>
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