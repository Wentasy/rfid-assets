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

		<title>资产管理</title>
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
                        <!--
                        <s:if test="#session.BlimitMap['资产信息管理']!=null">
						<tr>
							<td id="tree_menu1"
								onclick="callLeftTree('tree_menu1');setplace('资产管理 -> 资产信息管理');FrameRedirect('Main', '<%=path%>/admin/assetinfoAction!queryAllAssetinfo.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								资产信息管理
							</td>
						</tr>
						</s:if>
						<s:if test="#session.BlimitMap['资产管理']!=null">
						<tr>
							<td id="tree_menu2"
								onclick="callLeftTree('tree_menu2');setplace('资产管理 -> 资产管理');FrameRedirect('Main', '<%=path%>/admin/assetAction!queryAllAsset.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								资产管理
							</td>
						</tr>
						</s:if>
						<s:if test="#session.BlimitMap['资产记录管理']!=null">
						<tr>
							<td id="tree_menu3"
								onclick="callLeftTree('tree_menu3');setplace('资产管理 -> 资产记录管理');FrameRedirect('Main', '<%=path%>/admin/recordAction!queryAllRecord.action?random='+Math.random());"
								class="treeview_unfocus">
								<img
									src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
								资产记录管理
							</td>
						</tr>
						</s:if>
					-->
					
						<s:if test="#session.BlimitMap['资产信息查询']!=null">
							<tr>
								<td id="tree_menu1"
									onclick="callLeftTree('tree_menu1');setplace('资产查询 -> 资产信息查询');FrameRedirect('Main', '<%=path%>/admin/queryAction!queryAllAsset.action?random='+Math.random());"
									class="treeview_unfocus">
									<img
										src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
									资产信息查询
								</td>
							</tr>
						</s:if>
						
						<s:if test="#session.BlimitMap['资产类别查询']!=null">
							<tr>
								<td id="tree_menu2"
									onclick="callLeftTree('tree_menu2');setplace('资产查询 -> 资产类别查询');FrameRedirect('Main', '<%=path%>/admin/queryAction!queryAllAssetinfo.action?random='+Math.random());"
									class="treeview_unfocus">
									<img
										src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
									资产类别查询
								</td>
							</tr>
						</s:if>
						
						<s:if test="#session.BlimitMap['历史记录查询']!=null">
							<tr>
								<td id="tree_menu3"
									onclick="callLeftTree('tree_menu3');setplace('资产查询 -> 历史记录查询');FrameRedirect('Main', '<%=path%>/admin/queryAction!queryAllRecord.action?random='+Math.random());"
									class="treeview_unfocus">
									<img
										src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
									历史记录查询
								</td>
							</tr>
						</s:if>
						
						<s:if test="#session.BlimitMap['RFID查询']!=null">
							<tr>
								<td id="tree_menu4"
									onclick="callLeftTree('tree_menu4');setplace('资产查询 -> RFID查询');FrameRedirect('Main', '<%=path%>/admin/queryAction!queryAllRfid.action?random='+Math.random());"
									class="treeview_unfocus">
									<img
										src="<%=request.getContextPath()%>/admin/image/left_product.gif" />
									RFID查询
								</td>
							</tr>
						</s:if>
						
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>