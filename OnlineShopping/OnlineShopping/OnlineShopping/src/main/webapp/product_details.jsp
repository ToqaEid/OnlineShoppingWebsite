<%--
    Document   : product_details
    Created on : 01-Mar-2017, 03:19:24
    Author     : toqae
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.jets.onlineshopping.dto.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Bootshop online Shopping cart</title>
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
        <script src="themes/js/less.js" type="text/javascript"></script> -->

        <script src="themes/js/jquery.js" type="text/javascript"></script> 
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
        <c:if test="${empty sessionScope.logged}">
            <jsp:include page="not_logged_header.jsp"/>
        </c:if>

        <c:if test="${!empty sessionScope.logged}">
            <jsp:include page="logged_header.jsp"/>
        </c:if>
        <!-- Header End====================================================================== -->
        <div id="mainBody" style="min-height:405px;">
            <div class="container">
                <div class="row">

                    <div class="span9">
                        <ul class="breadcrumb">
                            <li><a href="HomeServlet">Home</a> <span class="divider">/</span></li>
                            <li class="active">product Details</li>
                        </ul>
                        <div class="row">
                            <div id="gallery" class="span3">
                                <a href="${requestScope.product_details.url}" title="${requestScope.product_details.name}">
                                    <img src="${requestScope.product_details.url}" style="width:100%" alt="${requestScope.product_details.name}"/>
                                </a>
                                <div id="differentview" class="moreOptopm carousel slide">

                                    <!--
                                                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                                    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                                    -->
                                </div>
                            </div>
                            <div class="span6">
                                <h3><c:out value="${requestScope.product_details.name}"/></h3>
                                <hr class="soft"/>
                                <form class="form-horizontal qtyFrm" action="AddCartServlet" method="get">
                                    <div class="control-group">
                                        <label class="control-label"><span><c:out value="${requestScope.product_details.price}"/></span></label>
                                        <div class="controls">
                                            <input type="number" class="span1" name="pQuantity" placeholder="Qty." value="1" min="1" max ="<c:out value="${requestScope.product_details.stockQuantity}"/>"/>
                                        </div>
                                        <hr class="soft"/>
                                        <input type="Hidden" name="pId" value="${requestScope.product_details.id}"/>

                                        <c:if test="${requestScope.product_details.stockQuantity>0}">
                                            <button type="submit" class="btn btn-large btn-primary pull-right"> Add to cart <i class=" icon-shopping-cart"></i></button>
                                            </c:if>
                                            <c:if test="${requestScope.product_details.stockQuantity<=0}">
                                            <button type="submit" class="btn btn-large btn-primary pull-right" disabled=""> Out of Stock</button>
                                            </c:if>
                                    </div>
                                </form>

                            </div>

                            <div class="span9">
                                <ul id="productDetail" class="nav nav-tabs">
                                    <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
                                    <li><a href="#profile" data-toggle="tab">Related Products</a></li>
                                </ul>
                                <div id="myTabContent" class="tab-content">
                                    <div class="tab-pane fade active in" id="home">
                                        <h4>Product Information</h4>
                                        <p><c:out value="${requestScope.product_details.description}"/></p>


                                    </div>
                                    <div class="tab-pane fade" id="profile">
                                        <hr class="soft"/>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="blockView">
                                                <ul class="thumbnails">
                                                    <c:forEach items="${requestScope.related_products}" var="p">
                                                        <li class="span3">
                                                            <div class="thumbnail">
                                                                <a href="ProductDetails?pId=${p.id}"><img src="${p.url}" alt="" style="width:260px; height:200px"/></a>
                                                                <div class="caption">
                                                                    <h5><c:out value="${p.name}"/></h5>

                                                                    <h4 style="text-align:center">
                                                                        <p><a class="btn btn-primary" >&euro;<c:out value="${p.price}"/></a></p>
                                                                        <a class="btn" href="ProductDetails?pId=${p.id}">
                                                                            <i class="icon-zoom-in"></i></a>
                                                                            <c:if test="${requestScope.product_details.stockQuantity>0}">
                                                                            <a class="btn" href="AddCartServlet?pId=${p.id}&pQuantity=1">Add to <i class="icon-shopping-cart"></i></a>
                                                                            </c:if>
                                                                            <c:if test="${requestScope.product_details.stockQuantity<=0}">
                                                                            <button class="btn" href="#" disabled=""><strong>Out f Stock</strong></button></h4>
                                                                        </c:if>


                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                                <hr class="soft"/>
                                            </div>
                                        </div>
                                        <br class="clr">
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div> </div>
        </div>
        <!-- MainBody End ============================= -->
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
                var updateUrl = function() {
                    var location = window.location.href;
                    var originLocation = "ProductDetails?pId=";
                    originLocation = originLocation.concat(${sessionScope.pId});
                    if (location.indexOf(originLocation) === -1) {
                        window.location.href = location.substring(0, location.lastIndexOf('/') + 1) + originLocation;  
                    }  
                };
                
                <c:if test="${empty sessionScope.logged}">
                    $(login).on('hidden', function () {
                        $(login_failed).hide();
                        updateUrl();
                    });
                </c:if>
                
                <c:if test="${!empty sessionScope.logged}">
                    updateUrl();
                </c:if>
            });
        </script>
    </body>
</html>
