<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 | 내용보기</title>
<script src="${context}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		function fn_inquiryList(){
			location.href = "${context}/work/board/inquiry.do";
		}
		//글 삭제
		function fn_delete(){
			var VstNo = '${dsInquiry.INQ_NO}';
	
			if(confirm("정말 글을 삭제하시겠습니까?")){
				location.href = "${context}/work/board/deleteInquiry.do?inqNo=" + VstNo;
			}
		}
		
		//글 수정
		function fn_update(){
			var VstNo = '${dsInquiry.INQ_NO}';
	
			location.href = "${context}/work/board/inquiryModify.do?inqNo=" + VstNo;
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
<!-- Details -->
<div class="container footertop">
	<div class="px-5 py-5">
	
		<!-- board title start -->
		<div class="page-header">
			<div class="row py-5">
				<div class="d-flex flex-row mb-12">
					<p class="title p-2 fs-1 fw-bold">1 : 1 문의</p>
				</div>
			</div>
		</div>
		<!-- board title end -->
		
		<!-- board view start -->
		<div class="border-bottom">
			<div class="row fs-4 mb-2 p-2">
				<div class="col-md-10 px-3">${dsInquiry.INQ_TITLE}</div>
			</div>
		</div>
		
		<div class="mt-2">
			<div class="fs-4 p-3">${dsInquiry.INQ_CONTENT}</div>
			
			<div class="row mt-3 bg-light">
				<div class="col-lg-4 pt-3">
					 <p class="fs-5 ps-3">이름 : ${dsInquiry.USER_NAME}</p>
				</div>
				<div class="col-lg-4 pt-3">
					<p class="fs-5 ps-3">연락처 : ${dsInquiry.INQ_PHONE}</p>
				</div>
				<div class="col-lg-4 pt-3">
					<p class="fs-5 ps-3">이메일 : ${dsInquiry.INQ_EMAIL}</p>
				</div>
			</div>
		</div>
  		
		<form class="form-horizontal" method="post" role="form">
  			<!-- board button area start -->
			<div class="d-flex justify-content-end">
				<button class="btn boardbtn" type="button" onclick="fn_inquiryList()">목록</button>
				<c:if test="${sessionScope.userCode == dsInquiry.INQ_REG_ID}">
					<button class="btn boardbtn" type="button" onclick="fn_update()">글 수정하기</button>
					<button class="btn boardbtn" type="button" onclick="fn_delete()">글 삭제하기</button>
				</c:if>
			</div>
			<!-- board button area end -->	
		</form>
		<!-- board view end -->
	</div>
</div>
<jsp:include page="/common/foot.jsp"></jsp:include>
</body>
<style type="text/css">
.wrap{
background-color: #fff;
}
/*form 제목*/
.form-horizontal .control-label {
    padding-top: 7px;
    margin-bottom: 8px;
    text-align: inherit !important;
}
.Title{
font-family: Noto Sans KR;
font-size: 40px;
margin-top: 87px;
margin-bottom: 80px;
}
/*form 제목*/
.form-control {
    padding-top: 7px;
    margin-bottom: 40px;
    margin-top:10px;
    height: 90px !important;
    background-color: #D9D9D9 !important;
}
.control-label {
	font-size:24px;
    text-align: inherit !important;
}
.Title{
font-family: Noto Sans KR;
font-size: 40px;
margin-top: 90px;
margin-bottom: 100px;
}
.title {
border-bottom:none !important;
}
@media (max-width: 992px) {
	.Title {font-size: 28px;}
	.control-label{font-size: 18px;}
	}
</style>

</html>