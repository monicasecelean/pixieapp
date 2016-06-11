<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="gallery" required="true" type="com.monicasecelean.pms.vo.galleries.GalleryData"%>
<c:set var="pictureName" value="${gallery.photographies[0].name}"></c:set>
<img alt="profile-picture"
	src="<c:url value="/resources/images/Pixie-Content/galleries/${gallery.owner.accessDataData.username}/${gallery.galleryDetails.name}/${pictureName}" />"
	width="200px" height="200px">
<br>