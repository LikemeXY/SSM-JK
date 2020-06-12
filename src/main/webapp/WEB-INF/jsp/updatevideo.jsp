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

		<form action="${pageContext.request.contextPath}/video/editupdate" 
		enctype="multipart/form-data" method="post">
		<!-- <input type="hidden" name="_method" value="PUT"> -->
		<input type="hidden" name="id" value="${video.id }">
			<table>
				<tbody>
					
					<tr>
						<td colspan="2">name</td>
						<td colspan="2"><input name="name" value="${video.name }"/></td>
					</tr>
					
					<tr>
							<td colspan="2">videodesc</td>
							<td colspan="2"><input name="videodesc" value="${video.videodesc }"/></td>
						</tr>

						<tr>
							<td colspan="2">musicname</td>
							<td colspan="2"><input name="musicname" value="${video.musicname }"/></td>
						</tr>
						<tr>
							<td colspan="2">updatedate</td>
							<td colspan="2"><input name="updatedate" value="${video.updatedate }"/></td>
						</tr>
						
						<tr>
							<td colspan="2">isopen</td>
							<td colspan="2">
							<input type="radio" name="isopen" value="1" <c:if test="${video.isopen==1 }">checked="checked""</c:if>>是
							<input type="radio" name="isopen" value="2" <c:if test="${video.isopen==2 }">checked="checked""</c:if>>否</td>
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