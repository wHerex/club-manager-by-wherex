<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html>
		<head>
			<meta charset="ISO-8859-1">
				<title>Insert title here</title>

				<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" id="bootstrap-css">
					<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
					<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

					<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/denied-page.css">
						<!------ Include the above in your HEAD tag ---------->
					</head>
					<body>

						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<div class="error-template">
										<h1>Oops!</h1>
										<h2>403 Access Denied</h2>
										<div class="error-details">You are not authorized to access this resource!</div>
										<div class="error-actions">
											<a href="${pageContext.request.contextPath}/" class="btn btn-primary btn-lg">
												<span class="glyphicon glyphicon-home"></span>
												Take Me Home
											</a>
											<a href="${pageContext.request.contextPath}/contact" class="btn btn-default btn-lg">
												<span class="glyphicon glyphicon-envelope"></span>
												Contact Support
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</body>
				</html>
