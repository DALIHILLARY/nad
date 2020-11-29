<%@ page language="java" import = "java.sql.*"%>
<%@ page import = "java.sqlx.*"%>
<%@ page import = "java.io.*"%>

<jsp:useBean id = "details" scope = "application" class = "examples.details"/>

<% 

 String url = "jdbc:mysql://localhost:3306/transport";
 String dbname = "root";
 String dbpass = "447525442826";		
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection con = DriverManager.getConnection(url, dbname, dbpass);
    Statement st = con.createStatement();
 
	Statement stmt = con.createStatement();

	String customers= "SELECT * FROM Customer WHERE Email='"+ session.getAttribute("email") +"'";
	ResultSet cstomer = stmt.executeQuery(customers);
	
	if(cstomer.next()){
		String fname = cstomer.getString("FirstName");
		String lname = cstomer.getString("LastName");
		String email = cstomer.getString("Email");
		String contact = cstomer.getString("Contact");
		application.setAttribute("fname", fname);
		application.setAttribute("lname", lname);
	    application.setAttribute("email", email);
	    application.setAttribute("contact", contact);
	}
	stmt.close();
	
	
	String fname = "Opio";
									
%>





<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>

<style>
.buttons{
background-color:green; 
color:white; 
border:none; 
width:200px;
 height:30px;
 box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 6px 20px 0 rgba(0,0,0,0.19);'
}
.book-now-btn{
border:none; 
 box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 6px 20px 0 rgba(0,0,0,0.19);
}

.buttons:active{
	transform: translateY(4px);
	background-color:#3e8e41;
}
.book-now-btn:active{
	transform: translateY(4px);
	background-color:#3e8e41;
}

td{
padding:5px 5px 8px 13px;
border-left:1px solid black;
}
</style>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <title>Home</title>
	<link href="jquery-ui.css" rel="stylesheet">
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

<body class="loader-active" oncontextmenu="return false;">
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

	<jsp:setProperty name = "details" property = "fname" value = '<%=application.getAttribute("fname")%>'/>
    <jsp:setProperty name = "details" property = "lname" value =  '<%=application.getAttribute("lname")%>'/>
    <jsp:setProperty name = "details" property = "email" value = '<%=application.getAttribute("email")%>'/>
	<jsp:setProperty name = "details" property = "contact" value = '<%=application.getAttribute("contact")%>'/>


    <!--== Slider Area Start ==-->
    <section id="slider-area">
	
        <!--== slide Item One ==-->
<div class="single-slide-item overlay" style="diplay:inline;">
<div class="container">
			
<div class="col-lg-5">
<div  style="margin-top:10%;">
<h1 style="color:white; text-align:center; font-size:20px;">BOOK A BUS TODAY!</h1>						
</div><br>
<div class="list-group-item list-group-item-success">
<p style="text-align:center; font-family:san-serif;">TRAVEL WITH US ACROSS UGANDA AND  EXPERIENCE<br>  SAFETY, COMFORT, RELIABILITY AND TIMELY TRAVEL,<br>    ALL AT AFFORDABLE RATES.
</p>
</div>
                   <div class="book-a-car">
                       <form method="POST" action="http://localhost:8080/Bus-Reservation/booking">
<!--== Pick Up Date ==-->
                            <h4  style="color:white;">ENTER TRAVEL DETAILS</h4>
                            							
							<select  style ="margin-top : 10px;" required name="route"  class="custom-select">
                               <%
								   out.println("<option selected>Route</option>");
										String selekt = "SELECT * FROM fare";
										ResultSet row1 = st.executeQuery(selekt);
										 while(row1.next()){ 
											out.println("<option value=" + row1.getString("Route") + ">" + row1.getString("Route") + "</option>");
										   }
									 
									out.println("<br><br>");
                                %>
						    </select>
                            
							<input type = "date" style ="margin-top : 10px;" required name="date"  class="custom-select"/>
                               
						    
                            <select style ="margin-top : 10px;  margin-bottom : 10px;" required name="time"  class="custom-select">                           
							   <option selected>Time</option>									
							   <option value="7:00 am">7:00 am</option>	
							   <option value="8:00 am">8:00 am</option>										   									 
							   <option value="9:00 am">9:00 am</option>										   									 
							   <option value="10:00 am">10:00 am</option>										   									 
							   <option value="11:00 am">11:00 am</option>										   									 
							   <option value="12:00 pm">12:00 pm</option>										   									 
							   <option value="1:00 pm">1:00 pm</option>										   									 
							   <option value="2:00 pm">2:00 pm</option>										   									 
							   <option value="3:00 pm">3:00 pm</option>										   									 
							   <option value="4:00 pm">4:00 pm</option>										   									 
							   <option value="5:00 pm">5:00 pm</option>	
							   <option value="6:00 pm">6:00 pm</option>	
							   <br><br>                              
							</select>
							
								<input type="hidden" name="hidden" value="hidden">
                                <div class="book-button text-center">
                                    <%
										if(true){
										  out.println("<button class='book-now-btn' style='color:white;'>Book</button>");
										}else{
										  out.println("<button class='book-now-btn' style='color:white;' disabled>Book</button>");
										} 
									%>					
                                </div>
                            </form> 
							
                        </div><br><br>
    
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
                                    <li><i class="fa fa-map-marker"></i> P.O.Box 70189, Kampala, Uganda</li>
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
					
					<form method="POST" action="" onsubmit="validate();">
					<input type="tel" name="tel"  id="new"placeholder="Enter new Contact.."  required style="width:200px;" ><br><br>
						
					    <p>  
	                    <button class="buttons" id="dialog-link" class="ui-button ui-corner-all ui-widget">
		                  <span class="ui-icon ui-icon-newwin"></span>Change Contact</button></p>
						  
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


<script>
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
  }

}

</script>		



</body>

</html>
