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
<title>修改</title>
</head>
<body>

		<form action="${pageContext.request.contextPath}/edit" 
		enctype="multipart/form-data" method="post">
			<table>
				<tbody>
					
					<tr>
						<td colspan="2">name</td>
						<td colspan="2"><input name="name" value=""/></td>
					</tr>
					
					<tr>
							<td colspan="2">gender</td>
							<td colspan="2"><input name="gender" value=""/></td>
						</tr>

						<tr>
							<td colspan="2">birthday</td>
							<td colspan="2"><input name="birthday" value=""/></td>
						</tr>
						<tr>
							<td colspan="2">phone</td>
							<td colspan="2"><input name="phone" value=""/></td>
						</tr>
						
						
					
				</tbody>
					<tfoot>
						<tr>
							<td colspan="5">
								<input  class="btn btn-primary"  type="submit" value="新增"/>
								<span class="tip">${err.msg}</span>							
							</td>
						</tr>
					</tfoot>
			</table>
			</form>


</body>
</html>