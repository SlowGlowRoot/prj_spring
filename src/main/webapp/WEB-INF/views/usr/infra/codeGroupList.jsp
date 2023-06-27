<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  </head>
codeGroupList.jsp

<!-- <form name="formList"> -->
<form name="formList" method="post">
	<select name="shOption">
	    <option value="">--선택하세요--</option>
	    <option value="1">1</option>
	    <option value="2">2</option>
	    <option value="3">3</option>
	    <option value="4">Male</option>
	    <option value="5">Female</option>
	</select>
	
	<input type="text" name="shKeyword">
	
	<button type="button" class="btn btn-primary" id="btn">Search</button>
	<button type="button" class="btn btn-danger" id="btn_del">Delete</button>
	<button type="button" class="btn btn-success" id="btn_add">Add</button>
</form>

<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
	<!-- forEach는 향산된 for문과 비슷, "${list}"는 Controller에서 정보를 받는 변수, var="list"는 그걸 저장하는 변수 -->
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.seq}"></c:out>
			<a href="codeGroupForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out><br></a>
		</c:forEach>
	</c:otherwise>
</c:choose>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script type="text/javascript">

// 	var form = $("form[name='formList']");

	$("#btn").on("click", function() {
// 		자기 자신을 호출 해준다.
		$("form[name=formList]").attr("action", "/codeGroupList").submit();
		$("form[name=formList]").attr("method", "get");

// 		alert("asdasd")
	});

</script>