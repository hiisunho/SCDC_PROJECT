<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/includes/header.jsp"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<head>
	<style>
		table {
			width: 70%;
			margin: auto;
		}
		table, td, th {
			border-collapse: collapse;
			border: 2px solid black;
		}	
	</style>
</head>

<body>
		<div class="panel-head">
			<h1><b>제품리스트</b></h1>
		</div>
		
		<div class="panel-body">
			<table>
				<tr>
					<th><a href="doExportPart">냉장고</a></th>
					<th><a href="doExportPart">TV</a></th>
					<th><a href="doExportPart">공기청정기</a></th>
					<th><a href="doExportPart">선풍기</a></th>
				</tr>
				<tr>
					<th><a href="doExportPart">콤푸타</a></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</table>
		</div>

		<!-- Bootstrap Core JavaScript -->
		<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="../vendor/metisMenu/metisMenu.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="../dist/js/sb-admin-2.js"></script>
</body>

</html>