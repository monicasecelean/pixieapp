<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="galleryData" required="true" type="com.monicasecelean.pms.vo.galleries.GalleryData"%>

<div class="row">
	<div class="col-xs-12">
		<div class="gallery-details">

			<h4>
				Posted on <time><c:out value="${galleryData.date}" /></time> by 
				<a href="<c:url value="/photographerProfilePage?id=${galleryData.owner.id}"/>">
					<c:out value="${galleryData.owner.firstName} ${galleryData.owner.lastName}" />
				</a> 
				( <c:out value="${galleryData.location}" /> ) in 
				<c:out value="${galleryData.galleryDetails.categoryData}" />
			</h4>
			<p><c:out value="${galleryData.galleryDetails.description}" /></p>
			
			<c:if test="${isClient}">
				<a class="btn btn-default" href="<c:url value="/orderGallery?id=${galleryData.id}"/>">Order Printed Gallery</a>
			</c:if>
		
		</div>
	</div>
</div>

<div class="row">

	<c:forEach var="photo" items="${galleryData.photographies}">
		<c:set var="pictureName" value="${photo.name}"/>
		<div class="col-sm-12 col-xs-6">
			<div class="gallery-item">
				<img alt="photo-name"
				src="<c:url value="/resources/images/Pixie-Content/galleries/${galleryData.owner.accessDataData.username}/${galleryData.galleryDetails.name}/${pictureName}" />">
			</div>
		</div>
	</c:forEach>

</div>