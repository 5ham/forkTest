<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.study.vo.*" %>    
<%
	BoardVO vo = (BoardVO)request.getAttribute("vo");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 상세조회</h2>
	<table border="1">
		<tbody>
			<tr>
				<th>제목</th>
				<td>${vo.subject}</td>
			</tr>
			<tr height="300">
				<th>내용</th>
				<td>${vo.content}</td>
			</tr>
		</tbody>
	</table>
	
	<button onclick="location.href='modify.do?bidx=${vo.bidx}'">수정</button>
	
	<button onclick="del()">삭제</button>
	<form name="frm" action="delete.do" method="post">
		<input type="hidden" name="bidx" value="${vo.bidx }">
	</form>
	<script>
		function del(){
			document.frm.submit();
		}
	</script>
	
</body>
</html>







