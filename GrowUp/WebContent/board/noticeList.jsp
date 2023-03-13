<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>공지사항 | 글 목록</title>
   	<script src="${context}/js/jquery-1.9.1.js"></script>
   	<!-- 테이블에 dataTables-example 사용시 검색, 페이징처리 됨 -->
	<link href="https://cdn.datatables.net/1.13.3/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<!-- 테이블에 dataTables-example 사용시 검색, 페이징처리 됨 -->
	<script src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"></script>
	
    <script>
       $(document).ready(function() {
           $('#dataTables-example').DataTable({
        	   "language" : {
	        		"search" : " ",
	       			"searchPlaceholder": "궁금한게 있으신가요?",
	        	    "paginate": {
	                "first":  "1",
	                "last":   "2",
	                "next":   ">>",
	                "previous":   "<<"
        	    }
               },
           });
           
       });
      function fn_noticeWrite(){
         location.href = "${context}/work/board/noticeWrite.do";
      }
   </script>
   <style type="text/css">
 /*     .datatablecol{display: none};
      #dataTables-example_length{display: none};
     .dataTables_info{display: none};
       .form-control {display: none};
      .dataTables_length{display: none}; */

   </style>
</head>
<body>
<jsp:include page="${context}/common/top.jsp"></jsp:include>

<!-- title, visual start -->
<div class="titarea" style='background-image: url("${context}/img/subbg_notice.jpg");'></div>
<!-- title, visual end -->

<!-- Detail -->
<div class="container">
   <div class="px-5 py-5">
   
      <!-- board title start -->
      <div class="page-header">
         <div class="row py-5">
            <div class="flex-row mb-12">
               <p class="title p-2 fs-1 fw-bold">공지사항</p>
            </div>
         </div>
      </div>
      <!-- board title end -->
      
      <!-- board list start -->
      <div class="row">
            <div class="table-responsive">
                <table class="table table-hover boardlist" id="dataTables-example">
                   <thead class="mt-5">
                     <tr style="display: none;">
                         <th>Name</th>
                         <th>Position</th>
                         <th>Office</th>
                         <th>Age</th>
                         <th>Start date</th>
                     </tr>
                 </thead>
                    <tbody>
               <c:forEach items="${dsNoticeList}" var="dsNoticeList">
                      <tr>
	                     <td class="flex-row mb-5">
		                     <th class="col-sm-12 col-md-7 p-6 px-left-1 fw-normal"><a href ="${context}/work/board/noticeView.do?ntcNo=${dsNoticeList.NTC_NO}">${dsNoticeList.NTC_TITLE}</a></th>
		                     <th class="col-md-2 px-right-1 fw-normal p-6">${dsNoticeList.USER_NAME}</th>
		                     <th class="col-md-2 px-right-1 fw-normal p-6">${dsNoticeList.NTC_REG_DATE}</th>
		                     <th class="col-md-1 px-right-1 fw-normal p-6">조회수 : ${dsNoticeList.NTC_HIT}</th>
	                     </td>
                      </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
         <!-- board list end -->
         
         <!-- board buttons start -->
         <c:if test="${sessionScope.grade == 'A' || sessionScope.grade == 'A'}">
            <div class="flex-row-reverse p-2">
               <button type="button" class="btn boardbtn p-2" onclick="fn_noticeWrite()">새 글 쓰기</button>
            </div>
         </c:if>
         <!-- board buttons end -->
      
      </div><!-- row end -->
   </div><!-- container end -->
</div><!-- container end -->
<jsp:include page="${context}/common/foot.jsp"></jsp:include>
</body>
</html>