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

        <title>Shop | History details</title>

        <link
            href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
            rel="stylesheet">

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
                max-width: 100px;
                max-height: 100px;
                min-width: 100px;
                min-height: 100px;
            }
            .breadcrumb-banner {
                padding: 0px 0 0px 0;
            }
            .organic-breadcrumb {
                margin-bottom: 100px;
                margin-top: 0px; 
            }       
        </style>
    </head>
    <body>
        <jsp:include page="./headerClient.jsp"></jsp:include>
            <section class="banner-area organic-breadcrumb">
                <div class="container">
                    <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                        <div class="col-first">
                            <h1>Order History Detail</h1>
                        </div>
                    </div>
                </div>
            </section>
            <div class="container">
                <div class="card" style="width: 900px;margin: auto;">
                    <div class="card-header" style="background-color: cadetblue; text-align: center">
                        <span class="text-white font-weight-bold">Order history information</span>
                    </div>	
                    <div class="table-responsive-sm">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Image</th>
                                    <th>Product</th>
                                    <th>Buy Quantity</th>
                                    <th>Sell Price</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${cartItemList}" var="cartItem">
                                <tr>
                                    <td> <c:url
                                            value='/imageProduct?fileName=${cartItem.product.productFileName }'
                                            var="imgUrl" />
                                        <div class="col-md-4 col-12">
                                            <div class="product-item d-flex align-items-center">
                                                <img src="${imgUrl}" id="product-thumbnail"
                                                     class="rounded img-thumbnail">

                                            </div>
                                        </div>
                                    </td>
                                    <td>${cartItem.product.name }</td>
                                    <td>${cartItem.buyQuantity}</td>
                                    <td>${cartItem.sellPrice} $</td>
                                    <td>${cartItem.sellPrice * cartItem.buyQuantity } $</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
             
            </div>
        </div>
        <form action="/Shop/client/view/history-order" class="billing-form">               
            <button class="view-btn color-2 mt-20" type="submit" style="margin-left: 855px; border: 1px solid">
                <span>Back to History</span>
            </button>
        </form>
    </div>
</div>
<hr color="red">
<script src="/Shop/static/client/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="/Shop/static/client/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="/Shop/static/client/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="/Shop/static/client/js/plugins.js"></script>
<!-- Active js -->
<script src="/Shop/static/client/js/active.js"></script>
</body>
</html>