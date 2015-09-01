<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>



<div class="lavalamp dark">
	<ul>
		<spring:url value="/" var="homeUrl" htmlEscape="true"/>
		<li class="active"><a href="${homeUrl}">Home</a></li>
		<spring:url value="/cal" var="calUrl" htmlEscape="true"/>
		<li><a href="${calUrl}">Cal</a></li>
		<li><a href="">이번달쓴돈</a></li>
		
		<spring:url value="/input" var="inputUrl" htmlEscape="true"/>
		<li><a href="${inputUrl }">사용한돈적기</a></li>
		
		<spring:url value="/test" var="testUrl" htmlEscape="true" />
		<li><a href="${testUrl }">test</a></li>
		
		<li><a href="">Contacts</a></li>
		<li><a href="">Back to Article</a></li>
		<li><a href="">How it Works?</a></li>
	</ul>
	<div class="floatr">123</div>
</div>