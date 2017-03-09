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

<c:if test="${empty sessionScope.logged}">
    <jsp:forward page="HomeServlet"/>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Online Shopping cart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

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
            <jsp:forward page="HomeServlet"/>
        </c:if>

        <div id="mainBody">
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
                        <div class="well">
                            <form class="form-horizontal" action="EditProfile" method="POST">
                                <h4>Your personal information</h4>

                                <input type="hidden" name="refererUri" value="${header.referer}"/>

                                <div class="control-group">
                                    <label class="control-label" for="input_email">Email </label>
                                    <div class="controls">
                                        <input type="text" name="email" id="input_email" value="${logged.email}"disabled/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputFname">Name <sup>*</sup></label>
                                    <div class="controls">
                                        <input type="text" name="name" id="inputFname" value="${logged.name}" maxlength="20" required="true"/>
                                    </div>
                                </div>	  
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword1">Password <sup>*</sup></label>
                                    <div class="controls">
                                        <input type="password" name="password" id="inputPassword1" value="${logged.password}" maxlength="20" required="true"/>
                                    </div>
                                </div>	  
                                <div class="control-group">
                                    <label class="control-label" for="inputDate">Date of Birth <sup>*</sup></label>
                                    <div class="controls">
                                        <input type="date" data-date-format="YYYY-MM-DD" name="birthdate" id="inputDate" value="${logged.birthdate}"  required="true"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputJob">Job </label>
                                    <div class="controls">
                                        <input type="text" name="job" id="inputJob" value="${logged.job}" maxlength="20"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="address">Address</label>
                                    <div class="controls">
                                        <input type="text" name="address" id="address" value="${logged.address}" maxlength="20"/> 
                                    </div>
                                </div>
                                <p><sup>*</sup>Required field</p>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <input class="btn btn-large btn-success" type="submit" value="Edit">
                            </div>
                        </div>		
                        </form>
                    </div>

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
