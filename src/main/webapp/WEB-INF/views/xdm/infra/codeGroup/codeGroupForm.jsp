<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<style>
	#form_wrap {margin: auto; margin-top: 100px}
	#btn_wrap {width: 184px; height: 30px; margin: auto; margin-top: 30px;}
	input {display: block; margin: auto; margin-top: 30px;}
	button {float: left;}
	#btn_delete, #btn_save {margin-left: 10px;}
</style>
  
<div name="form" method="post">
	<form name="form">
 		<input type="text" name="seq" id="seq" placeholder="Input seq" readonly value="<c:out value = "${item.seq}"/>">
 		<input type="text" name="name" id="name" placeholder="Input name" value="<c:out value = "${item.name}"/>">
 		<div id="btn_wrap">
	 		<button type="button" id="btn_del">Delete</button>
	 		<button type="button" id="btn_uel">Uelete</button>
	 		<button type="button" id="btn_save">Save</button>
	 	</div>
	</form>
</div>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script>

	$("#btn_uel").on("click", function() {
		location.href = "/codeGroupList";
	});

	$("#btn_save").on("click", function() {
		
	//	$("form[name=formList]").attr("method", "get");
		$("form[name=form]").attr("action", "/codeGroupUpdt").submit();
		alert("수정된 내용이 정상적으로 저장되었습니다.")
	
	});
	
	$("#btn_del").on("click", function() {
		
			$("form[name=form]").attr("action", "/codeGroupDel").submit();
			alert("정보가 정상적으로 삭제되었습니다.")
		
		});


</script>