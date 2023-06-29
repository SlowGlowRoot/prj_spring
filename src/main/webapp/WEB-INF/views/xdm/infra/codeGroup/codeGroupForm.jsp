<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  
11: <c:out value="${param.seq}"/>

<form name="form" method="post">
	<%@include file="includeElementId.jsp"%>
	<input type="text" name="name" id="name" value="<c:out value="${item.name}"/>">
	
	<c:choose>
		<c:when test="${empty item.seq}">
			<button type="button" class="btn btn-primary" id="btnInsert">save</button>
		</c:when>
		<c:otherwise>
			<button type="button" class="btn btn-danger" id="btnDelete">Delete</button>
			<button type="button" class="btn btn-warning" id="btnUelete">Uelete</button>
			<button type="button" class="btn btn-primary" id="btnSave">save</button>
		</c:otherwise>	
	</c:choose>
</form>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script>

	$("#btnUelete").on("click", function() {
		location.href = "/codeGroupList";
	});

	$("#btnSave").on("click", function() {
		
	//	$("form[name=formList]").attr("method", "get");
		$("form[name=form]").attr("action", "/codeGroupUpdt").submit();
		alert("수정된 내용이 정상적으로 저장되었습니다.")
	
	});
	
	$("#btnDelete").on("click", function() {
		$("form[name=form]").attr("action", "/codeGroupDel").submit();
		alert("정보가 정상적으로 삭제되었습니다.")
	});
	
	$("#btnInsert").on("click", function(){
	 	$("form[name=form]").attr("action", "/codeGroupInst").submit();
	});


</script>