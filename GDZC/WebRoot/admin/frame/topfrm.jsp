<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%> 
<html>
  <head>
<title>后台管理——资产管理系统</title>
<link id="cssLink" rel="stylesheet" href="<%=path%>/admin/css/IFrame.css" type="text/css" media="screen" />
<script src="<%=path%>/admin/common/script/IFrame.js" type="text/javascript"></script>
<style type="text/css">
#submenu6 .menushow { padding:0 -3px; margin:0 -3px;}
.STYLE1 {color: #006699}
</style>
</head>
<body>
    <form name="form1" method="post" action="Default.html" id="form1">
                <input type="hidden" id="txtSelectedMenuId" />
                <table border="0" cellpadding="0" cellspacing="0" style="width:100%;height:100%;">
                    <tr id="top_001">
                        <td style="width:100%;height:49px;" >
                            <table style="width:100%;height:49px;" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <div id = "top_logo">
                                            <div id = "logo"></div>
                                            <div id = "line"></div>
                                            <div id = "logoCenterBG"></div>
                                            <div id = "logoRightEditor">
                                            	
                                            	欢迎|<s:property value="#session.user.tbRole.tbRoleName"/>|<FONT style="font-family: Arial, Helvetica, sans-serif;font-size: 20px;color: blue;"><s:property value="#session.user.tbUserName"/></FONT>|
                                            
                                            <span id="showtime">2009-05-09&nbsp;星期六</span>　心情：
                                            <img id="Green" src="<%=path%>/admin/image/chinagreen.gif" alt="新绿清馨" onclick="MyMoodClass(this.id);" />
                                             <img id="Red" src="<%=path%>/admin/image/chinared.gif" alt="奥运中国" onclick="MyMoodClass(this.id);"/> 
                                             <!--<img src="<%=path%>/admin/image/chinahui.gif" alt="质朴典雅" /> <img src=<%=path%>/admin/image/chinazi.gif" alt="紫罗兰" /> -->
                                             <!--<img id="Blue" src="<%=path%>/admin/image/chinablue.gif" alt="蓝色经典" onclick="MyMoodClass(this.id);"/>--></div>
                                        </div>
                                        
										<script language="javascript"> 
function show() 
{ 
now=new Date(); 
year=now.getFullYear(); 
month=now.getMonth()+1; 
date=now.getDate(); 
hours=now.getHours(); 
minutes=now.getMinutes(); 
seconds=now.getSeconds(); 
if(minutes<=9) 
minutes="0"+minutes;
if(seconds<=9) 
seconds="0"+seconds;
var n_day = now.getDay(); 
switch (n_day) 
{ 
case 0:{ 
strDate = "星期日" 
}break; 
case 1:{ 
strDate = "星期一" 
}break; 
case 2:{ 
strDate ="星期二" 
}break; 
case 3:{ 
strDate = "星期三" 
}break; 
case 4:{ 
strDate = "星期四" 
}break; 
case 5:{ 
strDate = "星期五" 
}break; 
case 6:{ 
strDate = "星期六" 
}break; 
case 7:{ 
strDate = "星期日" 
}break; 
} 
document.getElementById("showtime").innerHTML=year+"年"+month+"月"+date+"日 &nbsp;"+strDate+" &nbsp;"+"现在时间："+hours+":"+minutes+":"+seconds; 

setTimeout("show()",1000); 
} 
show(); 
</script>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="top_002">
                        <td style="text-align:center;">
                            
            <div class="width">
            <div class="minwidth">
            <div class="container">
                <table width="100%" height="35" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td><div id = "top_menu">
                          <div id="ChannelMenu">
                            <div class="Shell">
                              <div class="Tab">
                                <table cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td class="Item"><div onmouseover="MouseOver(this);" id="Main1" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('系统管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/xtgl.jsp');FrameRedirect('Main', '<%=path %>/admin/userAction!queryUserById.action?tbUser.tbUserId=<s:property value='#session.user.tbUserId'/>&random='+Math.random());"><span>系统管理</span></div></td>
                                    <td class="itemMainmenuSpirt"></td>
                                    <!--
                                    <s:if test="#session.AlimitMap['资产管理']!=null">
                                     	<s:if test="#session.BlimitMap['资产信息管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main2" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('资产信息管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/zcgl.jsp');FrameRedirect('Main', '<%=path%>/admin/assetinfoAction!queryAllAssetinfo.action?random='+Math.random());"><span>资产信息管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:if>
                                    	<s:elseif test="#session.BlimitMap['资产管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main2" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('资产管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/zcgl.jsp');FrameRedirect('Main', '<%=path%>/admin/assetAction!queryAllAsset.action?random='+Math.random());"><span>资产管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:elseif>
                                    	<s:elseif test="#session.BlimitMap['资产记录管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main2" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('资产记录管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/zcgl.jsp');FrameRedirect('Main', '<%=path%>/admin/assetAction!queryAllRecord.action?random='+Math.random());"><span>资产记录管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:elseif>
                                    </s:if>
                                    
                                     -->
                                     <s:if test="#session.AlimitMap['资产查询']!=null">
                                     	<s:if test="#session.BlimitMap['资产信息查询']!=null">
	                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main2" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('资产信息管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/zcgl.jsp');FrameRedirect('Main', '<%=path%>/admin/queryAction!queryAllAsset.action?random='+Math.random());"><span>资产查询</span></div></td>
	                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:if>
                                    </s:if>
                                    
                                     <s:if test="#session.AlimitMap['员工管理']!=null">
                                     	<s:if test="#session.BlimitMap['员工管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main3" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('员工管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/yggl.jsp');FrameRedirect('Main', '<%=path%>/admin/staffAction!queryAllStaff.action?random='+Math.random());"><span>员工管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:if>
                                    	<!--  
                                    	<s:elseif test="#session.BlimitMap['房间IP管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main2" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('房间管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/fjgl.jsp');FrameRedirect('Main', '<%=path%>/admin/roomipAction!queryAllRoomip.action?random='+Math.random());"><span>房间管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:elseif>
                                    	-->
                                    </s:if>
                                    
                                     <s:if test="#session.AlimitMap['部门管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main4" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('部门管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/bmgl.jsp');FrameRedirect('Main', '<%=path%>/admin/deptAction!queryAllDept.action?random='+Math.random());"><span>部门管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                     </s:if><!--
                                     
                                      <s:if test="#session.AlimitMap['RFID管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main5" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('RFID管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/rfid.jsp');FrameRedirect('Main', '<%=path%>/admin/rfidAction!queryAllRfid.action?random='+Math.random());"><span>RFID管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                     </s:if>
                                     
                                    --><s:if test="#session.AlimitMap['套餐管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main3" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('套餐管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/tcgl.jsp');FrameRedirect('Main', '<%=path%>/admin/packageAction!queryAllPackage.action?random='+Math.random());"><span>套餐管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                     </s:if>
                                     
                                     <s:if test="#session.AlimitMap['记录管理']!=null">
                                     	<s:if test="#session.BlimitMap['房间记录管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main4" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('记录管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/record.jsp');FrameRedirect('Main', '<%=path %>/recordAction!QueryAllRoom.action?random='+Math.random());"><span>记录管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:if>
                                    	<s:elseif test="#session.BlimitMap['消费记录管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main4" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('记录管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/record.jsp');FrameRedirect('Main', '<%=path %>/admin/jsp/record/costRecord/CostsRecord.jsp?random='+Math.random());"><span>记录管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:elseif>
                                    	<s:elseif test="#session.BlimitMap['观看记录管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main4" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('记录管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/record.jsp');FrameRedirect('Main', '<%=path %>/admin/jsp/record/viewRecord/viewRecord.jsp?random='+Math.random());"><span>记录管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:elseif>
                                     </s:if>
                                     
                                     <s:if test="#session.AlimitMap['节目管理']!=null">
                                     	<s:if test="#session.BlimitMap['影片类型管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main5" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('节目管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/jmgl.jsp');FrameRedirect('Main', '<%=path%>/admin/ftypeAction!QueryAllFtype.action?random='+Math.random());"><span>节目管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:if>
                                    	<s:elseif test="#session.BlimitMap['影片管理']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main5" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('节目管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/jmgl.jsp');FrameRedirect('Main', '<%=path%>/admin/filmsAction!queryAllFilms.action?random='+Math.random());"><span>节目管理</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:elseif>
                                     </s:if>
                                     
                                     <s:if test="#session.AlimitMap['数据统计']!=null">
                                     	<s:if test="#session.BlimitMap['点击排行']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main6" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('数据统计');FrameRedirect('leftFrame', '<%=path%>/admin/frame/statistics.jsp');FrameRedirect('Main', '<%=path%>/sjtjAction!queryFilmsOrderByHits.action?random='+Math.random());"><span>数据统计</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:if>
                                    	<s:elseif test="#session.BlimitMap['消费排行']!=null">
                                    	<td class="Item"><div onmouseover="MouseOver(this);" id="Main6" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('数据统计');FrameRedirect('leftFrame', '<%=path%>/admin/frame/statistics.jsp');FrameRedirect('Main', '<%=path%>/admin/sjtjAction!queryCostOrderByprice.action?random='+Math.random());"><span>数据统计</span></div></td>
                                    	<td class="itemMainmenuSpirt"></td>
                                    	</s:elseif>
                                      </s:if>
                                      
                                       <s:if test="#session.AlimitMap['公告管理']!=null">
                                    <td class="Item"><div onmouseover="MouseOver(this);" id="Main7" onmouseout="MouseOut(this);" onclick="OnSelectMenu(this);setplace('公告管理');FrameRedirect('leftFrame', '<%=path%>/admin/frame/gggl.jsp');FrameRedirect('Main', '<%=path%>/admin/noticeAction!QueryAllNotice.action?random='+Math.random());"><span>公告管理</span></div></td>
                                    <td class="itemMainmenuSpirt"></td>
                                      </s:if>
                                  </tr>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div></td>
	                </tr>
                </table>
                
              <table width="100%" border="0" cellpadding="0" cellspacing="0" class="top_sub_menu">
                <tr>
                  <!--<td class="returnIndex"><a href="#" class="STYLE1">管理首页</a></td>
                  --><td class="exitSystem"><a  href="/GDZC/Login!logout.action?tbUser.tbUserName=<s:property value="#session.user.tbUserName"/>" target="_top" class="STYLE1"  onclick="return confirm('※ 是否退出系统？\n\n点击[确定]退出，取消则点击[取消]按钮。')">退出系统</a></td>
                  <td>
                      <div id="SubMenu" style="padding-left:20px; text-align:left; color:#333333;" align="left"><img src="<%=request.getContextPath()%>/admin/image/add.gif" width="12" height="15" />
                           当前位置：管理首页 -> <span id="place">系统管理</span>
                      </div>
                  </td>
               </tr>
             </table>
</body>
</html>
