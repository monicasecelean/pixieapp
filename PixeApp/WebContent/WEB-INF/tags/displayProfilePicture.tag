<%@ attribute name="pictureName" required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Display profile picture -->
<c:choose>
	<c:when test="${empty pictureName}">
		<img alt="default-profile-picture"
			src="<c:url value="/resources/images/default-profile-pic.png" />">
	</c:when>
	<c:otherwise>
		<img alt="profile-picture"
			src="<c:url value="/resources/images/Pixie-Content/profile-pictures/${pictureName}" />"
			width="200px" height="200px">
	</c:otherwise>
</c:choose>
<!-- END Display profile picture -->