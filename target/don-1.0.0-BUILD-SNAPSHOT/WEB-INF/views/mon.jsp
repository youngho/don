<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=utf-8"%>


<%@page session="true" import="java.util.*"%>
<%@page import="java.util.Calendar"%>


<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="body">
			<c:forEach var="m2" items="${resultSet}">
				<table class="lavalamp">
					<tr>
						<td><c:out value="${m2.ID_OUT}" /></td>
					</tr>
					<tr>
						<td><c:out value="${m2.USED_NAME}" /></td>
					</tr>
					<tr>
						<td><c:out value="${m2.USED_DT}" /></td>
					</tr>
					<tr>
						<td><c:out value="${m2.TOT_USED_MONEY}" /></td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
