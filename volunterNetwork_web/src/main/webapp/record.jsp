<%@ page import="com.xxx.volunterNetwork.domain.*"%>
<%@ page import="com.xxx.volunterNetwork.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<form>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<table class="table" id="table">
						<thead>
							<tr>						
								<th>活动主题</th>
								<th>活动时间</th>
								<th>活动时长</th>					
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${enrollLists}" var="enroll" varStatus="status">
								<tr id="tr_${enroll.id }">
									<td>${enroll.hdName}</td>
									<td><fmt:formatDate value="${enroll.hdTime}" type="date"/></td>
									<td>${enroll.duration}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<nav aria-label="Page navigation"
						style="margin:0 auto;margin-top:-16px;">
					<ul class="pager pagination-lg">
						<c:if test="${pageNumber>0 }">
							<li><a
								href="<c:url value="/record?page=${pageNumber>1?pageNumber:1}"/>">&laquo;上一页</a></li>
						</c:if>
						<c:if test="${pageNumber-3 >= 1 }">
							<li><a
								href="<c:url value="/record?page=${pageNumber-3}"/>">${pageNumber-3}</a>
							</li>
						</c:if>
						<c:if test="${pageNumber-2 >= 1 }">
							<li><a
								href="<c:url value="/record?page=${pageNumber-2}"/>">${pageNumber-2}</a>
							</li>
						</c:if>
						<c:if test="${pageNumber-1 >= 1 }">
							<li><a
								href="<c:url value="/record?page=${pageNumber-1}"/>">${pageNumber-1}</a>
							</li>
						</c:if>
						<c:if test="${pageNumber >= 1 }">
							<li><a
								href="<c:url value="/record?page=${pageNumber}"/>">${pageNumber}</a>
							</li>
						</c:if>

						<c:if test="${pageNumber+1 <= pageTotalPages}">
							<c:set var="active" value="${active}" />
							<li class="${active}"><a
								href="<c:url value="/record?page=${pageNumber+1}"/>">${pageNumber+1}</a>
							</li>
						</c:if>
						<c:if
							test="${pageNumber+2 <= pageTotalPages && !(pageNumber-3 >= 1)}">
							<li><a
								href="<c:url value="/record?page=${pageNumber+2}"/>">${pageNumber+2}</a>
							</li>
						</c:if>
						<c:if
							test="${pageNumber+3 <= pageTotalPages && !(pageNumber-2 >= 1)}">
							<li><a
								href="<c:url value="/record?page=${pageNumber+3}"/>">${pageNumber+3}</a>
							</li>
						</c:if>
						<c:if
							test="${pageNumber+4 <= pageTotalPages && !(pageNumber-1 >= 1)}">
							<li><a
								href="<c:url value="/record?page=${pageNumber+4}"/>">${pageNumber+4}</a>
							</li>
						</c:if>
						<c:if
							test="${pageNumber+5 <= pageTotalPages && !(pageNumber >= 1)}">
							<li><a
								href="<c:url value="/record?page=${pageNumber+5}"/>">${pageNumber+5}</a>
							</li>
						</c:if>

						<c:if test="${pageNumber+1 < pageTotalPages }">
							<li><a
								href="<c:url value="/record?page=${pageNumber+1<pageTotalPages?pageNumber+2:pageTotalPages}"/>">下一页&raquo;</a>
							</li>
						</c:if>
					</ul>
					<ul class="pager pagination-lg">
						<li>共${pageTotalElements}条记录 共${pageTotalPages}页
							当前第${pageNumber+1}页</li>
					</ul>
					</nav>
				</div>
			</div>
		</div>
	</form>
</body>
</html>