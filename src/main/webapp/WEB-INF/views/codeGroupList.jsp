<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
codeGroupList.jsp

<br>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
			<c:out value="${list.name}"></c:out><br>
		</c:forEach>
	</c:otherwise>
</c:choose>	  