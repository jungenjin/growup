<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 | 글 쓰기</title>
<script src="${context}/js/jquery-1.9.1.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			fn_init();
		});
	
		function fn_save(){
			if(!fn_validation()){ 
				return;
			}else{
				var boardContent = String($("#inqContent").val());
	
				boardContent = boardContent.replace(/\n/gi, "<br/>");
	
				$("#inqContent").val(boardContent);
	
		 		$("#inquiryWrite").submit();
			}
		}
	
	</script>
</head>
<body>
<jsp:include page="/common/top.jsp"></jsp:include>
<div class="wrap">
<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_inquiry.jpg");'>
</div>
<!-- title, visual end -->
<!-- Detail -->
	<div class="container-fluid">
		<div class="px-5 py-5">
			<!-- board title start -->
			<div class="page-header">
				<div class="row py-5">
					<div class="d-flex flex-row mb-12">
					<h2 class="title p-2">이벤트 게시판</h2>
				</div>
			</div>
		</div>
		<!-- board title end -->
		
		<!-- board write start -->
		<form id="inquiryWrite" class="form-horizontal boardwrite" method="post" action="${context}/work/board/inquiryWrite.do" role="form">
			<div class="form-horizontal boardwrite">
				<div class="form-group mb-3">
					<label for="inqTitle" class="control-label fs-4 mb-2">제목</label>
					<input class="form-control fs-5" type="text" name="inqTitle" id="inqTitle" required="required" maxlength="50" autofocus="autofocus" placeholder="제목을 입력해주세요"/>
				</div>
				<div class="form-group mb-3">
					<label for="inqTitle" class="control-label fs-4 mb-2">연락처</label>
					<input class="form-control fs-5" type="tel" name="inqPhone" id="inqPhone" required="required" maxlength="50" autofocus="autofocus" placeholder="연락처를 입력해주세요"/>
				</div>
				<div class="form-group mb-3 mt-5">
					<label for="inqContent" class="control-label fs-4 mb-2">내용</label>
					<textarea class="form-control fs-5" name="inqContent" id="inqContent" cols="10" rows="15" required="required" placeholder="내용을 입력해주세요"></textarea>
				</div>
				
				<!-- board button start -->
				<div class="d-flex justify-content-end">
					<button type="button" class="btn boardbtn" onclick="fn_save()">글 등록하기</button>
					<button type="button" class="btn boardbtn" onclick="fn_back()">취소</button>
				</div>
				<!-- board button end -->
				
			</div>
		</form>
		<!-- board write end -->
		
	</div> <!-- container end -->
</div> <!-- container end -->

<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>