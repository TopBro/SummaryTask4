<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="ua.nure.zhabin.SummaryTask4.bean.MarksBean" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<fmt:setBundle basename="ua.nure.zhabin.SummaryTask4.locale.resources.resources"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Display Faculties</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-noscript.css" />
		</noscript>
</head>
<body class="contact loading">
	
		<!-- Header -->
			<header id="header">
				<h1 id="logo"><fmt:message key="knure"/></h1>
				<nav id="nav">
					<ul>
						<li class="submenu">
							<a href=""><fmt:message key="menu"/></a>
							<ul>
								<li class="submenu">
									<a href=""><fmt:message key="language"/></a>
									<ul>
										<li><a href="<c:url value="Locale?lang=ru"/>"><fmt:message key="rus"/></a></li>
										<li><a href="<c:url value="Locale?lang=en"/>"><fmt:message key="eng"/></a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="Logout" class="button special"><fmt:message key="logout"/></a></li>
					</ul>
				</nav>
			</header>
		
		<!-- Main -->
			<article id="main">

				<header class="special container">
					<span class="icon fa-laptop"></span>
					<h2><fmt:message key="faculties"/></h2>
				</header>
					
				<!-- One -->
					<section class="wrapper style4 special container small">					
						<!-- Content -->
							<div class="content">
								<h4><b class="italic">${message}</b></h4>
							
								<div class="row half no-collapse-1">
									<div class="2u">
										<fmt:message key="faculty_name"/>
									</div>
									<div class="2u">
										<fmt:message key="budget_place"/>
									</div>
									<div class="2u">
										<fmt:message key="total_place"/>
									</div>
								</div>								
								<c:forEach var="faculty" items="${faculties}">
									<div class="row half no-collapse-1">
										<div class="2u">
											${faculty.name}
										</div>
										<div class="2u">
											${faculty.budget}
										</div>
										<div class="2u">
											${faculty.total}
										</div>
										<div class="3u">
											<form action="Faculty" method="post">
												<input type="hidden" name="faculty_id" value="${faculty.id}">
												<input class="button small" type="submit" value="<fmt:message key="edit"/>">
											</form>	
										</div>
										<div class="3u">
											<form action="Register" method="post">
												<input type="hidden" name="faculty_id" value="${faculty.id}">
												<input class="button small" type="submit" value="<fmt:message key="register"/>">
											</form>	
										</div>
									</div>
								</c:forEach>
								<br>
								<form action="Faculty" method="post">
									<div class="row">
										<div class="12u">
											<ul class="buttons">
												<li><input class="button" type="submit" value="<fmt:message key="add"/>"></li>
											</ul>
										</div>
									</div>
								</form>
							</div>							
					</section>				
			</article>

		<!-- Footer -->
			<footer id="footer">
			
				<span class="copyright">&copy; All rights reserved. EPAM &amp; Associates.</span>
			
			</footer>

</body>
</html>