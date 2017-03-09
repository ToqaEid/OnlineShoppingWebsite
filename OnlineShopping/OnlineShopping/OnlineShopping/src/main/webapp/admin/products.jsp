<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

        <!-- Bootstrap style --> 
        <script src="bootstrap/js/script.js"></script>
        <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
        <link href="admin/themes/css/base.css" rel="stylesheet" media="screen"/>
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
        <jsp:include page="/admin/adminHeader.jsp"/>
    </div>
    <!-- Header End====================================================================== -->
    
    <div id="mainBody" style="min-height:405px;">
        <div class="container">
            <div class="row">
                 
                <!-- Sidebar ================================================== -->
                <jsp:include page="Sidebar.jsp"/>
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
                    <ul class="breadcrumb">
                        <li><a href="home">Home</a> <span class="divider">/</span></li>
                        <li class="active">Products Name</li>
                    </ul>
                    <h3> Products Name </h3>	

                    <hr class="soft"/>


                    <br class="clr"/>
                    <div class="tab-content">
                        <div class="tab-pane  active" id="blockView">
                            <ul class="thumbnails">
                                <c:forEach items="${requestScope.homeProducts}" var="product">
                                    <li class="span3">
                                        <div class="thumbnail" >
                                            <a href="product_details.html" >
                                                <img src="${product.url}" alt="" style="width:260px; height:200px"/>
                                            </a>
                                            <div class="caption">
                                                <h5><c:out value="${product.name}"/></h5>
                                                <p> 
                                                    <a class="btn btn-primary">$<c:out value="${product.price}"/></a>
                                                </p>
                                                <h4 style="text-align:center">
                                                    <a class="btn" href="/OnlineShopping/ProductDetailsButton?pId=${product.id}"> <i class="icon-zoom-in"></i></a>
                                                    <a class="btn" href="/OnlineShopping/EditProductServlet?pId=${product.id}"><i class="icon-edit"></i></a> 
                                                    <a class="btn" href="/OnlineShopping/RemoveProductButtonServlet?pId=${product.id}"><i class="icon-trash"></i></a>
                                                </h4>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                                <!--                                <li class="span3">
                                                                    <div class="thumbnail">
                                                                        <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                                                        <div class="caption">
                                                                            <h5>Manicure &amp; Pedicure</h5>
                                                                            <p> 
                                                                                <a class="btn btn-primary">&euro;222.00</a>
                                                                            </p>
                                                                            <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#"><i class="icon-edit"></i></a> <a class="btn" href="#"><i class="icon-trash"></i></a></h4>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="span3">
                                                                    <div class="thumbnail">
                                                                        <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                                                        <div class="caption">
                                                                            <h5>Manicure &amp; Pedicure</h5>
                                                                            <p> 
                                                                                <a class="btn btn-primary">&euro;222.00</a>
                                                                            </p>
                                                                            <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#"><i class="icon-edit"></i></a> <a class="btn" href="#"><i class="icon-trash"></i></a></h4>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="span3">
                                                                    <div class="thumbnail">
                                                                        <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                                                        <div class="caption">
                                                                            <h5>Manicure &amp; Pedicure</h5>
                                                                            <p> 
                                                                                <a class="btn btn-primary">&euro;222.00</a>
                                                                            </p>
                                                                            <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#"><i class="icon-edit"></i></a> <a class="btn" href="#"><i class="icon-trash"></i></a></h4>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="span3">
                                                                    <div class="thumbnail">
                                                                        <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                                                        <div class="caption">
                                                                            <h5>Manicure &amp; Pedicure</h5>
                                                                            <p> 
                                                                                <a class="btn btn-primary">&euro;222.00</a>
                                                                            </p>
                                                                            <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#"><i class="icon-edit"></i></a> <a class="btn" href="#"><i class="icon-trash"></i></a></h4>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="span3">
                                                                    <div class="thumbnail">
                                                                        <a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
                                                                        <div class="caption">
                                                                            <h5>Manicure &amp; Pedicure</h5>
                                                                            <p> 
                                                                                <a class="btn btn-primary">&euro;222.00</a>
                                                                            </p>
                                                                            <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#"><i class="icon-edit"></i></a> <a class="btn" href="#"><i class="icon-trash"></i></a></h4>
                                                                        </div>
                                                                    </div>
                                                                </li>-->
                            </ul>
                            <hr class="soft"/>
                        </div>
                    </div>


                    <!--                    <div class="pagination">
                                            <ul>
                                                <li><a href="#">&lsaquo;</a></li>
                                                <li><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#">4</a></li>
                                                <li><a href="#">...</a></li>
                                                <li><a href="#">&rsaquo;</a></li>
                                            </ul>
                                        </div>-->
                    <br class="clr"/>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
<jsp:include page="/admin/adminFooter.jsp"/>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
<script src="themes/js/jquery.js" type="text/javascript"></script>
<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
<script src="themes/js/google-code-prettify/prettify.js"></script>

</div>
</div>
</div>
<span id="themesBtn"></span>
</body>
</html>
