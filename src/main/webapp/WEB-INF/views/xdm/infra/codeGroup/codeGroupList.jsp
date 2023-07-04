<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" type="text/css" href="/resources/template/niceAdmin/assets/css/style.css">


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  </head>
codeGroupList.jsp

<!-- <form name="formList"> -->
<form name="formList" method="post">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	
	<select name="shOption">
	    <option value="">--선택하세요--</option>
	    <option value="1">1</option>
	    <option value="2">2</option>
	</select>
	
	<input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
	
	<button type="button" class="btn btn-primary" id="btn">Search</button>
	<button type="button" class="btn btn-secondary" id="btnInit">INIT</button>
<!-- 	<button type="button" class="btn btn-danger" id="btn_del">Delete</button> -->
<!-- 	<button type="button" class="btn btn-success" id="btn_add">Add</button> -->
</form>

<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!<br></td>
		</tr>	
	</c:when>
	<c:otherwise>
	<!-- forEach는 향산된 for문과 비슷, "${list}"는 Controller에서 정보를 받는 변수, var="list"는 그걸 저장하는 변수 -->
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.seq}"></c:out>
			<a href="codeGroupForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a>
			<c:out value="${list.delNy}"></c:out><br>
		</c:forEach>
	</c:otherwise>
</c:choose>


<div class="container-fluid px-0 mt-2">
    <div class="row">
        <div class="col">
            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
            <ul class="pagination justify-content-center mb-0">
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
<c:if test="${vo.startPage gt vo.pageNumToShow}">
                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
</c:if>
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>                
<c:if test="${vo.endPage ne vo.totalPages}">                
                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
</c:if>
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
            </ul>
        </div>
    </div>
</div>


<button type="button" class="btn btn-primary" id="btnAdd">Add</button>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script type="text/javascript">

// 	var form = $("form[name='formList']");

	$("#btn").on("click", function() {
// 		자기 자신을 호출 해준다.
		$("form[name=formList]").attr("action", "/codeGroupList").submit();
		$("form[name=formList]").attr("method", "get");
	});
	
	$("#btnAdd").on("click", function(){
		location.href = "/codeGroupForm";	
	});
	
	$("#btnInit").on("click", function(){
		location.href = "/";	
	});
	
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "codeGroupList").submit();
	}

</script>