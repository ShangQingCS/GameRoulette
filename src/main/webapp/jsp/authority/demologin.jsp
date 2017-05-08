<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<% String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort(); %>
<html>
    <head>
  	<jsp:include page="/include/common.jsp"></jsp:include>
  	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<title>演示版 login</title>
  	<meta name="description" content="">
  	<meta name="keywords" content="index">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<meta name="renderer" content="webkit">
  	<meta http-equiv="Cache-Control" content="no-siteapp" />
  	<link rel="stylesheet" href="<%=basePath %>/AmazeUI-2.7.2/assets/css/login/app.css">
  	<style type="text/css">
  		.login-font {
  			font-size: 20px;
  			font-weight: bold;
  		}
  	</style>
	<script type="text/javascript">
	
	function login(){
		var userid = document.getElementById("email").value;
		var pwd = document.getElementById("password").value;
		//var verifyCode = document.getElementById("verifyCode").value;
		var msg = document.getElementById("div_msg");
		if(userid=="" || pwd==""/*  || verifyCode=="" */ ){
			msg.innerHTML = "用户名密码不能为空";
		}else{
			//msg.innerHTML = "&nbsp;";
			//var data = "&dname="+userid+"&pwd="+pwd+"authenticationType=0"/* +"&verifyCode="+verifyCode */;
			var data = { dname:userid, pwd:pwd,authenticationType:0};
			$.post("<%=basePath %>/login/validate.do",data,function (json){
				//json=eval('(' + json + ')');
				json=JSON.parse(json);
				if(json.result == 1) {
					window.location.href = "<%=basePath %>"+json.url;
				} else {
					msg.innerText = json.message;
				}
			});
		}
	}
	</script>
</head>
<body data-type="login">
  <%-- <div class="am-g myapp-login" style="background: url('${path}/images/timg1.jpg')no-repeat;background-size:100% 100%;"> --%>
  <div class="am-g myapp-login">
	<div class="myapp-login-logo-block tpl-login-max">
		<div id="div_msg" style="color: red; padding-left: 85px;text-align:center; margin-top: 5px;">&nbsp;</div>
		<div class="myapp-login-logo-text">
			<div class="myapp-login-logo-text">
				<span style="font-size: 60px;color: red;"><%-- <img alt="" src="${path }/images/lunpan2.jpg" width="150" height="150"> --%>轮盘宝</span>
			</div>
		</div>
		<div class="login-font">
			<i>登录 </i> or <span> Sign Up</span>
		</div>
		<div class="am-u-sm-10 login-am-center">
			<form class="am-form">
				<fieldset>
					<div class="am-form-group">
						<input type="text" id="email" class="" id="doc-ipt-email-1" placeholder="输入用户名" value="">
					</div>
					<div class="am-form-group">
						<input type="password" class="" id="password" placeholder="请输入密码" value="">
					</div>
					<p><button type="button" class="am-btn am-btn-default" onclick="login();">登录</button></p>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<script src="<%=basePath %>/AmazeUI-2.7.2/assets/js/app.js"></script>
</body>
</html>