<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="structure" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<structure:head />
<body>
	<structure:header/>
		<structure:bodyHeader/>

		<!-- intro -->
	 	<section id="intro">
			<div class="wrap">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12">
							<h2>Welcome to Pixie</h2>
							<h3>Browse the perfect photographer for your session or
								event</h3>
							<a href="#">Get started</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- intro -->

		<!-- how it works -->
		<section id="boxes">
			<div class="wrap">
				<div class="container-fluid">

					<!-- title -->
					<div class="row section-title">
						<div class="col-xs-12">
							<h2>How it works?</h2>
						</div>
					</div>
					<!-- title -->

					<!-- content -->
					<div class="row">

						<!-- box -->
						<div class="col-sm-6">
							<div class="box">
								<div>
									<span class="glyphicon glyphicon-camera"></span>
									<div>
										<h5>For photographers</h5>
										<h6>Build your profile for free as a photographer</h6>
									</div>
								</div>
								<a href="<c:url value="/registerModerator"/>">Get started</a>
							</div>
						</div>
						<!-- box -->

						<!-- box -->
						<div class="col-sm-6">
							<div class="box">
								<div>
									<span class="glyphicon glyphicon-ok-circle"></span>
									<div>
										<h5>For customers</h5>
										<h6>Browse for the right photographer</h6>
									</div>
								</div>
								<a href="<c:url value="/registerClient"/>">Register</a>
							</div>
						</div>
						<!-- box -->

					</div>
					<!-- content -->

				</div>
			</div>
		</section>
		<!-- how it works -->

		<!-- galleries -->
		<section id="galleries">

			<!-- title -->
			<div class="wrap">
				<div class="container-fluid">
					<div class="row section-title">
						<div class="col-xs-12">
							<h2>Latest galleries</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- title -->

			<!-- galleries -->
			<div class="container-fluid container-galleries">
				<div class="row row-no-padding">
					<!-- gallery -->
					<%-- <c:forEach var="index" begin="0" end="5">
						<c:if test="${fn:length(galleries) le index}">
							<!-- display default gallery -->
							<div class="col-sm-2 col-xs-6">
								<div class="gallery">
									<a href="#"><img src="<c:out value="resources/images/thumb.jpg"/>" alt="thumb" /></a>
									<div>
										<a href="#"><h6>Edge of darkness</h6></a> <a href="#"><p>by
												Antonio Moreni</p></a>
									</div>
								</div>
							</div>
							<!-- display default gallery -->
						</c:if>
						<c:if test="${fn:length(galleries) gt index}">
							<c:set var="gallery" value="${galleries[index]}"/>
							<div class="col-sm-2 col-xs-6">
								<div class="gallery gallery-small">
									
									<a href="<c:out value="viewGalleryDetails?id=${gallery.id}"/>" >
										<structure:displayGalleryFirstPicture gallery="${gallery}"/>
									</a>
									<div>
										<a href="<c:out value="viewGalleryDetails?id=${gallery.id}"/>">
											<h6><c:out value="${gallery.galleryDetails.name}"/></h6>
										</a> 
										<a href="<c:url value="/photographerProfilePage?id=${gallery.owner.id}"/>">
											<p>by <c:out value="${gallery.owner.firstName} ${gallery.owner.lastName}"/></p>
										</a>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach> --%>
					<!-- gallery -->
				</div>
			</div>
			<!-- galleries -->

			<!-- more -->
			<div class="wrap">
				<div class="container-fluid">
					<div class="row more-link">
						<div class="col-xs-12">
							<a href="<c:url value="galleriesPage"/>">View more</a>
						</div>
					</div>
				</div>
			</div>
			<!-- more -->

		</section>
		<!-- galleries -->

		<!-- invite -->
		<section id="invite"> 
			<div class="wrap">
				<div class="container-fluid">
					<div class="col-sm-6 col-sm-offset-3 col-xs-12">
						<img src="<c:url value="/resources/images/logo-badge.png"/>" alt="badge">
						<h4>Curious?</h4>
						<p>Join our online community and enjoy the beauty of real
							photography!</p>
						<a href="#">Join now</a>
					</div>
				</div>
			</div>
		</section>
		<!-- invite -->

	<structure:footer/>

</body>

</html>