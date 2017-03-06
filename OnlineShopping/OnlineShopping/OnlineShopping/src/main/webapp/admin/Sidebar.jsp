<%-- 
    Document   : Sidebar
    Created on : Mar 6, 2017, 7:27:54 AM
    Author     : Romisaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
       <div id="sidebar" class="span3">
		<div class="well well-small"><a id="myCart"><img src="themes/images/ico-cart.png" alt="cart">Coupons remaining
		 <a href="#genertate" role="button" data-toggle="modal" style="padding-right:0"><span class="badge badge-warning pull-right">Genertate</span></a>
                                <div id="genertate" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                                        <h3>Generate Coupons</h3>
                                    </div>
                                    <div class="modal-body">
                                        <form action="GenerateCoupons" method="post" class="form-horizontal loginFrm">
                                            <div class="control-group">
                                                <label for="coupons_credit">Coupons Credit</Label>
                                                <input type="text" name="coupons_credit" id="coupons_credit">
                                                
                                            </div>
                                            <div class="control-group">
                                                <label for="coupons_num">Number Of Coupons</Label>
                                                <input type="number" class="span1" id="coupons_num" name="coupons_num" value="1" min="1" max="1000	">
                                                
                                            </div>
											<hr>
                                            <button type="submit" class="btn btn-success">Generate</button>
                                            <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                                        </form>	
                                    </div>
                                </div>
							</div>
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li><a href="customer_profiles.html">CUSTOMER PROFILES</a></li>
                        <li><a href="/OnlineShopping/ViewCoupons">View Coupons</a></li>
			<li><a href="/admin/add_product.jsp">NEW ARRIVAL</a></li>
			<li class="subMenu"><a>FOOD AND BEVERAGES [1000]</a></li>
			<li><a href="products.html">HEALTH & BEAUTY [18]</a></li>
			<li><a href="products.html">SPORTS & LEISURE [58]</a></li>
			<li><a href="products.html">BOOKS & ENTERTAINMENTS [14]</a></li>
		</ul>
		<br/>
		  
			
	</div>
    </body>
</html>

