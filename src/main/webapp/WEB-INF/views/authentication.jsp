<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    // 0: 인증 가능 사용자 및 비밀번호 목록.
    String[] users = { "abc" };
    String[] passwords = { "1234" };
    // 1: form 으로부터 전달된 데이터를 변수에 저장.
    String id = request.getParameter("userId");
    String pw = request.getParameter("userPw");
    // 2: 사용자 인증
    String redirectUrl = "login"; // 인증 실패시 재요청 될 url 
    for (int i = 0; i < users.length; i++) {
        if (users[i].equals(id) && passwords[i].equals(pw)) {
            session.setAttribute("signedUser", id); // 인증되었음 세션에 남김
            redirectUrl = "/export/stock"; // 인증 성공 시 재요청 url
        }
    }
    response.sendRedirect(redirectUrl);
    //완료
%>
</body>
</html>