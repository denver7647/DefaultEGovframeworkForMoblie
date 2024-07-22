<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>FAQ 상세조회</title>
		
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css"/>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css"/>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/egovframework/mbl/com/uss/ussCommon.css"/>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/jquery-1.11.2.js"></script>
	    
		 	    
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.js"></script>   
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/egovframework/mbl/com/EgovCom.js"></script>
		
        <script type="text/javaScript" language="javascript" defer="defer">
        </script>

	</head>

	<body>
	
		<div id="view" data-role="page">
			
			<!-- header start -->
			<div data-role="header">
			    <a href="#list" data-icon="arrow-l">뒤로</a>
			    <h1>FAQ 상세조회</h1>
			</div>
			<!-- header end -->

			<div data-role="content" class="com-copContent">
				<form:form modelAttribute="result" name="detailForm">
				<ul class="uss-hpcDetail">
					<li>
						<span class="uss-tit">질문제목</span>
						<span class="uss-con"><label for="name-d"><c:out value="${result.qestnSj}"/></label></span>
					</li>	
					<li>
						<span class="uss-tit">질문내용</span>
					</li>			
					<li class="uss-contentsView"><label for="name-d">${fn:replace(result.qestnCn , crlf , '<br>')}</label>
					</li>	
					<li>
						<span class="uss-tit">답변내용</span>
					</li>			
					<li class="uss-contentsView"><label for="name-d">${fn:replace(result.answerCn , crlf , '<br>')}</label>
					</li>	
					<li>
						<span class="uss-tit">조회수</span>
						<span class="uss-con"><label for="name-d"><c:out value="${result.inqireCo}"/></label></span>
					</li>
					<li>
						<span class="uss-tit">등록일자</span>
						<span class="uss-con"><label for="name-d"><c:out value="${result.lastUpdusrPnttm}"/></label></span>
					</li></ul>
					<fieldset style="clear:both">
						<div class="com-addBgBtn">
							<a href='javascript:fn_show_page();' data-role="button" data-theme="b">목록</a>			
						</div>
					</fieldset>
				</form:form>	
			</div>
			<!-- contents end -->
			
			<!-- footer start -->
			<div data-role="footer"  data-theme="a"  data-position="fixed">
				<h4>Copyright (c) MINISTRY OF SECURITY AND PUBLIC ADMINISTRATION.</h4>
			</div>
			<!-- footer end -->
		</div>
		<!-- 게시판 View end -->	
							
	</body>
</html>