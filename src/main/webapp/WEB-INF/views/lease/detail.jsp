<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>대여리스트 페이지</title>
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/header.css">
	<link rel="stylesheet" href="../resources/css/detail.css">
</head>
<body>
	<div id="container">
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		<main>
			<h3 class="content-title">대여 관리 - 상세페이지</h3>
			<form action="/lease/delete" method="get">
				<table class="detail">
					<tr>
						<td class="tbTitle">대여번호</td>
						<td class="tbContent"><input type=text" value="${library.leaseNo }" name="leaseNo" readonly></td>
					</tr>
					<tr>
						<td class="tbTitle">책이름</td>
						<td class="tbContent"><input type=text" value="${library.bookName }" readonly></td>
					</tr>
					<tr>
						<td class="tbTitle">고객아이디</td>
						<td class="tbContent"><input type=text" value="${library.userId }" readonly></td>
					</tr>
					<tr>
						<td class="tbTitle">대여일</td>
						<td class="tbContent"><input type=text" value="${library.leaseDate }" readonly></td>
					</tr>
					<tr>
						<td class="tbTitle">반납일</td>
						<td class="tbContent"><input type=text" value="${library.returnDate }" readonly></td>
					</tr>
				</table>
				<div class="delete-button">
					<button type="submit">삭제</button>			
				</div>
			</form>			
		</main>
	</div>
</body>
</html>