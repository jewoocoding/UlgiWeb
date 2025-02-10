<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여리스트 페이지</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<h1>대여리스트</h1>
	<form action="/lease/search" method="get">
		<select name="searchCondition">
			<option value="userId" <c:if test="${search.searchCondition == 'userId' }">selected</c:if>>회원아이디</option>
			<option value="bookName" <c:if test="${search.searchCondition == 'bookName' }">selected</c:if>>책이름</option>
		</select>
		<input type="text" name="searchKeyword" placeholder="검색어를 입력하세요" value="${search.searchKeyword }">
		<button type="submit">검색</button>
	</form>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>대여번호</th>
				<th>책번호</th>
				<th>고객아이디</th>
				<th>대여일</th>
				<th>반납일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lList }" var="list" varStatus="i">
				<tr>
					<td>${i.index + 1 }</td>
					<td>${list.leaseNo }</td>
					<td>${list.bookNo }</td>
					<td>${list.userId }</td>
					<td>${list.leaseDate }</td>
					<td>${list.returnDate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<c:if test="${startNavi ne 1 }">
		<a href="/lease/search?currentPage=${startNavi-1 }&searchCondition=${search.searchCondition}&searchKeyword=${search.searchKeyword}">&lt;</a>
	</c:if>
	<c:forEach begin="${startNavi }" end="${endNavi }" var="i">
		<a href="/lease/search?currentPage=${i }&searchCondition=${search.searchCondition}&searchKeyword=${search.searchKeyword}">${i }</a>	
	</c:forEach>
	<c:if test="${endNavi ne maxPage }">
		<a href="/lease/search?currentPage=${endNavi+1 }&searchCondition=${search.searchCondition}&searchKeyword=${search.searchKeyword}">&gt;</a>
	</c:if>
</body>
</html>