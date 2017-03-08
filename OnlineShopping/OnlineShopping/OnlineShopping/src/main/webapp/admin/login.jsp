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
        --> 
        
        <script src="themes/js/jquery.js" type="text/javascript"></script> 
        <script src="/OnlineShopping/bootstrap/js/script.js"></script>

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
        <jsp:include page="adminHeader.jsp"/>
        <div id="mainBody" style="min-height:405px;">
            <div class="container">
                <div class="row">

                    <div class="span9">
                        <h3> Login</h3>	
                        <hr class="soft"/>

                        <div class="row">
                            <div class="span1"> &nbsp;</div>
                            <div class="span4">
                                <div class="well"> 
                                    <form id="login_form" action="/OnlineShopping/admin/signin" method="POST">
                                        <div id="login_failed" class="alert alert-block alert-error fade in" style="margin: 10px 0px; width: 220px;display: none;"></div>

                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">Email</label>
                                            <div class="controls">
                                                <input class="span3" name="email" type="text" id="inputEmail" placeholder="Email" required>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="inputPassword">Password</label>
                                            <div class="controls">
                                                <input type="password" name="password" class="span3"  id="inputPassword" placeholder="Password" required>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button id="btn_login" type="submit" class="btn">Sign in</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>	

                    </div>
                </div></div>
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
        
        <script type="text/javascript">
            $(document).ready(function () {
                <c:if test="${!empty requestScope.login_failed}">
                    // Show error alert in Login block
                    $(login_failed).html("Incorrect email or password.");
                    $(login_failed).show();
                </c:if>

                $(login_form).submit(function () {
                    try {
                        validateEmail($(inputEmail).val());
                    } catch (ex) {
                        $(login_failed).html("Inalid email.");
                        $(login_failed).show();
                        return false;
                    }
                });

                $(btn_login).click(function () {
                    $(login_failed).hide();
                });
            });
        </script>
    </body>
</html>