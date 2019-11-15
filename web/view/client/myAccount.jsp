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
        <title>Shop | Account</title>

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
            }
            .organic-breadcrumb {            
                margin-top: 0px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="./headerClient.jsp" />
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                    <div class="col-first">
                        <h1>Product Checkout</h1>
                        <nav class="d-flex align-items-center justify-content-start">
                            <a href="checkout.html"></a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-4">
                        <div class="col-sm-6">
                            <h6 class="mb-3">Image:</h6>
                            <div>
                                <c:url value='/image?fileName=${sessionScope.user.avatarFileName }' var="imgUrl"/>
                                <img class="img-responsive sm-margin-bottom-20" src="${imgUrl}" id="product-thumbnail" class="rounded img-thumbnail"></a>
                            </div>						
                        </div>

                        <div class="col-sm-6">
                            <h6 class="mb-3">Information:</h6>
                            <hr>
                            <div>
                                <strong>Username : ${sessionScope.user.username }</strong>
                            </div>
                            <hr>
                            <div>Name: ${sessionScope.user.name }</div>
                            <hr>
                            <div>Age: ${sessionScope.user.age }</div>
                            <hr>
                            <div>Address: ${sessionScope.user.add }</div>
                        </div>
                    </div>
                    <form action="/Shop/client/view/product-list" class="billing-form">
                        <button class="view-btn color-2" type="submit" style="margin-left:  883px;border: 1px solid;">
                            <span>Back to Home</span>
                        </button>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>