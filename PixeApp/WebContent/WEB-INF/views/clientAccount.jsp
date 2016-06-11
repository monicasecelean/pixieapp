<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="structure" tagdir="/WEB-INF/tags"%>

<structure:head />
<body>
	<structure:header />
	<structure:bodyHeader />

	<section class="regular">
		<section class="wrap">
			<section class="container-fluid">

				<!-- title -->
				<div class="row section-title">
					<div class="col-xs-12">
						<h2>Account Page</h2>
					</div>
				</div>
				<!-- title -->

				<c:if test="${not empty message }">
					<div class="alert alert-danger" role="alert">
						<c:out value="${message}" />
					</div>
				</c:if>

				<c:if test="${not empty successMessage }">
					<div class="alert alert-success" role="alert">
						<c:out value="${successMessage}" />
					</div>
				</c:if>

				<!-- content -->
				<div class="row">
					<%-- <div class="col-sm-8 col-sm-offset-2">

						<structure:displayProfilePicture
							pictureName="${clientData.avatarName}" />

						<form:form modelAttribute="clientData" action="clientAccount"
							enctype="multipart/form-data">

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
										<p class="label-text">
											<c:out value="${clientData.accessDataData.username}" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:password path="newPassword" placeholder="New Password" />
										</p>
									</div>
								</div>
							</div>


							<div class="container-fluid">
								<div class="row row-no-padding">
									<div class="col-xs-12">
										<p class="title">Location</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="contactDetailsData.phoneNumber" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="contactDetailsData.town" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="contactDetailsData.addressLine1" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="contactDetailsData.addressLine2" />
										</p>
									</div>
									<div class="col-sm-6">
										<p>
											<form:input path="contactDetailsData.zipCode" />
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
												Update Account Info
											</button>
										</p>
									</div>
								</div>
							</div>
						</form:form>


						<!-- Display Events -->
						<structure:displayEvents eventDatas="${eventDatas}" />
						<!-- END Display Events -->

					</div>
 --%>				</div>
				<!-- content -->

			</section>
		</section>
	</section>

	<structure:footer />

</body>

</html>