<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expiries" content="0" />
    
<title>后台管理——记录管理</title>
<link id="cssLink" rel="stylesheet" href="<%=path %>/admin/css/IFrame.css" type="text/css" media="screen" />
<script src="<%=path %>/admin/common/script/IFrame.js" type="text/javascript"></script>
</head>

<body bgcolor="mintcream">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="tree_menu">
				 
							  
				 
				  <s:if test="#session.BlimitMap['资产记录记录管理']!=null">
		          <tr>
					<td id="tree_menu1" onclick="callLeftTree('tree_menu1');setplace('系统管理 -> 资产记录记录管理');FrameRedirect('Main', '<%=path %>/recordAction!QueryAllRoom.action?random='+Math.random());" class="treeview_unfocus"><img src="<%=request.getContextPath()%>/admin/image/left_product.gif" />资产记录记录管理</td>
				  </tr>
				  </s:if>
				  <!--  
				   <s:if test="#session.BlimitMap['消费记录管理']!=null">
		          <tr>
					<td id="tree_menu2" onclick="callLeftTree('tree_menu2');setplace('系统管理 -> 消费记录管理');FrameRedirect('Main', '<%=path %>/admin/jsp/record/costRecord/CostsRecord.jsp?random='+Math.random());" class="treeview_unfocus"><img src="<%=request.getContextPath()%>/admin/image/left_product.gif" />消费记录管理</td>
				  </tr>
				  </s:if>
				   <s:if test="#session.BlimitMap['观看记录管理']!=null">
		          <tr>
					<td id="tree_menu3" onclick="callLeftTree('tree_menu3');setplace('系统管理 -> 观看记录管理');FrameRedirect('Main', '<%=path %>/admin/jsp/record/viewRecord/viewRecord.jsp?random='+Math.random());" class="treeview_unfocus"><img src="<%=request.getContextPath()%>/admin/image/left_product.gif" />观看记录管理</td>
				  </tr>
				  </s:if>
				  -->
			</table>
		  </td>
		</tr>
	</table>
</body>
</html>