<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>     -->
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
		$("#submitBtn").click(function() {

			if ($("#contentId").val() == "") {
				alert("글 내용을 입력하세요.");
				$("#contentId").focus();
				return;
			}

			if ($("#idId").val() == "") {
				alert("아이디를 입력하세요.");
				$("#idId").focus();
				return;
			}

			if ($("#passwordId").val() == "") {
				alert("비밀번호를 입력하세요.");
				$("#passwordId").focus();
				return;
			}

			$("#writeForm").attr("method", "post");
			$("#writeForm").attr("action", "writeAction");
			$("#writeForm").submit();

		});
		
	});
</script>
<h3 align="center">-글쓰기-</h3>

<table border="1" align="center" align="center" width="600px"
	cellpadding=0 cellspacing=0>
	<form id="writeForm">
		<tr align="center" width="600px">
			<td>글제목 :</td>
			<td><input type="text" name="title" id="titleId" /></td>
		</tr>
		<tr align="center" width="600px">
			<td colspan="2">글내용</td>
		</tr>
		<tr>
			<td colspan="2" align="center" width="600px"><textarea
					name="content" cols="70px" rows="20px" id="contentId"></textarea></td>
		</tr>
		<tr align="center" width="600px">
			<td>아이디 :</td>
			<td><input type="text" name="id" id="idId" /></td>
		</tr>
		<tr align="center" width="600px">
			<td>비밀번호 :</td>
			<td><input type="password" name="password" id="passwordId" /></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="button" value="글쓰기" id="submitBtn" />
				<input type="reset" value="다시쓰기" /> <input type="button" value="글목록" id="listGoBtn"/>
			</td>
		</tr>
	</form>
</table>