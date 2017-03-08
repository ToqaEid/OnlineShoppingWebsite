<%-- 
    Document   : logged_header
    Created on : 01-Mar-2017, 19:58:41
    Author     : toqae
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
        <div id="header">
            <div class="container">
                
                <!-- Navbar ================================================== -->
                <div id="logoArea" class="navbar">
                    <a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="navbar-inner">
                        <a class="brand" href="HomeServlet"><img src="themes/images/logo.png" alt="Bootsshop"/></a>
                        <form class="form-inline navbar-search" method="post" action="products.html" >
                            <input id="srchFld" class="srchTxt" type="text" />
                            <select class="srchTxt">
                                <option>All</option>
                                <option>CLOTHES </option>
                                <option>FOOD AND BEVERAGES </option>
                                <option>HEALTH & BEAUTY </option>
                                <option>SPORTS & LEISURE </option>
                                <option>BOOKS & ENTERTAINMENTS </option>
                            </select> 
                            <button type="submit" id="submitButton" class="btn btn-primary">Search</button>
                        </form>
                        <ul id="topMenu" class="nav pull-right">
                            <li class=""><a href="edit_profile.jsp">Edit-Profile</a></li>
                           <a href="#coupon" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Enter Coupon</span></a>
                                <div id="coupon" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h3>Coupon Code</h3>
                                    </div>
                                    <div class="modal-body">
                                        <form action="EnterCoupon" method="POST" class="form-horizontal loginFrm">
                                            <div class="control-group">								
                                                <input type="text" name="couponCode" id="coupon" pattern="[0-9]{1,8}" required="true">
                                            </div>
                                            <input type="hidden" name="refererUri" value="${pageContext.request.servletPath}"/>
                                            <button type="submit" class="btn btn-success">Enter</button>
                                            <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                                        </form>
                                    </div>
                                </div>
                            <li class=""><a href="SignOutServlet">SignOut</a></li>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End====================================================================== -->

    </body>
</html>
