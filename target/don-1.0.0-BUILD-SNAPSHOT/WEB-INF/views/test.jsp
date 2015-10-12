<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=utf-8"%>


<%@page session="true" import="java.util.*"%>
<%@page import="java.util.Calendar"%>


<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<script type="text/javascript">
			//A $( document ).ready() block.
			$(document).ready(function() {
				console.log("ready!");

				$("#goButton").click(function() {
					console.log("버튼클릭");
					var values = new Array();
					$("tbody input[type=checkbox]:checked").each(function(e) {
						console.log("tr 선택됨");
						var data = $(this).parents('tr:eq(0)');
						values.push($(data).find('td:eq(1)').text());
						console.log($(data).find('td:eq(1)').text());
						
					});
					console.log("마지막:" + values);
				});

			});
		</script>


		<div class="body">
			<table class="lavalamp">
				<thead>
					<tr>
						<td><input type="checkbox"></td>
						<td>1</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td>2</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>3</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>4</td>
					</tr>
				</tbody>
			</table>
		</div>
		<button id="goButton">Go</button>
	</tiles:putAttribute>
</tiles:insertDefinition>
