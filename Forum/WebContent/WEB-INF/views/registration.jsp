<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.field-error .control-label, .field-error .help-block, .field-error .form-control-feedback
	{
	color: #ff0039;
}

.field-success .control-label, .field-success .help-block,
	.field-success .form-control-feedback {
	color: #2780e3;
}
</style>

</head>

<body style="background-image: url(/Forum/resources/img/texture.png)">

	<div class="content-wrapper">
		<div class="container-fluid">

			<div class="row">
				<div class="col-lg-5">

					<div class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab1" data-toggle="tab"
								style="font-size: 22px">Registration</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tab1">
								<br />
								<center>
									Already a Member !! <a href="login"
										style="font-size: 17px; color: red">Login Now</a>
								</center>
								<br />



								<form:form class="form-horizontal"
									modelAttribute="patientRegistration"
									data-toggle="validator" action="registerValidate" method="POST" >
									<fieldset>


										<div class="form-group has-feedback">
											<form:label class="col-md-4 control-label" path="patientName">Patient Name:</form:label>
											<div class="col-md-6">
												<form:input type="text" data-minlength="3" maxlength="25"
													placeholder="Enter Patient Name"
													data-error="Minimum 3 Characters"
													class="form-control input-md" path="patientName"></form:input>
												<span class="glyphicon form-control-feedback"
													aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>



										<div class="form-group has-feedback">
											<form:label class="col-md-4 control-label"
												path="patientEmailId">Patient's Email:</form:label>
											<div class="col-md-6">
												<div class="input-group">
													<span class="input-group-addon">@</span>
													<form:input type="email"
														placeholder="This will be Your Login ID" maxlength="30"
														class="form-control input-md"
														data-error="Email address is invalid"
														path="patientEmailId"></form:input>
												</div>
												<span class="glyphicon form-control-feedback"
													aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>



										<div class="form-group has-feedback">
											<form:label class="col-md-4 control-label" path="password">Password:</form:label>
											<div class="col-md-6">
												<form:input id="pass" type="password" data-minlength="6"
													maxlength="25" placeholder="Enter Password"
													data-error="Minimum of 6 characters"
													class="form-control input-md" path="password"></form:input>
												<span class="glyphicon form-control-feedback"
													aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>



										<div class="form-group has-feedback">
											<label class="col-md-4 control-label" for="password">Confirm
												Password:</label>
											<div class="col-md-6">
												<input id="cpass" name="cpass" type="password"
													placeholder="Confirm Password" data-match="#pass"
													data-match-error="Oopsss!! Password Do not match"
													class="form-control input-md" required> <span
													class="glyphicon form-control-feedback" aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>

										<div class="form-group has-feedback">
											<form:label class="col-md-4 control-label"
												path="mobileNumber">Mobile Number:</form:label>
											<div class="col-md-6">
												<form:input type="text" pattern="^[_0-9]{1,}$"
													data-minlength="10" maxlength="10"
													placeholder="Enter Mobile Number"
													data-error="Please Enter Valid Mobile Number"
													class="form-control input-md" path="mobileNumber"></form:input>
												<span class="glyphicon form-control-feedback"
													aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>

														<div class="form-group has-feedback">
											<form:label class="col-md-4 control-label" path="country">Country:</form:label>
											<div class="col-md-6">
												<form:input type="text" data-minlength="3" maxlength="25"
													placeholder="Enter Country"
													data-error="Minimum 3 Characters"
													class="form-control input-md" path="country"></form:input>
												<span class="glyphicon form-control-feedback"
													aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>
										
														<div class="form-group has-feedback">
											<form:label class="col-md-4 control-label" path="state">State:</form:label>
											<div class="col-md-6">
												<form:input type="text" data-minlength="3" maxlength="25"
													placeholder="Enter State"
													data-error="Minimum 3 Characters"
													class="form-control input-md" path="state"></form:input>
												<span class="glyphicon form-control-feedback"
													aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>
										
														<div class="form-group has-feedback">
											<form:label class="col-md-4 control-label" path="city">City:</form:label>
											<div class="col-md-6">
												<form:input type="text" data-minlength="3" maxlength="25"
													placeholder="Enter City"
													data-error="Minimum 3 Characters"
													class="form-control input-md" path="city"></form:input>
												<span class="glyphicon form-control-feedback"
													aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>
										
														<div class="form-group has-feedback">
											<form:label class="col-md-4 control-label" path="disease">Interested Disease:</form:label>
											<div class="col-md-6">
												<form:input type="text" data-minlength="3" maxlength="25"
													placeholder="Enter Interested Disease"
													data-error="Minimum 3 Characters"
													class="form-control input-md" path="disease"></form:input>
												<span class="glyphicon form-control-feedback"
													aria-hidden="true"></span>
												<div class="help-block with-errors"></div>
											</div>
										</div>

										<div class="form-group">
		
											<label class="col-md-4 control-label" for="submit"></label>
											<div class="col-md-8">
												<br /> <br /> <input type="submit" value="Submit"
													class="btn btn-success btn-md"></input> &nbsp &nbsp

											</div>
										</div>

									</fieldset>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
