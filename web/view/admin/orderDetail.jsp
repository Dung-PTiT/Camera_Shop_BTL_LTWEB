<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Table Orders</title>
        <link rel="apple-touch-icon" sizes="76x76"
              href="/Shop/static/img/apple-icon.png">
        <link rel="icon" type="image/png" sizes="96x96"
              href="/Shop/static/admin/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <meta
            content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
            name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <link href="/Shop/static/admin/css/bootstrap.min.css" rel="stylesheet" />
        <link href="/Shop/static/admin/css/animate.min.css" rel="stylesheet" />
        <link href="/Shop/static/admin/css/paper-dashboard.css" rel="stylesheet" />
        <link href="/Shop/static/admin/css/demo.css" rel="stylesheet" />
        <link
            href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
            rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Muli:400,300'
              rel='stylesheet' type='text/css'>
        <link href="/Shop/static/admin/css/themify-icons.css" rel="stylesheet">
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
        <jsp:include page="./menuAdmin.jsp" />
        <div class="main-panel">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span> <span
                                class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
                            <span class="icon-bar bar3"></span>
                        </button>
                        <a class="navbar-brand" href="#">Order View</a>
                    </div>
                </div>
            </nav>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="content table-responsive table-full-width">
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
                                     <div style="font-size: 18px"><span class="text-danger font-weight-bold " style="margin-left:850px">Total Price: ${totalPrice} $</span></div>
                                    <hr>
                                    <form action="/Shop/admin/order/list" class="billing-form">               
                                        <button class="view-btn color-2 mt-20" type="submit" style="margin-left: 757px; border: 1px solid">
                                            <span>Back</span>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>