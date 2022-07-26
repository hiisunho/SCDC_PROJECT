<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset='utf-8'>
<!-- jQuery -->	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<!-- Bootstrap CSS --> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" > 
<style>
		body{ padding : 0px } 
		.text-center{ text-align: center! important;position:absolute; top:50%; left:50%; width:280px; height:200px; margin-top:-150px; margin-left:-100px;}
		.mb-4, .my-4 { margin-bottom: 1.5rem!important;}
		.form-control { display: block; width: 100%;font-weight: 400; line-height: 1.5; color: #495057; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da;border-radius: .25rem; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;}
		.form-signin { width: 100%; max-width: 330px; padding: 15px; margin: auto;}

</style>
<script type="text/javascript">
</script>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>mindarrr 로그인</title>
</head>

<body class="text-center mb-4">

<c:choose>
	<c:when test = "${not empty sessionScope.userLoginInfo}">
	<script>
	//alert("로그인되었습니다.");
	location.href="page2";</script>

	</c:when>
	<c:otherwise>
	<form action="authentication" id="loginCheck" method="post" >
	<table class="form-signin">
		
		<tr>
			<td>
			<p> 로그인 서비스 입니다.</p>
			</td>
		</tr>
		<tr>
			<td>
			<input type="text" class="form-control" id ="userCd" name="userId" placeholder="아이디를 입력해주세요">
			</td>
		</tr>
		<tr>
			<td>
			<input type="password" class="form-control" id ="userPs" name="userPw" placeholder="비밀번호를 입력해주세요">
			</td>
		</tr>
		<tr>
			<td>
			<p>
			<button class="btn btn-lg btn-info btn-block">로그인</button>
			</p>
		</td>
		</tr>
	</table>
	
</form>
	<c:if test="${msg == false}">
		<p style="color:#f00;">로그인 정보를 확인해주시기 바랍니다.</p>
	</c:if>
	
	</c:otherwise>

</c:choose>




</body>
</html>