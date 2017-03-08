<%--
    Document   : home
    Created on : 01-Mar-2017, 20:00:39
    Author     : toqae
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Online Shopping cart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--Less styles -->
        <!-- Other Less css file //different less files has different color scheam
             <link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
             <link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
             <link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
        -->
        <!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
        -->     <script src="themes/js/jquery.js" type="text/javascript"></script> 
        <script src="bootstrap/js/script.js"></script>

        <!-- Bootstrap style -->
        <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
        <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
        <!-- Bootstrap style responsive -->
        <link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
        <link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
        <!-- Google-code-prettify -->
        <link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
        <!-- fav and touch icons -->
        <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
        <style type="text/css" id="enject"></style>
    </head>
    <body>

        <div id="mainBody" style="min-height:405px;">
            <div class="container">
                <div class="row">
                    <c:if test="${empty sessionScope.logged}">
                        <jsp:include page="not_logged_header.jsp"/>
                    </c:if>

                    <c:if test="${!empty sessionScope.logged}">
                        <jsp:include page="logged_header.jsp"/>
                    </c:if>

                    <!-- Sidebar ================================================== -->
                    <jsp:include page="sidebar.jsp"/>
                    <!-- Sidebar end=============================================== -->
                    <div class="span9">
                        <c:if test="${!empty requestScope.errorMsg}">
                            <div class="alert alert-block alert-error fade in">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <c:out value="${requestScope.errorMsg}"/>
                            </div>
                        </c:if>
                        <c:if test="${!empty requestScope.success}">
                            <div class="alert alert-block alert-success fade in">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <c:out value="${requestScope.success}"/>
                            </div>
                        </c:if>
                        <h4>Category Products </h4>
                        <ul class="thumbnails">
                            <c:forEach items="${requestScope.homeProducts}" var="product">

                                <li class="span3">
                                    <div class="thumbnail">
                                        <a  href='ProductDetails?pId=${product.id}'><img src="${product.url}" alt="" style="width:260px; height:200px"/></a>
                                        <div class="caption">
                                            <h5><c:out value="${product.name}"/></h5>
                                            <p> 
                                                <a class="btn btn-primary">$<c:out value="${product.price}"/></a>
                                            </p>

                                            <h4 style="text-align:center"><a class="btn" href="ProductDetails?pId=${product.id}"> <i class="icon-zoom-in"></i></a> <a class="btn" href="AddCartServlet?pId=${product.id}&pQuantity=1">Add to <i class="icon-shopping-cart"></i></a></h4>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>

                            <!--                            <li class="span3">
                                                            <div class="thumbnail">
                                                                <a  href="product_details.html"><img src="themes/images/products/7.jpg" alt=""/></a>
                                                                <div class="caption">
                                                                    <h5>Product name</h5>
                                                                    <p>
                                                                        Lorem Ipsum is simply dummy text.
                                                                    </p>
                                                                    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="span3">
                                                            <div class="thumbnail">
                                                                <a  href="product_details.html"><img src="themes/images/products/8.jpg" alt=""/></a>
                                                                <div class="caption">
                                                                    <h5>Product name</h5>
                                                                    <p>
                                                                        Lorem Ipsum is simply dummy text.
                                                                    </p>
                                                                    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="span3">
                                                            <div class="thumbnail">
                                                                <a  href="product_details.html"><img src="themes/images/products/9.jpg" alt=""/></a>
                                                                <div class="caption">
                                                                    <h5>Product name</h5>
                                                                    <p>
                                                                        Lorem Ipsum is simply dummy text.
                                                                    </p>
                                                                    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="span3">
                                                            <div class="thumbnail">
                                                                <a  href="product_details.html"><img src="themes/images/products/10.jpg" alt=""/></a>
                                                                <div class="caption">
                                                                    <h5>Product name</h5>
                                                                    <p>
                                                                        Lorem Ipsum is simply dummy text.
                                                                    </p>
                                                                    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="span3">
                                                            <div class="thumbnail">
                                                                <a  href="product_details.html"><img src="themes/images/products/11.jpg" alt=""/></a>
                                                                <div class="caption">
                                                                    <h5>Product name</h5>
                                                                    <p>
                                                                        Lorem Ipsum is simply dummy text.
                                                                    </p>
                                                                    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
                                                                </div>
                                                            </div>
                                                        </li>-->
                        </ul>

                    </div>
                </div>
            </div>
        </div>
        <!-- Footer ================================================================== -->
        <jsp:include page="footer.jsp"/>
        <!-- Placed at the end of the document so the pages load faster ============================================= -->
        <script src="themes/js/jquery.js" type="text/javascript"></script>
        <script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="themes/js/google-code-prettify/prettify.js"></script>

        <script src="themes/js/bootshop.js"></script>
        <script src="themes/js/jquery.lightbox-0.5.js"></script>

        <!-- Themes switcher section ============================================================================================= -->
        <script type="text/javascript">
            $(document).ready(function () {
                var location = window.location.href;
                if (location.indexOf("SignOutServlet") !== -1) {
                    window.location.href = location.substring(0, location.lastIndexOf('/') + 1) + "HomeServlet";
                }

                $(login).on('hidden', function () {
                    $(login_failed).hide();
                    var location = window.location.href;
                    if (location.indexOf("HomeServlet") === -1) {
                        window.location.href = location.substring(0, location.lastIndexOf('/') + 1) + "HomeServlet";
                    }
                });

                $('.btn').click(function () {
            <c:set var="product_id" scope="session" />
                            $('#${product_id}') = $(this).attr("href").split('=')[1];
                });
            });
        </script>
    </body>
</html>
