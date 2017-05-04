<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="framework.bean.UserMsg"%>
<%@ page import="framework.util.ConfigUtil"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
request.setAttribute("path", path);
request.setAttribute("basePath", basePath);
request.setAttribute("title", application.getInitParameter("title"));
UserMsg user = session.getAttribute("user")==null?new UserMsg():(UserMsg)session.getAttribute("user");
request.setAttribute("user",user);

String imageServer = ConfigUtil.getInstance().getImageServer();
String attachServer = ConfigUtil.getInstance().getAttachServer();
request.setAttribute("imageServer", imageServer);
request.setAttribute("attachServer", attachServer);

String thisTabId = request.getParameter("tabId")==null?"":request.getParameter("tabId");
request.setAttribute("thisTabId", thisTabId);
%>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script type="text/javascript">
<!--
var thisTabId = "${thisTabId}";
var path_ = "${path}";
var basePath_ = "${basePath}";
var imageServer_ = "${imageServer}";
var attachServer_ = "${attachServer}";
//-->
</script>
<script type="text/javascript" src="${path }/js/jquery-1.8.0.min.js"></script>
<!-- amazeui2.7.2 -->
<link rel="stylesheet" href="${path }/AmazeUI-2.7.2/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="${path }/AmazeUI-2.7.2/assets/css/admin.css">
<script src="${path }/AmazeUI-2.7.2/assets/js/amazeui.min.js"></script>
<link rel="stylesheet" href="${path }/css/frame.css">