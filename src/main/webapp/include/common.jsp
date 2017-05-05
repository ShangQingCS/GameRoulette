<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${path }/js/jquery-1.8.0.min.js"></script>
<!-- amazeui2.7.2 -->
<link rel="stylesheet" href="${path }/AmazeUI-2.7.2/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="${path }/AmazeUI-2.7.2/assets/css/admin.css">
<script src="${path }/AmazeUI-2.7.2/assets/js/amazeui.min.js"></script>
<link rel="stylesheet" href="${path }/css/frame.css">