<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="/resources/lib/jquery-2.1.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#passwordId").focus();
		$("#deleteBtn").click(function() {

			if ($("#passwordId").val() == "") {
				alert("비밀번호를 입력하세요.");
				$("#passwordId").focus();
				return;
			}

			$("#deleteForm").attr("method", "post");
			$("#deleteForm").attr("action", "deletItem");
			$("#deleteForm").submit();

		});
		
	});
</script>
<h3 align="center">-글삭제-</h3>

<table border="1" align="center" align="center" width="600px"
	cellpadding=0 cellspacing=0>
	<form id="deleteForm">
		<tr align="center" width="600px">
			<td>글제목 :</td>
			<td>글제목 보이기-</td>
		</tr>
		<tr align="center" width="600px">
			<td>아이디 :</td>
			<td>아이디 보이기-</td>
		</tr>
		<tr align="center" width="600px">
			<td>비밀번호 :</td>
			<td><input type="password" name="password" id="passwordId" /></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="button" value="글쓰기" id="deleteBtn" />
			<input type="button" value="글목록" id="listGoBtn"/>
			</td>
		</tr>
	</form>
</table>