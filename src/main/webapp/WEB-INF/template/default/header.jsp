<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${homeUrl}">Time == 💵</a>
		</div>
		<div class="navbar-collapse collapse">
		<spring:url value="/" var="homeUrl" htmlEscape="true"/>
		<spring:url value="/cal" var="calUrl" htmlEscape="true"/>
		<spring:url value="/input" var="inputUrl" htmlEscape="true"/>
		<spring:url value="/test" var="testUrl" htmlEscape="true" />
			<ul class="nav navbar-nav">
				<li class="active"><a href="${homeUrl}">Home</a></li>
				<li><a href="${calUrl}">Cal</a></li>
				<li><a href="${inputUrl}">사용한돈적기</a></li>
				<li><a href="${testUrl}">test</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>