<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>대여 추가 페이지</title>
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/header.css">
	<link rel="stylesheet" href="../resources/css/list.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<form action="/lease/insert" method="post">
		<table>
			<tr>
				<td>대여번호</td>
				<td><input type="text" name="leaseNo"></td>
			</tr>
			<tr>
				<td>책번호</td>
				<td><input type="text" name="bookNo"></td>
			</tr>
			<tr>
				<td>고객아이디</td>
				<td><input type="text" name="userId"></td>
			</tr>
		</table>
		<button type="submit">추가</button>
	</form>
</body>
</html>