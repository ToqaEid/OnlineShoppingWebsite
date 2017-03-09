<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <!-- Sidebar ================================================== -->
                    <jsp:include page="sidebar.jsp"/>
                    <!-- Sidebar end=============================================== -->
                    <div class="span9">
                        <ul class="breadcrumb">
                            <li><a href="home.html">Home</a> <span class="divider">/</span></li>
                            <li class="active">Registration</li>
                        </ul>
                        <h3> Registration</h3>	
                        <div class="well">
                            <form id="signup_form" class="form-horizontal" action="signup" method="POST">
                                <h4>Your personal information</h4>
                                
                                <c:set var="referer" value="${header.referer}" scope="request"/>
                                
                                <c:if test="${!empty requestScope.refererUri}">
                                    <c:set var="referer" value="${requestScope.refererUri}" scope="request"/>
                                </c:if>
                                
                                    <input type="hidden" name="refererUri" value="${requestScope.referer}"/>

                                <div id="signup_failed" class="alert alert-block alert-error fade in" style="margin-left: 81px;width: 272px;display: none;"></div> 
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">Email <sup>*</sup></label>
                                    <div class="controls">
                                        <input type="text" name="email" id="inputEmail" placeholder="Email" maxlength="20" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputFname">Name <sup>*</sup></label>
                                    <div class="controls">
                                        <input type="text" name="name" id="inputName" placeholder="Name" maxlength="20" required>
                                    </div>
                                </div>	  
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword1">Password <sup>*</sup></label>
                                    <div class="controls">
                                        <input type="password" name="password" id="inputPassword1" placeholder="Password" maxlength="20" required>
                                    </div>
                                </div>	  
                                <div class="control-group">
                                    <label class="control-label" for="inputDate">Date of Birth <sup>*</sup></label>
                                    <div class="controls">
                                        <input type="date" date-date-format="YYYY-MM-DD" name="birthdate" id="inputDate" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputJob">Job <sup>*</sup></label>
                                    <div class="controls">
                                        <input type="text" name="job" id="inputJob" placeholder="Job" maxlength="20" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="address">Address<sup>*</sup></label>
                                    <div class="controls">
                                        <input type="text" name="address" id="inputAddress" placeholder="Adress" maxlength="20" required>
                                    </div>
                                </div>
                                <p><sup>*</sup>Required field	</p>

                                <div class="control-group">
                                    <div class="controls">
                                        <input type="hidden" name="email_create" value="1">
                                        <input type="hidden" name="is_new_customer" value="1">
                                        <input id="btn_register" class="btn btn-large btn-success" type="submit" value="Register">
                                    </div>
                                </div>		
                            </form>
                        </div>

                    </div>
                </div>
            </div>
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
        
    </body>
    
    <script type="text/javascript">
        $(document).ready(function () {
            
            <c:if test="${!empty requestScope.signup_failed}">
                // Show error alert in Sign up block
                $(signup_failed).html("Email is already used."); 
                $(signup_failed).show();
            </c:if>
            
            $(signup_form).submit(function() {
                var invalidInput = true; 
                try {
                    validateEmail($(inputEmail).val());
                } catch (ex) {
                    $(signup_failed).html(ex); 
                    $(signup_failed).show();
                    invalidInput = false;
                }
                return invalidInput;
            });
            
            $(btn_register).click(function () {
                $(signup_failed).hide();
            }); 
        });
    </script>
</html>