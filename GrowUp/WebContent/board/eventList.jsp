<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>이벤트 | 글 목록</title>
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		function fn_eventWrite(){
			location.href = "${context}/work/board/eventWrite.do";
		}
	</script>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>
<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_event.png");'></div>
<!-- title, visual end -->
<!-- Detail -->
<div class="container-fluid">
	<div class="px-5 py-5">
		<!-- board title start -->
		<div class="page-header">
			<div class="row py-5">
				<div class="d-flex flex-row mb-12">
					<!-- 한글일 경우 title 클래스만 사용. 영문일 경우 eng 클래스 추가하세요 -->
					<h2 class="title p-2">이벤트 게시판</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- board list start -->
	           <div class="table-responsive">
	               <table class="table table-hover">
	                   <tbody>
	                       <c:forEach items="${dsEventList}" var="dsEventList">
	                        <tr>
	                        	<td class="d-flex flex-row">
	                        		<div class="col-md-8 p-2 px-left-1"><a href ="${context}/work/board/eventView.do?evNo=${dsEventList.EV_NO}">${dsEventList.EV_TITLE}</a></div>
									<div class="col-md-1 p-2 px-right-1">${dsEventList.USER_NAME}</div>
									<div class="col-md-2 p-2 px-right-1">${dsEventList.EV_REG_DATE}</div>
									<div class="col-md-1 p-2 px-right-1">조회수 : ${dsEventList.EV_HIT}</div>
	                        	</td>
	                        </tr>
	                   	</c:forEach>
	                   </tbody>
	               </table>
	           </div>
			<!-- board list end -->
		</div> <!-- row end -->
		<!-- board buttons start -->
		<c:if test="${sessionScope.grade == 'A' || sessionScope.grade == 'M'}">
			<div class="col-xs-4 d-flex flex-row-reverse p-2">
				<button type="button" class="btn boardbtn p-2" onclick="fn_eventWrite()">새 글 쓰기</button>
			</div>
		</c:if>
		<!-- board title, buttons end -->
	</div> <!-- container end -->
</div> <!-- container end -->

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>