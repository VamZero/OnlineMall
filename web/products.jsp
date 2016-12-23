<%@ page import="Class.Commodity" %>
<%@ page import="java.util.Vector" %>
<%--
  Created by IntelliJ IDEA.
  User: №zero
  Date: 2016/12/18
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Products</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<%
	Vector<Commodity> coms = (Vector<Commodity>) session.getAttribute("coms");
	int count = -1;
	if (coms != null) count = coms.size();
%>
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin -->
</head>
<body>
	<!--header-->
	<%@include file="header.jsp" %>
	<!--//header-->
	<!--products-->
	<div class="products">
		<div class="container">
			<h2>Our Shoes</h2>
			<div class="col-md-9 product-model-sec">
				<%
					for (int i=0;i<(count<9?count:9);i++){
				%>
				<div class="product-grid">
					<a href="_single.jsp?ID=<%=coms.get(i).getID()%>">
						<div class="more-product"><span> </span></div>
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="<%=coms.get(i).getImage()%>" class="img-responsive" alt="">
							<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">
									<button>View</button>
								</h4>
							</div>
						</div>
					</a>
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4><%=coms.get(i).getName()%></h4>
							<span class="item_price"><%=Math.floor(coms.get(i).getPrice()+0.5)%></span>
							<div class="ofr">
								<p class="pric1"><del><%=Math.floor(coms.get(i).getPrice()*1.15+0.5)%></del></p>
								<p class="disc">[15% Off]</p>
							</div>
							<input type="text" class="item_quantity" value="1" />
							<input type="button" class="item_add items" value="Add">
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
						<div class="tab1">
							<ul class="place">
								<li class="sort">Regular Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="#"><p>Cassata</p></a>
								<a href="#"><p>Cheesecake</p></a>
								<a href="#"><p>Coconut cake</p></a>
								<a href="#"><p>Cupcake</p></a>
						    </div>
					    </div>
						<div class="tab2">
							<ul class="place">
								<li class="sort">Special Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="#"><p>Delicious Cakes</p></a>
								<a href="#"><p>Gingerbread</p></a>
						    </div>
					    </div>
						<div class="tab3">
							<ul class="place">
								<li class="sort">Eggless Cake</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="#"><p>Milk Cakes</p></a>
								<a href="#"><p>Fruits Cakes</p></a>
						    </div>
					    </div>
						<div class="tab4">
							<ul class="place">
								<li class="sort">2-3 Tier Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">
								<a href="#"><p>Twist 4 tier</p></a>
								<a href="#"><p>Floral Tier</p></a>
								<a href="#"><p>Double Heartshape</p></a>
						    </div>
					    </div>
						<!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();

								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
							});
						</script>
						<!--//script -->
					</div>
				</section>
				<section>
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>DISCOUNTS</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>70% - 60% (5)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
						</div>
					</div>
				</section>
				<section>
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
					<ul class="dropdown-menu1">
						<li><a href="">
							<div id="slider-range"></div>
							<input type="text" id="amount" style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';" />
							</a></li>
					</ul>
				</section>
				<!---->
				<script type="text/javascript" src="js/jquery-ui.min.js"></script>
				<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
					<script type='text/javascript'>//<![CDATA[
						$(window).load(function(){
						 $( "#slider-range" ).slider({
									range: true,
									min: 0,
									max: 100000,
									values: [ 500, 100000 ],
									slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
									}
						 });
						$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

						});//]]>
					</script>
				<!---->
				<section>
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>By Flavour</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>70% - 60% (5)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
						</div>
					</div>
				</section>
				<section>
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Weight</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>70% - 60% (5)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
						</div>
					</div>
				</section>
				<section>
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Color</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>70% - 60% (5)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label><br>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
						</div>
					</div>
				</section>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//products-->
	<!--footer-->
	<%@include file="footer.jsp"%>
</body>
</html>