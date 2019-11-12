<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="/Shop/static/client/img/logoCompany.png">
        <meta name="author" content="CodePixar">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta charset="UTF-8">
        <title>Shop-Product Details</title>
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
                max-width: 300px;
                max-height: 300px;
                min-width: 300px;
                min-height: 300px;
                margin-left: 120px;
            }
            .breadcrumb-banner {
                padding: 0 0 0 0; 
            }
            .organic-breadcrumb {
                margin-bottom: 40px; 
                margin-top: 62px;
            }
            .breadcrumb-banner .col-first {
                margin-top: 43px;
                width: 38%;
                padding-right: 15px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="./menuClient.jsp" />
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                    <div class="col-first">
                        <h4 class="text-white">Product Detail Page</h4>
                    </div>
                </div>
            </div>
        </section>
        <!-- Start Product Details -->
        <div class="container">
            <div class="product-quick-view">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <c:url value="/imageProduct?fileName=${product.productFileName }"
                               var="imgUrl"></c:url>
                        <img class="img-responsive sm-margin-bottom-20" src="${imgUrl}" id="product-thumbnail" class="rounded img-thumbnail"
                             alt=""></a>
                    </div>

                    <div class="col-lg-6">
                        <div class="quick-view-content">
                            <div class="top">
                                <h3>${product.name }</h3>
                                <hr>
                                <div class="price d-flex align-items-center">
                                    <span class="lnr lnr-tag"></span> <span class="ml-10">${product.price }
                                        $</span>
                                </div>
                                <div class="category">
                                    Category: <span>${product.category.name}</span>
                                </div>
                            </div>
                            <div class="middle">
                                <p class="content">${product.description}</p>
                            </div>
                            <div>
                                <div class="quantity-container d-flex align-items-center mt-15">
                                    <form method="get"
                                          action="/Shop/cartItem/add">
                                        <input type="text" value="${product.id }" name="productId" hidden=""
                                               class="quantity-amount ml-15">
                                        <button type='button' class="quantity-button" name='subtract'
                                                onclick='javascript: document.getElementById("qty").value--' value='-'>-</button>
                                        <input type='text' class="quantity-field" name='quantity'
                                               value="1" id='qty'/>
                                        <button type='button' class="quantity-button" name='add'
                                                onclick='javascript: document.getElementById("qty").value++;'
                                                value='+'>+</button>
                                        <button type="submit" class="btn-u btn-u-sea-shop btn-u-lg">Add
                                            to Cart</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- start footer Area -->
        <jsp:include page="./footer.jsp" />
        <script src="/Shop/static/client/js/vendor/jquery-2.2.4.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="/Shop/static/client/js/vendor/bootstrap.min.js"></script>
        <script src="/Shop/static/client/js/jquery.ajaxchimp.min.js"></script>
        <script src="/Shop/static/client/js/jquery.nice-select.min.js"></script>
        <script src="/Shop/static/client/js/jquery.sticky.js"></script>
        <script src="/Shop/static/client/js/ion.rangeSlider.js"></script>
        <script src="/Shop/static/client/js/jquery.magnific-popup.min.js"></script>
        <script src="/Shop/static/client/js/owl.carousel.min.js"></script>
        <script src="/Shop/static/client/js/main.js"></script>
    </body>
</html>