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

		<form action="${pageContext.request.contextPath}/book/editupdate" 
		enctype="multipart/form-data" method="post">
		<!-- <input type="hidden" name="_method" value="PUT"> -->
		<input type="hidden" name="id" value="${moveBook.id }">
			<table>
				<tbody>
					
					<tr>
						<td colspan="2">起始地区</td>
						<td colspan="2">${moveBook.area==1?'湖南':moveBook.area==2?'湖北':moveBook.area==3?'广东':'' }</td>
					</tr>
					
					<tr>
							<td colspan="2">所用车型</td>
							<td colspan="2">${moveBook.cartype==1?'面包车':moveBook.cartype==2?'皮卡':moveBook.cartype==3?'厢式货车':moveBook.cartype==4?'1041货车':'' }</td>
						</tr>

						<tr>
							<td colspan="2">搬家日期</td>
							<td colspan="2"><fmt:formatDate value="${moveBook.movedate }"
						pattern="yyyy-MM-dd" /></td>
						</tr>
						<tr>
							<td colspan="2">联系人</td>
							<td colspan="2">${moveBook.contact }</td>
						</tr>
						
						<tr>
							<td colspan="2">联系电话</td>
							<td colspan="2">${moveBook.phone }</td>
						</tr>
						<tr>
							<td colspan="2">状态</td>
							<td colspan="2">
								<select name="status">
									<option value="0">未处理</option>
									<option value="1">已派车</option>
									<option value="2">已结束</option>
								</select>
							</td>
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