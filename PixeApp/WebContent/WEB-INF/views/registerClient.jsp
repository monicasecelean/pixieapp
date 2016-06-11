<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="structure" tagdir="/WEB-INF/tags"%>

<structure:head />
<body>
	<structure:header />
	<structure:bodyHeader />

	<!-- regular -->
	<section class="regular">
		<section class="wrap">
			<section class="container-fluid">

				<!-- title -->
				<div class="row section-title">
					<div class="col-xs-12">
						<h2>Join our community !</h2>
					</div>
				</div>
				<!-- title -->

				<c:if test="${not empty message }">
					<div class="alert alert-danger" role="alert">
						<c:out value="${message}" />
					</div>
				</c:if>

				<!-- content -->
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">

						<form:form commandName="clientData" action="registerClient"
							method="post">
							<div class="container-fluid">
								<div class="row row-no-padding">
									<div class="col-xs-12">
										<p>Place fill in the following fields:</p>
									</div>
								</div>
							</div>

							<div class="container-fluid">
								<div class="row row-no-padding">
									<div class="col-xs-12">
										<p class="title">Basic info</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="firstName" placeholder="First Name" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="lastName" placeholder="Last Name" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:select path="type">
												<form:options items="${availableClientTypes}"
													itemValue="enumValue" itemLabel="displayName" />
											</form:select>
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="fileData" type="file" />
										</p>
									</div>

								</div>
							</div>

							<div class="container-fluid">
								<div class="row row-no-padding">
									<div class="col-xs-12">
										<p class="title">Account details</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="accessData.username" placeholder="Email" />
										</p>
									</div>
									<div class="col-sm-6 visible-lg visible-md">
										<p class="label-text">( will serve as your username )</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:password path="accessData.password"
												placeholder="Password" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:password path="accessData.password"
												placeholder="Verify password" />
										</p>
									</div>
								</div>
							</div>

							<div class="container-fluid">
								<div class="row row-no-padding">
									<div class="col-xs-12">
										<p class="title">Address Details</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="addressData.addressLine"
												placeholder="Address" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="addressData.zipCode" placeholder="Zip Code" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="addressData.city" placeholder="City" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="addressData.country" placeholder="Country" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="addressData.phoneNumber"
												placeholder="Phone Number" />
										</p>
									</div>

								</div>
							</div>

							<div class="container-fluid">
								<div class="row row-no-padding">
									<div class="col-xs-12">
										<p>
											<button type="submit">
												<span class="glyphicon glyphicon-circle-arrow-right"></span>
												Register
											</button>
										</p>
									</div>
								</div>
							</div>


							<p>
								Already registered? <a href="<c:url value="/userLogin"/>">Log
									in!</a>
							</p>

						</form:form>
					</div>
				</div>
				<!-- content -->

			</section>
		</section>
	</section>
	<!-- regular -->

	<structure:footer />

</body>

</html>