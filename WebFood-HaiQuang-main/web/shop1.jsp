<%-- 
    Document   : shop
    Created on : Oct 10, 2021, 7:11:54 AM
    Author     : HaiQuang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="google-signin-client_id" content="94564163268-3inc8884iks3e324h756mj6og4oidlnh.apps.googleusercontent.com">
        <title>Shop | HaiQuang</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">




        <script>
            function signOut() {
                var auth2 = gapi.auth2.getAuthInstance();
                auth2.signOut().then(function () {
                    console.log('User signed out.');
                    window.location.replace('LogoutController');
                });
            }

            function onLoad() {
                gapi.load('auth2', function () {
                    gapi.auth2.init();
                });
            }
        </script>

    </head><!--/head-->

    <body>

        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 ">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href=""><i class="fa fa-phone"></i> +84 88888888888</a></li>
                                    <li><a href=""><i class="fa fa-envelope"></i> HaiQuang@assignment.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                    <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                    <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">

                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-user"></i>Hi: ${sessionScope.LOGIN_USER.name}</a></li>								

                                    <li><a href="cart1.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                                    <li><a href="#" onclick="signOut();"><i class="fa fa-lock"></i> Logout</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Category</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Vegetable
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="sportswear" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Salad </a></li>
                                                <li><a href="#">Water spinach </a></li>
                                                <li><a href="#">Spinach</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Fruit
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="mens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Strawberry </a></li>
                                                <li><a href="#">Apple</a></li>
                                                <li><a href="#">peaches</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Meats
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="womens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Pork</a></li>
                                                <li><a href="#">Beef</a></li>
                                                <li><a href="#">Chicken</a></li>
                                                <li><a href="#">Duck</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">dipping sauce</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">

                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Spice</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Frozen food</a></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9 padding-right">
                        <div class="features_items">
                            <h2 class="title text-center">Food Items</h2>
                            <c:forEach var="dto" items="${requestScope.LIST}">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/Raucacloai.png" alt="" />
                                                <h2>${dto.price}</h2>
                                                <p>${dto.name}</p>
                                                <c:url var="cartLink" value="MainControllerCart">
                                                    <c:param name="action" value="Add to cart"/>
                                                    <c:param name="id" value="${dto.productID}"/>
                                                </c:url>

                                                <a href="${cartLink}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2>${dto.price}</h2>
                                                    <p>${dto.name}</p>
                                                    <c:url var="cartLink" value="MainControllerCart">
                                                        <c:param name="action" value="Add to cart"/>
                                                        <c:param name="id" value="${dto.productID}"/>
                                                    </c:url>
                                                    <a href="${cartLink}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <p class="pull-left">SuperMaket © 2021 HaiQuang- Inc. All rights reserved.</p>
                    <p class="pull-right">Designed by <a href="https://www.facebook.com/profile.php?id=100006321280226">HaiQuang</a></p>
                </div>
            </div>
        </div>

    </footer><!--/Footer-->



    <script src="js/jquery.js"></script>
    <script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
</body>
</html>