<%--
    Document   : cart
    Created on : 01-Mar-2017, 09:15:58
    Author     : toqae
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.jets.onlineshopping.dto.Product"%>
<%@page import="com.jets.onlineshopping.dto.CartItem"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="total" value="0"/>
<c:forEach items="${sessionScope.products}" var="item">
    <c:set var="total" value="${total+item.value.quantity}"/>
</c:forEach>
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
                            <li class="active"> SHOPPING CART</li>
                        </ul>
                        <c:if test="${!empty requestScope.errorMsg}">
                            <div class="alert alert-block alert-error fade in">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <c:out value="${requestScope.errorMsg}"/>
                            </div>
                        </c:if>
                        <h3>  SHOPPING CART [ <small><c:if test="${!empty sessionScope.products}">
                                    <c:out value="${total}"/>
                                </c:if>

                                <c:if test="${empty sessionScope.products}">
                                    0
                                </c:if> Item(s) </small>]</h3>
                        <hr class="soft"/>

                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Description</th>
                                    <th>Quantity/Update</th>
                                    <th>Price</th>

                                </tr>
                            </thead>

                            <tbody>

                                <c:set var="count" value="${0}" />

                                <c:forEach items="${sessionScope.products}" var="item">
                                    <%-- <form action="RemoveCartItem" method="post"> --%>
                                    <tr>
                                        <td> <img width="60" src="${item.value.product.url}" alt=""/></td>
                                        <td><c:out value="${item.value.product.name}"/><br/>
                                            <c:out value="${item.value.product.description}"/></td>
                                        <td>
                                            <div class="input-append">
                                                <input class="span1" style="max-width:34px" placeholder="${item.value.quantity}" id="appendedInputButtons" size="16" type="text">
                                                <button class="btn"> <a href="DecreaseCartItem?pId=${item.key}" class="icon-minus"></a></button>
                                                <button class="btn"> <a href="IncreaseCartItem?pId=${item.key}" class="icon-plus"></a></button>
                                                <button class="btn"> <a href="RemoveCartItem?pId=${item.key}" class="icon-remove icon-white"></a></button>
                                            </div>
                                        </td>
                                        <td><c:out value="${item.value.product.price}"/></td>

                                        <c:set var="count" value="${count+item.value.quantity*item.value.product.price}" scope="page"/>
                                    </tr>
                                    <%-- </form> --%>
                                </c:forEach>

                                <tr>
                                    <td colspan="4" style="text-align:right"><strong>TOTAL =</strong>  </td>
                                    <td class="label label-important" style="display:block"> <strong> <c:out value="${pageScope.count}" /> </strong></td>
                                </tr>
                            </tbody>
                        </table>

                        <a href="/OnlineShopping/HomeServlet" class="btn btn-large"><i class="icon-arrow-left"></i> Continue Shopping </a>
                        <a href="BuyServlet?total=${pageScope.count}" class="btn btn-large pull-right">BUY</a>

                    </div>
                </div></div>
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

        <script type="text/javascript">
            $(document).ready(function () {
                var updateUrl = function() {
                    var location = window.location.href;
                    if (location.indexOf("cart.jsp") === -1) {
                        window.location.href = location.substring(0, location.lastIndexOf('/') + 1) + "cart.jsp";  
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
