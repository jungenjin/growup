<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 | 글 수정</title>
<script src="${context}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			fn_init();
	
			//글수정 기존 내용 셋팅
			fn_setDetailInfo();
		});
	
		function fn_setDetailInfo(){
			$("#inqNo").val('${dsInquiry.INQ_NO}');
			$("#inqTitle").val('${dsInquiry.INQ_TITLE}');
			$("#inqModId").val('${sessionScope.userCode}');
	
			var inqContent = '${dsInquiry.INQ_CONTENT}';
	
			inqContent = inqContent.replace(/<br ?\/?>/gi, "\n");
	
			$("#inqContent").val(inqContent);
		}
	
		function fn_save(){
			if(!fn_validation()){
				return;
			}else{
				
				var inqContent = String($("#inqContent").val());
	
				inqContent = inqContent.replace(/\n/gi, "<br/>");
				
				$("#inqContent").val(inqContent);
	
		 		$("#inquiryModify").submit();
			}
		}
	
	</script>
</head>
<body>
<jsp:include page="/common/top.jsp"></jsp:include>

<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_inquiry.jpg");'></div>
<!-- title, visual end -->

<!-- Details -->
<div class="container footertop">
	<div class="py-5">
	
		<!-- board title start -->
		<div class="page-header">
			<div class="row py-5">
				<div class="d-flex flex-row mb-12">
					<p class="title p-2 fs-1 fw-bold">1 : 1 문의</p>
				</div>
			</div>
		</div>
		<!-- board title end -->
		
		<!-- board modify start -->
		<form id="inquiryModify" class="form-horizontal" method="post" action="${context}/work/board/inquiryModify.do?inqNo=${dsInquiry.INQ_NO}" role="form">
			<input type="hidden" class="form-control" id="inqModId" name="inqModId"> <!-- 글수정자 id 전송 -->
			<div class="form-horizontal boardwrite">
				<div class="form-group">
					<label for="inqTilte" class="control-label fs-4 mb-2">제목</label>
					<input class="form-control" type="text" name="inqTitle" id="inqTitle" required="required" maxlength="50" autofocus="autofocus">
				</div>
				<div class="form-group">
					<label for="inqContent" class="control-label fs-4 mb-2 mt-5">내용</label>
					<textarea class="form-control" name="inqContent" id="inqContent" cols="10" rows="15" required="required"></textarea>
				</div>
				
				<!-- board button start -->
				<div class="col-xs-4 d-flex justify-content-end">
					<button type="button" class="btn boardbtn" onclick="fn_save()">글 수정하기</button>
					<button type="button" class="btn boardbtn" onclick="fn_back()">취소</button>
				</div>
				<!-- board button end -->
				
			</div>
		</form>
		<!-- board modify end -->
		
	</div><!-- Details end -->
</div><!-- container end -->
<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>		 