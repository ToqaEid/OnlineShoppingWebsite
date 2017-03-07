<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${empty requestScope.url}">
    <c:set var="url" value="${requestScope.edit_product.url}"/>
</c:if>
<c:if test="${!empty requestScope.url}">
    <c:set var="url" value="${requestScope.url}"/>
</c:if>
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
        <jsp:include page="/admin/adminHeader.jsp"/>
    </div>
    <!-- Header End====================================================================== -->
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <div class="span9">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                        <li><a href="products.html">Products</a> <span class="divider">/</span></li>
                        <li class="active">product Details</li>
                    </ul>	
                    <div><a class="btn pull-right" href="RemoveProductButtonServlet?pId=${requestScope.edit_product.id}"><i class="icon-trash"></i></a></div>
                    <div class="row">	  
                        <div id="gallery" class="span3">
                            <a href="${url}" title="${requestScope.edit_product.name}">
                                <img src="${url}" style="width:100%" alt="${requestScope.edit_product.name}"/>
                            </a>
                            <form method="post" action="/OnlineShopping/upload" enctype="multipart/form-data">
                                <input name="file" type="file" accept="image/*"/>
                                <button type="submit" value="View Image">Upload Image</button>
                            </form>
                        </div>
                        <div class="span6">
                            <form action="EditProductButtonServlet" method="get" id="edit_p">
                                <input type="hidden" name="url" value="${requestScope.url}"
                                <h3><input type="text" name="pName" placeholder="Product Name" value="${requestScope.edit_product.name}" pattern="[a-zA-Z]+.*" oninvalid="setCustomValidity('Name should start with letter')" required></h3>
                                <hr class="soft"/>
                                <div>
                                    <label for="">Category</label>
                                    <select class="srchTxt" name="pCategory">
                                        <c:choose>
                                            <c:when test="${requestScope.edit_product.category=='All'}">
                                                <option selected="selected">
                                                    ${requestScope.edit_product.category}
                                                </option>
                                            </c:when>    
                                            <c:otherwise>
                                                <option>All</option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${requestScope.edit_product.category=='CLOTHES'}">
                                                <option selected="selected">
                                                    ${requestScope.edit_product.category}
                                                </option>
                                            </c:when>    
                                            <c:otherwise>
                                                <option>CLOTHES </option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${requestScope.edit_product.category=='FOOD AND BEVERAGES '}">
                                                <option selected="selected">
                                                    ${requestScope.edit_product.category}
                                                </option>
                                            </c:when>    
                                            <c:otherwise>
                                                <option>FOOD AND BEVERAGES </option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${requestScope.edit_product.category=='HEALTH & BEAUTY '}">
                                                <option selected="selected">
                                                    ${requestScope.edit_product.category}
                                                </option>
                                            </c:when>    
                                            <c:otherwise>
                                                <option>HEALTH & BEAUTY </option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${requestScope.edit_product.category=='SPORTS & LEISURE '}">
                                                <option selected="selected">
                                                    ${requestScope.edit_product.category}
                                                </option>
                                            </c:when>    
                                            <c:otherwise>
                                                <option>SPORTS & LEISURE </option>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${requestScope.edit_product.category=='BOOKS & ENTERTAINMENTS '}">
                                                <option selected="selected">
                                                    ${requestScope.edit_product.category}
                                                </option>
                                            </c:when>    
                                            <c:otherwise>
                                                <option>BOOKS & ENTERTAINMENTS </option>
                                            </c:otherwise>
                                        </c:choose>
                                    </select>
                                    <hr>
                                </div>

                                <div class="control-group">
                                    <span><input type="text" name="pPrice" placeholder="Price" value="${requestScope.edit_product.price}" style="width:10%; " pattern="[0-9]*" oninvalid="setCustomValidity('Please enter numbers only')" required=""></span>
                                    <span>
                                        <input type="hidden" name="pId" value="${requestScope.edit_product.id}">
                                        <input class="quantity" type="text" name="pQuantity" placeholder="Quantity" value="${requestScope.edit_product.stockQuantity}" style="width:10%; margin-left:25%;" pattern="[0-9]*" oninvalid="setCustomValidity('Please enter numbers only')" required></span>
                                    <button type="submit" class="btn btn-large btn-primary pull-right"> SAVE </button>
                                </div>
                        </div>

                        <div class="span9">
                            <ul id="productDetail" class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>

                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade active in" id="home">

                                    <p>
                                        <textarea rows="20" cols="10" name ="pDescription" form="edit_p" placeholder="Product Description" style="width:90%; margin-left:3%">${requestScope.edit_product.description}</textarea>
                                    </p>

                                </div>
                                </form>
                                <div class="tab-pane fade" id="profile">
                                    <div id="myTab" class="pull-right">
                                        <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
                                        <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
                                    </div>
                                    <br class="clr"/>
                                    <hr class="soft"/>

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
    <jsp:include page="/admin/adminFooter.jsp"/>
    <!-- Placed at the end of the document so the pages load faster ============================================= -->
    <script src="themes/js/jquery.js" type="text/javascript"></script>
    <script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="themes/js/google-code-prettify/prettify.js"></script>

    <script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>

    <!-- Themes switcher section ============================================================================================= -->
    <div id="secectionBox">
        <link rel="stylesheet" href="themes/switch/themeswitch.css" type="text/css" media="screen" />
        <script src="themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
        <div id="themeContainer">
            <div id="hideme" class="themeTitle">Style Selector</div>
            <div class="themeName">Oregional Skin</div>
            <div class="images style">
                <a href="themes/css/#" name="bootshop"><img src="themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
                <a href="themes/css/#" name="businessltd"><img src="themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
            </div>
            <div class="themeName">Bootswatch Skins (11)</div>
            <div class="images style">
                <a href="themes/css/#" name="amelia" title="Amelia"><img src="themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="spruce" title="Spruce"><img src="themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
                <a href="themes/css/#" name="superhero" title="Superhero"><img src="themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="cyborg"><img src="themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="cerulean"><img src="themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="journal"><img src="themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="readable"><img src="themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>	
                <a href="themes/css/#" name="simplex"><img src="themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="slate"><img src="themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="spacelab"><img src="themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="united"><img src="themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
                <p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
            </div>
            <div class="themeName">Background Patterns </div>
            <div class="images patterns">
                <a href="themes/css/#" name="pattern1"><img src="themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
                <a href="themes/css/#" name="pattern2"><img src="themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern3"><img src="themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern4"><img src="themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern5"><img src="themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern6"><img src="themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern7"><img src="themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern8"><img src="themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern9"><img src="themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern10"><img src="themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>

                <a href="themes/css/#" name="pattern11"><img src="themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern12"><img src="themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern13"><img src="themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern14"><img src="themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern15"><img src="themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>

                <a href="themes/css/#" name="pattern16"><img src="themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern17"><img src="themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern18"><img src="themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern19"><img src="themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern20"><img src="themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>

            </div>
        </div>
    </div>
    <span id="themesBtn"></span>
</body>
</html>