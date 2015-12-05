<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="/resources/lib/jquery-2.1.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#titleId").focus();
		$("#titleId").focusout(function() {
			if ($("#titleId").val() == "") {
				alert("글 제목을 입력하세요.");
				$("#titleId").focus();
			}
		});
		$("#updateBtn").click(function() {

			if ($("#contentId").val() == "") {
				alert("글 내용을 입력하세요.");
				$("#contentId").focus();
				return;
			}

			$("#updateForm").attr("method", "post");
			$("#updateForm").attr("action", "updateAction");
			$("#updateForm").submit();

		});
		
	});
</script>
<h3 align="center">-글쓰기-</h3>

<table border="1" align="center" align="center" width="600px"
	cellpadding=0 cellspacing=0>
	<form id="updateForm">
		<tr align="center" width="600px">
			<td>글제목 :</td>
			<td><input type="text" name="title" id="titleId"  value="글제목 보여줘야함"/></td>
		</tr>
		<tr align="center" width="600px">
			<td colspan="2">글내용</td>
		</tr>
		<tr>
			<td colspan="2" align="center" width="600px"><textarea
					name="content" cols="70px" rows="20px" id="contentId" value="글내용 보여줘야함"></textarea></td>
		</tr>
		<tr align="center" width="600px">
			<td>아이디 :</td>
			<td>아이디</td>
		</tr>
		<tr align="center" width="600px">
			<td>비밀번호 :</td>
			<td>비밀번호</td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="button" value="글쓰기" id="updateBtn" />
				<input type="reset" value="다시쓰기" /> <input type="button" value="글목록" id="listGoBtn"/>
			</td>
		</tr>
	</form>
</table>