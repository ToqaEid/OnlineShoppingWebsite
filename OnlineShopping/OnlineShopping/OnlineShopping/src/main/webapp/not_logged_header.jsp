<%-- 
    Document   : not_logged_header
    Created on : 01-Mar-2017, 20:08:38
    Author     : toqae
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <form class="form-inline navbar-search" method="post" action="SearchServlet" >
                    <input name="searchText" id="srchFld" class="srchTxt" type="text" />
                    <select name="searchCategory" class="srchTxt">
                        <option>All</option>
                        <option>mobiles</option>
                        <option>Laptops</option>
                        <option>HEALTH & BEAUTY </option>
                        <option>SPORTS & LEISURE </option>
                        <option>BOOKS & ENTERTAINMENTS </option>
                    </select> 
                    <button type="submit" id="submitButton" class="btn btn-primary">Search</button>
                </form>
                <ul id="topMenu" class="nav pull-right">
                    <li class="">
                        <!-- ================== Sign up =======================-->
                        <a href="register.jsp" role="button" style="padding-right:0"><span class="btn btn-large btn-success">Sign up</span></a>
                    </li>
                    <li class="">
                        <!-- ================== LOGIN =======================-->
                        <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Login</span></a>
                        <div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h3>Login Block</h3>
                            </div>
                            <div class="modal-body">
                                <form id="login_form" action="login" method="POST" class="form-horizontal loginFrm">
                                    <div id="login_failed" class="alert alert-block alert-error fade in" style="margin: 0px 14px; width: 180px">
                                        Incorrect email or password.
                                    </div>
                                    <div class="control-group">								
                                        <input type="text" name="email" id="input_email" placeholder="Email" required="true">
                                    </div>
                                    <div class="control-group">
                                        <input type="password" name="password" id="input_password" placeholder="Password" required="true">
                                    </div>
                                    <input type="hidden" name="refererUri" value="${pageContext.request.servletPath}"/>
                                    <div class="control-group" style="margin-top: 10px;">
                                        <button id="btn_login" type="submit" class="btn btn-success">Sign in</button>
                                        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </li>
                    <!-- === END OF LOGIN ===-->
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Header End====================================================================== -->
<script type="text/javascript">
    $(document).ready(function () {
        $(login_failed).hide();

        var showLogin = function () {
            $(login).modal('show');
        };

        <c:if test="${!empty requestScope.login_failed}">
            // Show Login block
            showLogin();
            // Show error alert in Login block
            $(login_failed).show();
        </c:if>
            
        $(login_form).submit(function () {
            try {
                validateEmail($(input_email).val());
            } catch (ex) {
                $(login_failed).html("Inalid email.");
                $(login_failed).show();
                return false;
            }
        });
    });
</script>
