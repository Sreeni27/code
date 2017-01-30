<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/imagezoom.js"></script>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
.myd {
	background-color: cyan;
}

/* .navbar-wrapper {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 10;
} */
.dropdown-menu>li.kopie>a {
	padding-left: 5px;
}

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
	-webkit-border-radius: 0 6px 6px 6px;
	-moz-border-radius: 0 6px 6px 6px;
	border-radius: 0 6px 6px 6px;
}

.dropdown-submenu>a:after {
	border-color: transparent transparent transparent #333;
	border-style: solid;
	border-width: 5px 0 5px 5px;
	content: " ";
	display: block;
	float: right;
	height: 0;
	margin-right: -10px;
	margin-top: 5px;
	width: 0;
}

.dropdown-menu > li.kopie > a {
    padding-left:5px;
}
 
.dropdown-submenu {
    position:relative;
}
.dropdown-submenu>.dropdown-menu {
   top:0;left:100%;
   margin-top:-6px;margin-left:-1px;
   -webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;
 }
  
.dropdown-submenu > a:after {
  border-color: transparent transparent transparent #333;
  border-style: solid;
  border-width: 5px 0 5px 5px;
  content: " ";
  display: block;
  float: right;  
  height: 0;     
  margin-right: -10px;
  margin-top: 5px;
  width: 0;
}
 
.dropdown-submenu:hover>a:after {
    border-left-color:#555;
 }

.dropdown-menu > li > a:hover, .dropdown-menu > .active > a:hover {
  text-decoration: underline;
}  
  
@media (max-width: 767px) {
  .navbar-nav  {
     display: inline;
  }
  .navbar-default .navbar-brand {
    display: inline;
  }
  .navbar-default .navbar-toggle .icon-bar {
    background-color: #fff;
  }
  .navbar-default .navbar-nav .dropdown-menu > li > a {
    color: red;
    background-color: #ccc;
    border-radius: 4px;
    margin-top: 2px;   
  }
   .navbar-default .navbar-nav .open .dropdown-menu > li > a {
     color: #333;
   }
   .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
   .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
     background-color: #ccc;
   }

   .navbar-nav .open .dropdown-menu {
     border-bottom: 1px solid white; 
     border-radius: 0;
   }
  .dropdown-menu {
      padding-left: 10px;
  }
  .dropdown-menu .dropdown-menu {
      padding-left: 20px;
   }
   .dropdown-menu .dropdown-menu .dropdown-menu {
      padding-left: 30px;
   }
   li.dropdown.open {
    border: 0px solid red;
   }

}
 
@media (min-width: 768px) {
  ul.nav li:hover > ul.dropdown-menu {
    display: block;
  }
  #navbar {
    text-align: center;
  }

body { padding-top: 20px; }
#myCarousel .nav a small {
    display:block;
}
#myCarousel .nav {
	background:#eee;
}
#myCarousel .nav a {
    border-radius:0px;
}
<script type= "text/javascript">
$(document).ready( function() {
    $('#myCarousel').carousel({
		interval:   4000
	});
	
	var clickEvent = false;
	$('#myCarousel').on('click', '.nav a', function() {
			clickEvent = true;
			$('.nav li').removeClass('active');
			$(this).parent().addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.nav').children().length -1;
			var current = $('.nav li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.nav li').first().addClass('active');	
			}
		}
		clickEvent = false;
	});
});
 </script>
</style>
</head>

<body>


	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> E-KART></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Brands <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Apple</a></li>
						<li><a href="#">Samsung</a></li>
						<li><a href="#">Google</a></li>
						<li><a href="#">Oneplus</a></li>
                        <li><a href="#">Lenevo</a></li>
          				<li><a href="#">Sony</a></li>
                         
						
					</ul></li>
				<li><a href="#"> Accessories</a></li>
				<li><a href="#"> Offers</a></li>
			</ul>
			<ul class=" nav navbar-nav navbar-right">
				<li><a href="signup.jsp"><span class="glyphicon-user"></span>Sign
						up</a></li>
				<li><a href="login.jsp"><span class="glyphicon-log-in"></span>Log
						in</a></li>
			</ul>
		</div>
	</nav>

<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item active">
          <img src="http://placehold.it/1200x400/cccccc/ffffff">
           <div class="carousel-caption">
            <h3>Headline</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Bootstrap 3 - Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
 
         <div class="item">
          <img src="http://placehold.it/1200x400/999999/cccccc">
           <div class="carousel-caption">
            <h3>Headline</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Bootstrap 3 - Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="http://placehold.it/1200x400/dddddd/333333">
           <div class="carousel-caption">
            <h3>Headline</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Bootstrap 3 - Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="http://placehold.it/1200x400/999999/cccccc">
           <div class="carousel-caption">
            <h3>Headline</h3>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
          </div>
        </div><!-- End Item -->
                
      </div><!-- End Carousel Inner -->


    	<ul class="nav nav-pills nav-justified">
          <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">About<small>Lorem ipsum dolor sit</small></a></li>
          <li data-target="#myCarousel" data-slide-to="1"><a href="#">Projects<small>Lorem ipsum dolor sit</small></a></li>
          <li data-target="#myCarousel" data-slide-to="2"><a href="#">Portfolio<small>Lorem ipsum dolor sit</small></a></li>
          <li data-target="#myCarousel" data-slide-to="3"><a href="#">Services<small>Lorem ipsum dolor sit</small></a></li>
        </ul>


    </div><!-- End Carousel -->
</div>
<br>
<br>
<!--  --product-->
<div class="product"> 
		<div class="container">
			<div class="product-top">
				<div class="product-one">
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="4.jpg"  alt="" /></a>
							<div class="product-bottom">
								<h3>Google pixel</h3>
								
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="ip.jpg" alt="" /></a>
							<div class="product-bottom">
								<h3>Iphone 7</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="op3.jpg" alt="" /></a>
							<div class="product-bottom">
								<h3>One Plus 3</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="3.jpg" width="400" height="600" alt="" /></a>
							<div class="product-bottom">
								<h3>Samsung</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="product-one">
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-5.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-6.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-7.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
							<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-8.png" alt="" /></a>
							<div class="product-bottom">
								<h3>Smart Watches</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>					
			</div>
		</div>
	</div>



	

</body>
</html>