<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="style/index.css" />
    <!-- <link rel="stylesheet" href="stylepopupbro.css" /> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<!-- Favicons -->
<link href="images/favicon.png" rel="icon">
<link href="images/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
    <title>Mail Order Pharmacy</title>
</head>

<body>



    <nav class="navbar navbar-inverse ">
        <a href="home" class="navbar-brand">Mail Order Pharmacy</a>

        <!-- <button class="navbar-toggler navbar-toggler collapsed" type="button" data-toggle="collapse"
            data-target="#navbarText" aria-controls="navbarsExampleDefault" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="my-1 mx-2 close">CLOSE</span>
            <span class="navbar-toggler-icon">OPEN</span>
        </button> -->

        <div class="" id="navbarText">
            <ul class="navbar-nav mr-auto text-center">
                
                <!-- <li class="nav-item"> -->
                    <div id="main">
                        <button class="openbtn" onclick="openNav()">Services</button>
                    
                <!-- </li> -->
            </ul>
        </div>
    </nav>
    <div id="mySidebar" class="sidebar">
        <br>
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="supportedDrugs">Available Drugs</a>
        <a href="search">Search Drugs</a>
        <a href="prescriptionform">Subscribe</a>
        <a href="subscriptions">Subscriptions</a>
        <a href="subscriptions">Adhoc Refill</a>
        <a href="refillstatus">Refill Status</a>
        <a href="refillDateEntry">Refill Due Date</a>
        <a href="logout">Logout</a>
      </div>
      
    
     
    <br><br><br>
    <div class="container bcontent">
			<h2>Refill Dues for ${name}</h2>
			<hr />
			<c:choose>
			<c:when test="${not empty refillResponses}">
			<c:forEach items="${refillResponses}" var="refill">
				<div class="card" style="width: 500px;">
					<div class="row no-gutters">
						<div class="col-sm-7">
							<div class="card-body">
								<h5 class="card-title">
									<b>${refill.drugName}</b>
								</h5>
								<p class="card-text">
									<b>Member ID</b>: ${refill.memberId }
								</p>
								<p class="card-text">
									<b>Subscription ID</b>: ${refill.subscriptionId }
								</p>
								<p class="card-text">
									<b>Refill Quantity</b>: ${refill.refillQuantity }
								</p>
								<p class="card-text">
									<b>Refill Time</b>: ${refill.refillTime }
								</p>
								
							</div>
						</div>
					</div>
				</div>
				<br>
			</c:forEach>
			<br>
			</c:when>
			<c:otherwise>
			<h1>${msg}</h1>
			</c:otherwise>
			</c:choose>
		</div>

    <script>
        function openNav() {
document.getElementById("mySidebar").style.width = "300px";
//   document.getElementById("main").style.marginRight = "250px";
//   document.getElementsById("closer").style.marginRight = "250px";

}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
function closeNav() {
document.getElementById("mySidebar").style.width = "0";
//   document.getElementById("main").style.marginRight = "0";
//   document.getElementsById("closer").style.marginRight = "0";
}
    </script>
</body>

</html>