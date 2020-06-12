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

		<form action="${pageContext.request.contextPath}/book/addbooks" 
		enctype="multipart/form-data" method="post">
			<table>
				<tbody>
					
					<tr>
						<td colspan="2">起始地区</td>
						<td colspan="2">
							<select name="area">
								<option value="1">湖南</option>
								<option value="2">湖北</option>
								<option value="3">广东</option>
							</select>
						</td>
					</tr>
					
					<tr>
							<td colspan="2">所用车型</td>
							<td colspan="2">
								<input type="radio" name="cartype" value="1">面包车
								<input type="radio" name="cartype" value="2">皮卡
								<input type="radio" name="cartype" value="3">厢式货车
								<input type="radio" name="cartype" value="4">1041货车
							</td>
						</tr>

						<tr>
							<td colspan="2">搬家日期</td>
							<td colspan="2"><input name="movedate" value=""/></td>
						</tr>
						<tr>
							<td colspan="2">联系人</td>
							<td colspan="2"><input name="contact" value=""/></td>
						</tr>
						<tr>
							<td colspan="2">联系电话</td>
							<td colspan="2"><input name="phone" value=""/></td>
						</tr>
						
						
					
				</tbody>
					<tfoot>
						<tr>
							<td colspan="5">
								<input  class="btn btn-primary"  type="submit" value="预约登记"/>
								<span class="tip">${err.msg}</span>							
							</td>
						</tr>
					</tfoot>
			</table>
			</form>


</body>
</html>