<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>엑셀 파일 내용 출력</title>
</head>
<body>

	<table border="1" align="center">

		<c:forEach var="item" items="${list}">
			<tr>
				<td>${item.name}</td>
				<td>${item.category}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
