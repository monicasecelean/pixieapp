<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- navigation -->
<nav class="main-nav" role="navigation">
	<ul>
		<c:if test="${currentPage eq 'index'}">
			<li class="active">
		</c:if>
		<c:if test="${currentPage eq ''}">
			<li class="active">
		</c:if>
		<c:if test="${currentPage ne 'index'}">
			<li>
		</c:if>
			<div></div> 
		
		<a href="<c:url value="/"/>" data-toggle="tooltip" data-placement="bottom"
			title="Home"> <img
				src="<c:url value="/resources/images/house16.png"/>" alt="home" />
		</a>
		</li>
		<c:if test="${currentPage eq 'galleries'}">
			<li class="active">
		</c:if>
		<c:if test="${currentPage ne 'galleries'}">
			<li>
		</c:if>
			<div></div> <a href="<c:url value="galleriesPage"/>" data-toggle="tooltip" data-placement="bottom"
			title="Galleries"> <img
				src="<c:url value="/resources/images/images11.png"/>"
				alt="galleries" />
		</a>
		</li>
		<c:if test="${currentPage eq 'photographers'}">
			<li class="active">
		</c:if>
		<c:if test="${currentPage ne 'photographers'}">
			<li>
		</c:if>
			<div></div> <a href="<c:url value="photographersPage"/>" data-toggle="tooltip" data-placement="bottom"
			title="Photographers"> <img
				src="<c:url value="/resources/images/photo7.png"/>"
				alt="photographers" />
		</a>
		</li>
		<c:if test="${currentPage eq 'about'}">
			<li class="active">
		</c:if>
		<c:if test="${currentPage ne 'about'}">
			<li>
		</c:if>
			<div></div> <a href="#" data-toggle="tooltip" data-placement="bottom"
			title="About"> <img
				src="<c:url value="/resources/images/information1.png"/>"
				alt="about" />
		</a>
		</li>
		<li>
			<div></div> <a href="#" data-toggle="tooltip" data-placement="bottom"
			title="More"> <img
				src="<c:url value="/resources/images/more4.png" />" alt="about" />
		</a>
		</li>
	</ul>
</nav>
<!-- navigation -->