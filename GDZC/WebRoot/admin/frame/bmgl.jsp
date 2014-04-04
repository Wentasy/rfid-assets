<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html> 
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expiries" content="0" />

		<title>部门管理</title>
		<link id="cssLink" rel="stylesheet"
			href="<%=path%>/admin/css/IFrame.css" type="text/css" media="screen" />
		<script src="<%=path%>/admin/common/script/IFrame.js"
			type="text/javascript">
</script>
	</head>

	<body bgcolor="mintcream">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						id="tree_menu">
						<s:if test="#session.BlimitMap['部门管理']!=null">
						<tr>
							<td id="tree_menu1"
								onclick="callLeftTree('tree_menu1');setplace('部门管理 -> 部门管理');FrameRedirect('Main', '<%=path%>/admin/deptAction!queryAllDept.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								部门管理
							</td>
						</tr>
						</s:if>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>