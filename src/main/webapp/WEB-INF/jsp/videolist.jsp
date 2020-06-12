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
	<table border="1">
		<span style="font-size: 30px; color: black;">欢迎${USER.cellphone }用户</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span style="font-size: 30px; color: black;"><a
			href="${pageContext.request.contextPath }/video/editvideo"
			style="color: black;">添加视频</a></span>
		<tr>
			<td>编号</td>
			<td>视频名称</td>
			<td>视频上传时间</td>
			<td>操作</td>
		</tr>
		<c:forEach var="v" items="${videoList }">
			<tr>
				<td>${v.id }</td>
				<td>${v.name }</td>
				<td><fmt:formatDate value="${v.updatedate }"
						pattern="yyyy-MM-dd HH:mm:ss" /></td>
						<td>
								<a href="javascript:delFun('${v.id }')"  >删除</a>
									
								&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/video/edit/${v.id }"
									>修改</a></td>
			</tr>
		</c:forEach>
		</table>
		
		<form id="myForm" action="" method="post">
			<input type="hidden" name="_method" value="DELETE">
		</form>
		<script type="text/javascript">
		function delFun(id) {
			$("#myForm").attr("action","${pageContext.request.contextPath}/video/edit/"+id);
			$("#myForm").get(0).submit();
		}
	</script>
</body>
</html>