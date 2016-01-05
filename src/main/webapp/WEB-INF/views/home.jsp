<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="body">
			<h1>Don</h1>

			<p>The time on the server is ${serverTime}.</p>


			<table border="1">
				<tr>
					<th>conm</th>
					<th>cardnm</th>
					<th>cardnum</th>
				</tr>
				<c:forEach var="m" items="${resultSet}">
					<tr>
						<td><c:out value="${m.CONM}" /></td>
						<td><c:out value="${m.CARDNM}" /></td>
						<td><c:out value="${m.CARDNUM}" /></td>
					</tr>
				</c:forEach>
			</table>
			<h2>${model.rs}</h2>
			<table border="1">
				<tr>
					<th>ID_OUT</th>
					<th>USED_NAME</th>
					<th>USED_DT</th>
					<th>TOT_USED_MONEY</th>
					<th>CARD_GGANG</th>
				</tr>
				<c:forEach var="m2" items="${resultSet2}">
					<tr>
						<td><c:out value="${m2.ID_OUT}" /></td>
						<td><c:out value="${m2.USED_NAME}" /></td>
						<td><c:out value="${m2.USED_DT}" /></td>
						<td><c:out value="${m2.TOT_USED_MONEY}" /></td>
						<td><c:out value="${m2.CARD_GGANG}" /></td>
					</tr>
				</c:forEach>
			</table>
			<table id="grid"></table>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>