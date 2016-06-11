<%@ attribute name="eventDatas" required="true" type="java.util.List"%>
<%@ attribute name="photographer" required="false" type="java.lang.Boolean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-xs-12 col-sm-8 col-sm-offset-2">
		<div class="gallery-details">

		<c:if test="${empty eventDatas}">
				You have no pending events
		</c:if>
		
		<c:if test="${not empty eventDatas}">
		<c:forEach var="event" items="${eventDatas}">
				<div class="event">
					<p>Name: <c:out value=" ${event.eventDetails.name} " /></p>
					<p>Description: <c:out value=" ${event.eventDetails.description} " /></p>
					<p>Category: <c:out value=" ${event.eventDetails.categoryData} " /></p>
					<p>Location: <c:out value=" ${event.location} " /></p>
					<p>Date: <c:out value=" ${event.date} " /></p>
					<p>Client: <c:out value=" ${event.client.firstName} ${event.client.lastName} " /></p>
					<p>Status: <c:out value=" ${event.eventStatusData} "/></p>
				</div>
			</c:forEach>
		</c:if>
		</div>
	</div>
</div>
