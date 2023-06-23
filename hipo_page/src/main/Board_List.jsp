<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<!-- 무료 구글폰트 불러오기 노토산스 -->
<style> 
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');

body {
	font-family: 'Noto Sans KR', sans-serif;;
}
</style>

<script type="text/javascript">
	function move(url) {
		location.href = url;
	}
</script>

</head>
<body>
	<marquee behavior="alternate" scrolldelay="100" direction="right">
		히포의 홈페이지입니다.</marquee>
	<table class="bbs" width="800" height="200" border="2" bgcolor="D8D8D8">
		<colgroup>
			<col width="50" />
			<col width="500" />
			<col width="100" />
			<col width="50" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
			</tr>
		</thead>
		</tbody>
		<tr>
			<td align="center">3</td>
			<td><a href="Board_View.jsp">게시판 글이에용 3</a></td>
			<td align="center">아기하마히포</td>
			<td align="center">2023/06/13</td>
			<td align="center">1234</td>
		</tr>
		<tr>
			<td align="center">2</td>
			<td><a href="Board_View.jsp">게시판 글이에용 2</a></td>
			<td align="center">아기하마히포</td>
			<td align="center">2023/06/13</td>
			<td align="center">123</td>
		</tr>
		<tr>
			<td align="center">1</td>
			<td><a href="Board_View.jsp">게시판 글이에용 1</a></td>
			<td align="center">아기하마히포</td>
			<td align="center">2023/06/13</td>
			<td align="center">12</td>
		</tr>
		</tbody>
		<tfoot>
			<tr>
			<td align="center" colspan="5">1</td>
			</tr>
			<tfoot>
	</table>
		<input type="button" value="처음으로" onclick="move('Board_List.jsp');" />
		<input type="button" value="글쓰기" onclick="move('Board_Write.jsp');" />
</body>
</html>