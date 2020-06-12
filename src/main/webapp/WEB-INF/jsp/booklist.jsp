<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./meta.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
		<table border="1" >
				<tbody>
					<tr>

					
						<td colspan="1">起始地区</td>
						<td colspan="1">所用车型</td>
						<td colspan="1">搬家日期</td>
						<td colspan="1">联系人</td>
						<td colspan="1">联系电话</td>
						<td colspan="1">状态</td>
						<td colspan="1">操作</td>
						<c:forEach var="e" items="${moveBooks }">
							<tr>
								<td>${e.area==1?'湖南':e.area==2?'湖北':e.area==3?'广东':'' }</td>
								<td>${e.cartype==1?'面包车':e.cartype==2?'皮卡':e.cartype==3?'厢式货车':e.cartype==4?'1041货车':'' }</td>
								<td><fmt:formatDate value="${e.movedate }"
						pattern="yyyy-MM-dd" /></td>
								<td>${e.contact }</td>
								<td>${e.phone }</td>
								<td>${e.status==0?'未处理':e.status==1?'已派车':e.status==2?'已结束':'' }</td>
								<td>
								<a href="${pageContext.request.contextPath}/book/editbook/${e.id}" >处理</a>
									
								&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/book/editbook2/${e.id}"
									>详情</a></td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6"><a
							href="${pageContext.request.contextPath}/book/addbook"
							>增加</a>
						</td>
					</tr>
				</tfoot>
			</table>
</body>
</html>