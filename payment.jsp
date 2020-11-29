<%@page import = "java.sql.*"%>
<%@page import = "java.sqlx.*"%>
<%@page session = "true" %>

<jsp:useBean id = "details" scope = "application" class = "examples.details"/>

<% 

 String url = "jdbc:mysql://localhost:3306/Transport";
 String dbname = "root";
 String dbpass = "447525442826";
 String query = "select * from users";
		
 try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection con = DriverManager.getConnection(url, dbname, dbpass);
    Statement st = con.createStatement();
%>



<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>

<style>
.book-now-btn{
border:none; 
 box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 6px 20px 0 rgba(0,0,0,0.19);'
}

.book-now-btn:active{
	transform: translateY(4px);
	background-color:#3e8e41;
}

.buttons{
background-color:green; 
color:white; 
border:none; 
width:200px;
 height:30px;
 box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 6px 20px 0 rgba(0,0,0,0.19);'
}


.buttons:active{
	transform: translateY(4px);
	background-color:#3e8e41;
}
</style>



<script type="text/javascript">

function validate(){
	var x = document.getElementById("new");
	var y = x.value;
	if(y.charAt(0)!='0'){
alert("Contact must begin with zero");
event.preventDefault();
	}
	var l = y.length;
  if(l!=10){
alert("Contact must have ten digits");
event.preventDefault();
   return false;
  }

}


