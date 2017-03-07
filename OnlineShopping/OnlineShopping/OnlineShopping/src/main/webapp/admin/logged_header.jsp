<%-- 
    Document   : logged_header
    Created on : 01-Mar-2017, 19:58:41
    Author     : toqae
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navbar ================================================== -->
<!--<div class="container">
    <div class="header-grid">
        <div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
            <ul>
                <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">@example.com</a></li>
                <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 892</li>
                <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="login.html">Login</a></li>
                <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="register.html">Register</a></li>
            </ul>
        </div>
        <div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
            <ul class="social-icons">
                <li><a href="#" class="facebook"></a></li>
                <li><a href="#" class="twitter"></a></li>
                <li><a href="#" class="g"></a></li>
                <li><a href="#" class="instagram"></a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="logo-nav">
        <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
            <h1><a href="index.html">Best Store <span>Shop anywhere</span></a></h1>
        </div>
        <div class="logo-nav-left1">
            <nav class="navbar navbar-default">
                 Brand and toggle get grouped for better mobile display 
                <div class="navbar-header nav_2">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html" class="act">Home</a></li>	
                         Mega Menu 
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Men's Wear</h6>
                                            <li><a href="products.html">Clothing</a></li>
                                            <li><a href="products.html">Wallets</a></li>
                                            <li><a href="products.html">Shoes</a></li>
                                            <li><a href="products.html">Watches</a></li>
                                            <li><a href="products.html">Accessories</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Women's Wear</h6>
                                            <li><a href="products.html">Clothing</a></li>
                                            <li><a href="products.html">Wallets,Bags</a></li>
                                            <li><a href="products.html">Footwear</a></li>
                                            <li><a href="products.html">Watches</a></li>
                                            <li><a href="products.html">Accessories</a></li>
                                            <li><a href="products.html">Jewellery</a></li>
                                            <li><a href="products.html">Beauty & Grooming</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Kid's Wear</h6>
                                            <li><a href="products.html">Kids Home Fashion</a></li>
                                            <li><a href="products.html">Boy's Clothing</a></li>
                                            <li><a href="products.html">Girl's Clothing</a></li>
                                            <li><a href="products.html">Shoes</a></li>
                                            <li><a href="products.html">Brand Stores</a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Furniture <b class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Home Collection</h6>
                                            <li><a href="furniture.html">Cookware</a></li>
                                            <li><a href="furniture.html">Sofas</a></li>
                                            <li><a href="furniture.html">Dining Tables</a></li>
                                            <li><a href="furniture.html">Shoe Racks</a></li>
                                            <li><a href="furniture.html">Home Decor</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Office Collection</h6>
                                            <li><a href="furniture.html">Carpets</a></li>
                                            <li><a href="furniture.html">Tables</a></li>
                                            <li><a href="furniture.html">Sofas</a></li>
                                            <li><a href="furniture.html">Shoe Racks</a></li>
                                            <li><a href="furniture.html">Sockets</a></li>
                                            <li><a href="furniture.html">Electrical Machines</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <h6>Decorations</h6>
                                            <li><a href="furniture.html">Toys</a></li>
                                            <li><a href="furniture.html">Wall Clock</a></li>
                                            <li><a href="furniture.html">Lighting</a></li>
                                            <li><a href="furniture.html">Top Brands</a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </ul>
                        </li>
                        <li><a href="short-codes.html">Short Codes</a></li>
                        <li><a href="mail.html">Mail Us</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="logo-nav-right">
            <div class="search-box">
                <div id="sb-search" class="sb-search">
                    <form>
                        <input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
                        <input class="sb-search-submit" type="submit" value="">
                        <span class="sb-icon-search"> </span>
                    </form>
                </div>
            </div>
             search-scripts 
            <script src="js/classie.js"></script>
            <script src="js/uisearch.js"></script>
            <script>
                new UISearch(document.getElementById('sb-search'));
            </script>
             //search-scripts 
        </div>
        <div class="header-right">
            <div class="cart box_1">
                <a href="checkout.html">
                    <h3> <div class="total">
                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
                        <img src="images/bag.png" alt="" />
                    </h3>
                </a>
                <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                <div class="clearfix"> </div>
            </div>	
        </div>
        <div class="clearfix"> </div>
    </div>
</div>-->
<div id="logoArea" class="navbar" style="">
    <div class="navbar-inner" style="width:97%; height:70px; top:0; ">
        <a class="brand" style="width:15%; height:15px" href="home.html" >
            <img src="themes/images/cartmagic_logo.png"  style="width:80%; height:200%" alt="Bootsshop"/>
        </a>
        <form class="form-inline navbar-search" method="post" action="products.html" style="margin-left:5%; margin-top: 1%; width:50%;">
            <select class="srchTxt" style="width:30%; right: 0; ">
                <option>All</option>
                <option>CLOTHES </option>
                <option>FOOD AND BEVERAGES </option>
                <option>HEALTH & BEAUTY </option>
                <option>SPORTS & LEISURE </option>
                <option>BOOKS & ENTERTAINMENTS </option>
            </select> 
            <input id="srchFld" class="srchTxt" type="text"  style="width: 60%; "/>

            <button type="submit" id="submitButton" class="btn btn-primary" ><i class="icon-search"></i></button>
        </form>

        <div class="dropdown pull-right" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="width: 15%; height:70px; margin-top: 1%; top: 0">
            <a href="#" class="dropdown-toggle profile-image " data-toggle="dropdown" id="menu1" >
                <img src="http://placehold.it/30x30" class="img-square special-img" style="width: 20%; height: 40px"> 
                <span style="color: white">Toqa</span> 
                <b class="caret" style="margin-top: 10%; color: wheat"></b>
            </a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenuButton" style="top:0; margin-top: 18%; border-radius: 0;">
                <li><a href="#"><i class="fa fa-cog dropdown-item"></i> View Profile</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="fa fa-sign-out dropdown-item"></i> Sign-out</a></li>
            </ul>
        </div>

    </div>
</div>



<!--<div id="logoArea" class="navbar">
    start: Row 
    <div class="row">

        start: Logo 
        <div class="logo span4">
            <a class="brand" href="#"><img src="themes/img/logo.png"></a>
        </div>
        end: Logo 



    </div>
    end: Row     
    start: Navigation	
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="pricing.html">Pricing</a></li>
                        <li><a href="contact.html">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li class="nav-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    end: Navigation
</div>-->

