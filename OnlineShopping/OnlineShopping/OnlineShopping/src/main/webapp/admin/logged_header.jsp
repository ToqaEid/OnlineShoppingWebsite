<%-- 
    Document   : logged_header
    Created on : 01-Mar-2017, 19:58:41
    Author     : toqae
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navbar ================================================== -->

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





