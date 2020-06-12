<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./meta.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html >
<html>
<head>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.fr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
	<div>
		<form action="${pageContext.request.contextPath}/user/index" method="post">
				<h1 style="text-align: centent;">火山小视频</h1><br>
				<p style = "text-align:cernter;color:red">
					<c:if test="${not empty msg }">
						${msg }
					</c:if>
				</p>
				手机号码 <input type="text" name="cellphone"><br>
				密码 <input type="text" name="userpwd"><br>
				<input  class="btn btn-primary"  type="submit" value="登录"/>
		</form>
	</div>

</body>
</html>