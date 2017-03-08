<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <style type="text/css">
            .user-row {
                margin-bottom: 14px;
            }

            .user-row:last-child {
                margin-bottom: 0;
            }

            .dropdown-user {
                margin: 13px 0;
                padding: 5px;
                height: 100%;
            }

            .dropdown-user:hover {
                cursor: pointer;
            }

            .table-user-information > tbody > tr {
                border-top: 1px solid rgb(221, 221, 221);
            }

            .table-user-information > tbody > tr:first-child {
                border-top: 0;
            }


            .table-user-information > tbody > tr > td {
                border-top: 0;
            }
            .toppad
            {margin-top:20px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="adminHeader.jsp"/>
    <!-- Header End====================================================================== -->
    <div id="mainBody">
        <div class="container">
            <div class="row">

                <div class="container-fluid">
                    <div class="row-fluid">
                        <div class=" col-md-3 col-lg-3 "> 
                            <h3>Customer Profile</h3>
                            <table class="table table-user-information">
                                <tbody>
                                    <tr>
                                        <td>Customer Name:</td>
                                        <td>${requestScope.customerDetails.name}</td>
                                    </tr>
                                    <tr>
                                        <td>Customer Email:</td>
                                        <td><a href="mailto:info@support.com">${requestScope.customerDetails.email}</a></td>
                                    </tr>
                                    <tr>
                                        <td>Date of Birth</td>
                                        <td>${requestScope.customerDetails.birthdate}</td>
                                    </tr>

                                    <tr>
                                    <tr>
                                        <td>Customer Job</td>
                                        <td>${requestScope.customerDetails.job}</td>
                                    </tr>
                                    <tr>
                                        <td>Customer Address</td>
                                        <td>${requestScope.customerDetails.address}</td>
                                    </tr>
                                    <tr>
                                        <td>Credit Limit</td>
                                        <td>${requestScope.customerDetails.creditLimit}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr>
                            <h3>Order History</h3>
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Order Date</th>
                                        <th>Order Time</th>
                                        <th>Product ID</th>
                                        <th>Quantity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:if test="${!empty requestScope.ordersList}">
                                        <c:forEach items="${requestScope.ordersList}" var="order">
                                            <tr class="odd gradeX">
                                                <td>${order.id}</td>
                                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${order.date}" /></td>
                                                <td><fmt:formatDate type="time" value="${order.date}" /></td>
                                                <td class="center">${order.product.id}</td>
                                                <td class="center">${order.quantity}</td>
                                            </tr> 
                                        </c:forEach>
                                    </c:if>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- MainBody End ============================= -->
        <!-- Footer ================================================================== -->
        <jsp:include page="adminFooter.jsp"/>
        <!-- Placed at the end of the document so the pages load faster ============================================= -->
        <script src="themes/js/jquery.js" type="text/javascript"></script>
        <script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="themes/js/google-code-prettify/prettify.js"></script>

        <script src="themes/js/bootshop.js"></script>
        <script src="themes/js/jquery.lightbox-0.5.js"></script>

        <!-- Themes switcher section ============================================================================================= -->
        
        <script src="themes/js/jquery.dataTables.min.js"></script>

</body>
</html>