<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="resources/css/nstyle.css" />
</head>
<body>
	<h2>게시판</h2>
	게시글수 : ${pageVo.totRow}
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${list }" var="list">
			<tr>
				<td>${list.bno }</td>
				<td><a href="content_view?bno=${list.bno }">${list.btitle }</a></td>
				<td>${list.bwriter }</td>
				<td>${list.brdate }</td>
				<td>${list.bhit }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5"><a href="write_view">글작성</a></td>
		</tr>

	</table>
	<br />
	<input type="hidden" name="page" id="page" value="" />
	<c:if test="${pageVo.totPage>1 }">
		<c:if test="${pageVo.page>1 }">
			<a href="board?page=1">[처음]</a>
			<a href="board?page=${pageVo.page-1 }">[이전]</a>
		</c:if>
		<c:forEach begin="${pageVo.pageStart }" end="${pageVo.pageEnd }"
			var="i">
			<c:choose>
				<c:when test="${i eq pageVo.page }">
					<strong style="color: red">${i } &nbsp;</strong>
				</c:when>
				<c:otherwise>
					<a href="board?page=${i }">${i } &nbsp;</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${pageVo.totPage>pageVo.page }">
			<a href="board?page=${pageVo.page+1 }">[다음]</a>
			<a href="board?page=${pageVo.totPage }">[마지막]</a>
		</c:if>
	</c:if>
	<br />
	<form action="board_search">
		<input type="text" name="key" />&nbsp;<input type="submit" value="검색" />
	</form>
</body>
</html>