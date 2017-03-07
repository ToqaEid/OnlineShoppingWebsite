<%-- 
    Document   : adminHeader
    Created on : Mar 7, 2017, 7:24:29 AM
    Author     : Eslam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div id="header">


            <!-- Navbar ================================================== -->
            <div id="logoArea" class="navbar">
                <a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-inner">
                    <a class="brand" href="home">
                        <img src="themes/images/logo.png" alt="Bootsshop"/>
                    </a>
                    <form class="form-inline navbar-search" method="post" action="search" >
                        <input name="searchText" id="srchFld" class="srchTxt" type="text" style="width:60%;"/>
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

                </div>
            </div>
        </div>
    </body>
</html>
