<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- body header -->
<header id="body-header">
	<div class="wrap">
		<div class="container-fluid">
			<div class="row">

				<!-- logo -->
				<div class="col-sm-4">
					<div id="logo">
						<h1>Photography Management Platform</h1>
						<a href="<c:url value="/"/>"><img
							src="<c:url value="resources/images/logo.png"/>" alt="logo" /></a>
					</div>
				</div>
				<!-- logo -->

				<!-- user area -->
				<div class="col-sm-8">
					<div id="user-stat">
					<c:if test="${!isLoggedIn}">
						<a href="<c:url value="/userLogin"/>" class="btn btn-default"><span
							class="glyphicon glyphicon-user"></span> Login</a> or register 
							<a href="<c:url value="/registerModerator"/>">As photographer</a> / <a href="<c:url value="/registerClient"/>">As customer</a>
						<!--
                                    Welcome&nbsp;&nbsp; , &nbsp;&nbsp;<a href="#"><span class="glyphicon glyphicon-user"></span> Secelean Monica</a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><span class="glyphicon glyphicon-cog"></span> Profile</a>
                                    -->
                    </c:if>
                    <c:if test="${isLoggedIn}">
                    	<a href="<c:url value="/logout"/>" class="btn btn-default"><span
							class="glyphicon glyphicon-user"></span> Logout</a> &nbsp;&nbsp;
							<c:if test="${isClient}">
								<a href="<c:url value="/clientAccount"/>">My Account</a>
							</c:if>
							<c:if test="${!isClient}">
								<a href="<c:url value="/moderatorAccount"/>">My Account</a>
							</c:if>
						<!--
                                    Welcome&nbsp;&nbsp; , &nbsp;&nbsp;<a href="#"><span class="glyphicon glyphicon-user"></span> Secelean Monica</a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#"><span class="glyphicon glyphicon-cog"></span> Profile</a>
                                    -->
                    </c:if>
					</div>
				</div>
				<!-- user area -->

			</div>
		</div>
	</div>
</header>
<!-- body header -->