<%-- 
    Document   : login
    Created on : Oct 10, 2021, 4:37:46 PM
    Author     : HaiQuang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
         <meta name="google-signin-client_id" content="94564163268-3inc8884iks3e324h756mj6og4oidlnh.apps.googleusercontent.com">
        <title>Login | FoodMarket</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       

        <script src="https://apis.google.com/js/platform.js" async defer></script>
 
    <div id="fb-root"></div>


<body>
    <header id="header"><!--header-->
        <div class="header_top"><!--header_top-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                <li><a href=""><i class="fa fa-phone"></i> +84 99999999</a></li>
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
        <div class="header-middle">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="login.jsp"><i class="fa fa-user"></i> Account</a></li>							
                                <li><a href="login.jsp" class="active"><i class="fa fa-lock"></i> Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/header-bottom-->
    </header><!--/header-->
    <section id="form"><!--form-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-1">
                    <div class="login-form"><!--login form-->
                        <h2>Login to your account</h2>
                        <form action="MainController" method="POST">
                            Username: <input type="text" name="userID" value="${param.userID}"/>

                            <br/>
                            Password: <input type="password" name="password"/>

                            <br/>
                            <input type="submit" name="action" value="Login"/>
                        </form>
                    </div><!--/login form-->
                </div>
                <div class="col-sm-1">
                    <h2 class="or">OR</h2>
                </div>
                <div class="col-sm-4">
                    <div class="signup-form"><!--sign up form-->
                        <h2>Login Google </h2>                     
                        <div class="g-signin2" data-onsuccess="onSignIn"></div>
                       <script>
                           function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId()); 
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail()); 
  var id =  profile.getId();
  var name = profile.getName();
  var email = profile.getEmail();
  console.log(id,name,email);
  window.location.replace('LoginGoogleController?id=' + id + '&name=' + name + '&email=' + email);
}
                           
                       </script>

                    </div><!--/sign up form-->
                </div>
            </div>
        </div>
    </section><!--/form-->

</footer><!--/Footer-->

<script src="js/jquery.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
</body>
</html>