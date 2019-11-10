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
        <title>Shop</title>

        <link
            href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
            rel="stylesheet">
        <!--
                    CSS
                    ============================================= -->
        <link rel="stylesheet" href="/Shop/static/client/css/linearicons.css">
        <link rel="stylesheet" href="/Shop/static/client/css/owl.carousel.css">
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
                max-width: 150px;
                max-height: 150px;
                min-width: 150px;
                min-height: 150px;
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
        <jsp:include page="./headerClient.jsp"></jsp:include>

            <section class="banner-area organic-breadcrumb">
                <div class="container">
                    <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                        <div class="col-first">
                            <h4 class="text-white">Quick view cart</h4>
                        </div>
                    </div>
                </div>
            </section>

            <div class="container">
                <div class="cart-title">
                    <div class="row">
                        <div class="col-md-4">
                            <h6 class="ml-15">Product</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Price</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Buy</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Total</h6>
                        </div>
                        <div class="col-md-2">
                            <h6>Select</h6>
                        </div>
                    </div>
                </div>
                <div class="cart-single-item">
                <c:forEach items="${sessionScope.cart }" var="itemMap">
                    <div class="row align-items-center">
                        <c:url
                            value='/imageProduct?fileName=${itemMap.value.product.productFileName }'
                            var="imgUrl" />
                        <div class="col-md-4 col-12">
                            <div class="product-item d-flex align-items-center">
                                <img src="${imgUrl}" id="product-thumbnail"
                                     class="rounded img-thumbnail">
                                <h6>${itemMap.value.product.name }</h6>
                            </div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div class="price">${itemMap.value.sellPrice }$</div>
                        </div>
                        <div class="col-md-2 col-6">
                            <div class="price">${itemMap.value.buyQuantity }</div>
                        </div>


                        <div class="col-md-2 col-12">
                            <div class="total">${itemMap.value.sellPrice * itemMap.value.buyQuantity }
                                $</div>
                        </div>
                        <div class="col-md-2 col-12">
                            <a
                                href="<c:url value='/client/cart-item/delete?productId=${itemMap.key}'/>"><i class="fa fa-remove text-danger" style="font-size: 30px"></i></a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <hr>

    </div>


    <jsp:include page="./footer.jsp"></jsp:include>

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