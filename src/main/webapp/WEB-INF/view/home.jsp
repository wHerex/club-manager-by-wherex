<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib  uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <!--    <title>ClubManager by wHerex</title> -->

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
   <link type="text/css"
    	rel="stylesheet"
    	href="${pageContext.request.contextPath}/resources/css/style4.css">



  	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/css/script4.js"></script>
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
          <div class="sidebar-header">
                 <h3>ClubManager by wHerex</h3>
                <strong></strong>

                <button type="button" id="sidebarCollapse" class="btn btn-info" onClick="sideBarToggle();">
                  <i class="fas fa-align-left"></i>
                  <span>Toggle Sidebar</span>
                </button>

            </div>
          <ul class="list-unstyled components">
                <li class="active"><a href=""><i class="fas fa-home"></i><span> Dashboard </span></a>  </li>
           <!--      <li><a href="${pageContext.request.contextPath}/products/list">  <i class="fas fa-briefcase"></i><span> Stock</span></a></li>                    
           <form:form action="${pageContext.request.contextPath}/" method="post"></form:form>
           <a th:href="@{/pageContent(page='staffmembers/list')}"></a>
          -->
                <li> <i class="fas fa-copy"></i><span> Staff</span></a></li>
                 <li> <a href=""><i class="fas fa-copy"></i> <span> Events</span></a></li>
                <li><a href="#"><i class="fas fa-question"></i><span> FAQ</span></a></li>
                <li><a href="${pageContext.request.contextPath}/contact"><i class="fas fa-paper-plane"></i><span> Contact</span></a></li>
            </ul>
        </nav>
        <!-- Page Content  -->
        <div id="content">
        	<nav class="navbar navbar-expand-sm navbar-light bg-light">
      <%--      <a class="navbar-brand" href="#">Navbar</a>--%>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
              <div class="dropdown">
                <button class="btn btn-primary btn-sm dropdown custom  " type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   <i class="fa fa-user" aria-hidden="true"></i> Hello <security:authentication property="principal.username"/> !
                </button>
                <div class="dropdown-menu dropdown-menu-left " aria-labelledby="dropdownMenu2">
                  <button class="dropdown-item btn btn-success" type="submit"><i class="fas fa-user-circle"> </i> Account</button>
                    <button class="dropdown-item btn btn-success" type="submit"><i class="fas fa-sliders-h"></i> Settings</button>

                  <form:form action="${pageContext.request.contextPath}/logout"
                        method="POST">
                  <button class="dropdown-item btn btn-success" type="submit" value=""><i class="fas fa-sign-out-alt"></i> Logout</button>

                  </form:form>

                </div>
              </div>

              </ul>

            </div>
          </nav>

 		<jsp:include page="events-calendar.jsp"></jsp:include>

	
        </div>


    </div>

</body>


</html>