</script>



    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <title>Payment</title>

    <!--=== Bootstrap CSS ===-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!--=== Slicknav CSS ===-->
    <link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
    <!--=== Magnific Popup CSS ===-->
    <link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
    <!--=== Owl Carousel CSS ===-->
    <link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
    <!--=== Gijgo CSS ===-->
    <link href="assets/css/plugins/gijgo.css" rel="stylesheet">
    <!--=== FontAwesome CSS ===-->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!--=== Theme Reset CSS ===-->
    <link href="assets/css/reset.css" rel="stylesheet">
    <!--=== Main Style CSS ===-->
    <link href="style.css" rel="stylesheet">
    <!--=== Responsive CSS ===-->
    <link href="assets/css/responsive.css" rel="stylesheet">


    <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="loader-active" oncontextmenu="return false;" >

    <!--== Preloader Area Start ==-->
    <div class="preloader">
        <div class="preloader-spinner">
            <div class="loader-content">
                <img src="assets/img/preloader.gif" alt="JSOFT">
            </div>
        </div>
    </div>
    <!--== Preloader Area End ==-->

    <!--== Header==-->
    <jsp:include page = "Header.jsp"/>

    <!--== Slider Area Start ==-->
    <section id="slider-area">
	
        <!--== slide Item One ==-->
        <div class="single-slide-item overlay" style="diplay:inline;">
		         <div class="container">
		                      

	
            <div class="container">
                <div>
                    <div class="col-lg-5">
                                <div  style="margin-top:10%;">
                                    <h1 style="color:white; text-align:center; font-size:20px;">MAKE PAYMENT</h1>
                                </div><br>
                    <p style="text-align:center;  font-size:15px; font-family:san-serif;"  class="list-group-item list-group-item-success"> <br>A TICKET WILL BE GENERATED IMMEDIATELY<br> AFTER SUCCESSFUL PAYMENT.</p>
                                <br>
                    <div class="list-group-item list-group-item-success">
					<div style=" font-weight:bold;"> Date:  <%out.println(session.getAttribute("date"));%> </div>
                    <div style=" font-weight:bold;"> Time:  <%out.println(session.getAttribute("time"));%></div>
                    <div style="font-weight:bold;"> Route:  <%out.println(session.getAttribute("route"));%></div>
                    
                    </div>
					
					<div>
                    <div class="book-a-car">
                      
                
                            <form method="POST" action="http://localhost:8080/Bus-Reservation/payment">
							   <h4 style="color:white;">SEAT NO.:</h4>
                               <select required style="border-radius:12px; border-left:1px solid black; border-right:1px solid black;" required name="seat"  class="custom-select">
                               <%
								   out.println("<option selected>Seat No.</option>");
									int i=1;
									for(i=1; i<=64; i++){
										String select = "SELECT * FROM Bookings WHERE Date ='" + session.getAttribute("date") + "' AND Time ='" + session.getAttribute("time") + "' AND Route = '" + session.getAttribute("route") + "' AND SeatNo ='" + i + "'";

										ResultSet row = st.executeQuery(select);
										 if(row.next()){ 
										 }else{
										   out.println("<option value=" + i + ">" + i + "</option>");
										 }
									 }
									 
									out.println("<br><br>");
                                %>
                               </select>
							   
							   <h4 style="color:white;">CONTACT:</h4>
								<input type="tel" placeholder="Enter contact" name="contact" style=" padding-left : 10px; border-radius:12px; border-left:1px solid black; border-right:1px solid black;" disabled value="<jsp:getProperty name = "details" property = "contact"/>"/>							
							
								<h4 style='color:white;'>AMOUNT:</h4>
                                <input type="number" name="money" value=<%out.println(session.getAttribute("price"));%> Disabled style="padding-left : 10px; border-radius:12px; border-left:1px solid black; border-right:1px solid black;">
							    <input type="hidden" name="date" value=<%out.println(session.getAttribute("date"));%> Disabled style="padding-left : 10px; border-radius:12px; border-left:1px solid black; border-right:1px solid black;">
                                <input type="hidden" name="time" value=<%out.println(session.getAttribute("time"));%> Disabled style="padding-left : 10px; border-radius:12px; border-left:1px solid black; border-right:1px solid black;">
                                <input type="hidden" name="route" value=<%out.println(session.getAttribute("route"));%> Disabled style="padding-left : 10px; border-radius:12px; border-left:1px solid black; border-right:1px solid black;">
	
								  <br><br>

                                  <input type="hidden" name="hiden" value="hidden">

                                <div class="book-button text-center">
                                    <button class="book-now-btn"  style="color:white;">Pay Now</button>
                                </div>
                            </form>
						  </div>	
                        </div>
						    
                    </div>


                </div>
            </div>
	</div>

	</div>

        <!--== slide Item One ==-->
    </section>
    <!--== Slider Area End ==-->

    <!--== Footer Area Start ==-->
    <section id="footer-area">
    <div style=" background-color:yellow; font-size:1px;">hr</div>
        <!-- Footer Widget Start -->
        <div class="footer-widget-area">
            <div class="container">
                <div class="row">
                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <h2><u>About Us</u></h2>
                            <div class="widget-body">
                                <img src="assets/img/logo.png" alt="JSOFT">
                                <p>At Link Bus Service Limited, serving you to the best of our abilities and ensurinng that you have such an amazing and memorable journey brings us great joy and satisfaction</p>

                             

                            </div>
                        </div>
                    </div>
                    
                    <!-- Single Footer Widget End -->

                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <h2><u>get in touch</u></h2>
                            <div class="widget-body">
                                <p>Feel free to reach out to  us  with any of the following contacts for any queries</p>

                                <ul class="get-touch">
                                    <li><i class="fa fa-map-marker"></i> P.Box 70189, Kampala, Uganda </li>
                                    <li><i class="fa fa-mobile"></i> +256 702 480 141</li>
                                    <li><i class="fa fa-envelope"></i>admin@link.co.ug</li>
                                </ul>
                                
                            </div>
                        </div>
                    </div>
					<div class="col-lg-4 col-md-6">
					<div class="single-footer-widget">
					 <div class="widget-body">
					<h4 style="color:white;"><u>PROFILE</u></h4><br>
				   <div class="widget-body">
					First Name:  <jsp:getProperty name = "details" property = "fname"/><br>
					Last Name:   <jsp:getProperty name = "details" property = "lname"/><br>
					Contact:     <jsp:getProperty name = "details" property = "contact"/><br>
					Email:       <jsp:getProperty name = "details" property = "email"/><br><br>
					
				   <form method="POST" action="" onsubmit="  validate();">
					<input type="tel" name="tel"  id="new" placeholder="Enter new Contact.." required style="width:200px;" ><br><br>
					<button class="buttons"><b>Change Contact
					</b></button><br><br>
					<input type="hidden" name="hidden" value="hiden">

				</form>
					</div>
					</div>
                </div>
			 </div>
            </div>
        </div>
		</div>
        <!-- Footer Widget End -->

        <!-- Footer Bottom Start -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This system was made by <a href="">Opio Andrew. Makerere University</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Bottom End -->
    </section>
    <!--== Footer Area End ==-->

    <!--== Scroll Top Area Start ==-->
    <div class="scroll-top">
        <img src="assets/img/scroll-top.png" alt="JSOFT">
    </div>
    <!--== Scroll Top Area End ==-->

    <!--=======================Javascript============================-->
    <!--=== Jquery Min Js ===-->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <!--=== Jquery Migrate Min Js ===-->
    <script src="assets/js/jquery-migrate.min.js"></script>
    <!--=== Popper Min Js ===-->
    <script src="assets/js/popper.min.js"></script>
    <!--=== Bootstrap Min Js ===-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!--=== Gijgo Min Js ===-->
    <script src="assets/js/plugins/gijgo.js"></script>
    <!--=== Vegas Min Js ===-->
    <script src="assets/js/plugins/vegas.min.js"></script>
    <!--=== Isotope Min Js ===-->
    <script src="assets/js/plugins/isotope.min.js"></script>
    <!--=== Owl Caousel Min Js ===-->
    <script src="assets/js/plugins/owl.carousel.min.js"></script>
    <!--=== Waypoint Min Js ===-->
    <script src="assets/js/plugins/waypoints.min.js"></script>
    <!--=== CounTotop Min Js ===-->
    <script src="assets/js/plugins/counterup.min.js"></script>
    <!--=== YtPlayer Min Js ===-->
    <script src="assets/js/plugins/mb.YTPlayer.js"></script>
    <!--=== Magnific Popup Min Js ===-->
    <script src="assets/js/plugins/magnific-popup.min.js"></script>
    <!--=== Slicknav Min Js ===-->
    <script src="assets/js/plugins/slicknav.min.js"></script>

    <!--=== Mian Js ===-->
    <script src="assets/js/main.js"></script>

</body>
</html>

