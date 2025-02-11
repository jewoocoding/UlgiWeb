<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>대여리스트 페이지</title>
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/header.css">
	<link rel="stylesheet" href="../resources/css/list.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<form action="/lease/delete" method="get">
		<table>
			<tr>
				<td>대여번호</td>
				<td><input type=text" value="${library.leaseNo }" name="leaseNo" readonly></td>
			</tr>
			<tr>
				<td>책번호</td>
				<td><input type=text" value="${library.bookNo }" readonly></td>
			</tr>
			<tr>
				<td>고객아이디</td>
				<td><input type=text" value="${library.userId }" readonly></td>
			</tr>
			<tr>
				<td>대여일</td>
				<td><input type=text" value="${library.leaseDate }" readonly></td>
			</tr>
			<tr>
				<td>반납일</td>
				<td><input type=text" value="${library.returnDate }" readonly></td>
			</tr>
		</table>
		<button type="submit">삭제</button>
	</form>
</body>
</html>