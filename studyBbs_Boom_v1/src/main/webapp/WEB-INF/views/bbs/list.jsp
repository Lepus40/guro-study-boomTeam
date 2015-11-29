<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<tiles:insertDefinition name="bbs">
<tiles:putAttribute name="resource">
<script type="text/javascript">
$(function() {
	var jsonData = ${jsonData};
	console.log(jsonData);
});
</script>
</tiles:putAttribute>
<tiles:putAttribute name="body">
테스트 list입니다.
</tiles:putAttribute>
</tiles:insertDefinition>