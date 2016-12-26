<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.5.4/bootstrap-select.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="/Forum/resources/js/validator.js"></script>

<title>Cancer Forum</title>

<!--  <script src="js/jquery.js" type="text/javascript" ></script>
    <script src="js/bootstrap.min.js" type="text/javascript" ></script>
	
	-->
<style type="text/css">
.nav-tabs>li, .nav-pills>li {
	float: none;
	display: inline-block;
	*display: inline; /* ie7 fix */
	zoom: 1; /* hasLayout ie7 trigger */
}

.nav-tabs, .nav-pills {
	text-align: center;
}
</style>

</head>

<body style="background-image: url(/Reap/resources/img/texture.png)">

	<div class="content-wrapper">
		<div class="container-fluid">

<!-- 			<nav class="navbar navbar" style="padding:7px">
			<div class="container-fluid">
				<div class="navbar-header">

					<a class="navbar-brand" href="#" style="padding: 7px"> <a
						href="#"> <img src="/Reap/resources/img/reap.png" />
					</a> <a href="#" class="hidden-sm hidden-xs" style="padding-left: 15px">
							<img src="/Reap/resources/img/reap2.png" />
					</a>
					</a>
				</div>

			</div>
			</nav> -->


			<div class="row">
				<div class="col-lg-5">

				<%-- <div>${msg}</div> --%>
				
					<div class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab1" data-toggle="tab"
								style="font-size: 22px">LogIn</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tab1">
								<br />
								
								<form:form class="form-horizontal" data-toggle="validator"
									action="loginValidate" method="POST"
									modelAttribute="getLoginCredentials">

									<div class="form-group has-feedback">
										<form:label class="col-md-4 control-label" path="email">Employee Email</form:label>
										<div class="col-md-6">
											<div class="input-group">
												<span class="input-group-addon">@</span>
												<form:input type="email" maxlength="30"
													placeholder="Enter Employee Email"
													data-error="Email address is invalid"
													class="form-control input-md" path="email"></form:input>
											</div>
											<span class="glyphicon form-control-feedback"
												aria-hidden="true"></span>
											<div class="help-block with-errors"></div>
										</div>
									</div>


									<div class="form-group has-feedback">
										<form:label class="col-md-4 control-label" path="password">Passowrd</form:label>
										<div class="col-md-6">
											<form:input data-minlength="6" type="password"
												placeholder="Enter Password"
												data-error="Minimum of 6 characters"
												class="form-control input-md" path="password"></form:input>
											<span class="glyphicon form-control-feedback"
												aria-hidden="true"></span>
											<div class="help-block with-errors"></div>
										</div>
									</div>

									<div class="col-md-12" align="center">

										<input type="submit" value="LogIn"
											class="btn btn-success btn-md"> <br /> <br /> Not a
										Member !! <a href="registration" style="font-size: 17px">Register
											Now</a>

									</div>
								</form:form>

							</div>

						</div>

					</div>
					<br />

				</div>

			</div>

		</div>
	</div>
</body>
</html>