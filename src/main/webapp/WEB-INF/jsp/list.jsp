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

					
						<td colspan="1">id</td>
						<td colspan="1">name</td>
						<td colspan="1">gender</td>
						<td colspan="1">birthday</td>
						<td colspan="1">phone</td>
						<td colspan="1">操作</td>
						<c:forEach var="e" items="${empList }">
							<tr>
								<td>${e.id }</td>
								<td>${e.name }</td>
								<td>${e.gender }</td>
								<td>${e.birthday }</td>
								<td>${e.phone }</td>
								
								<td>
								<a href="javascript:delFun('${e.id }')" >删除</a>
									
								&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/edit/${e.id}"
									>修改</a></td>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6"><a
							href="${pageContext.request.contextPath}/edit"
							>增加</a>
						</td>
					</tr>
				</tfoot>
			</table>
	<form id="myForm" action="" method="post">
		<input type="hidden" name="_method" value="DELETE">
	</form>
	
</body>
<script type="text/javascript">
		function delFun(id) {
			$("#myForm").attr("action","${pageContext.request.contextPath}/edit/"+id);
			$("#myForm").get(0).submit();
		}
	</script>
</html>