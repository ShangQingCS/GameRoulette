<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<% String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort(); %>
<html>
<head>
	<meta charset="utf-8">
  	<title>vip login</title>
  	<meta name="renderer" content="webkit">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  	<link rel="stylesheet" href="<%=basePath %>/js/layui-v1.0.9_rls/layui/css/layui.css"  media="all">
	<style type="text/css">
		.main {
			margin:auto auto;
			width: 310px;
			margin-top: 150px;
			border: 1px solid #E1E0E0;
			padding-left: 10px;
			padding-top: 10px;
			padding-bottom: 10px;
			padding-right: 0px;
			background-color: #E1E0E0;
		}
		.toolbar {
			margin:auto auto;width: 300px;margin-top: 20px;border: 0px solid red;
			text-align: center;
		}
		body {
			background-color: #464646;
		}
	</style>
</head>
<body>
<div class="main" style="background: url('<%=basePath%>/images/timg1.jpg')no-repeat;background-size:100% 100%;">
	<form class="layui-form layui-form-pane" action="">
	  <div class="layui-form-item">
	    <label class="layui-form-label">用户名</label>
	    <div class="layui-input-inline">
	      <input type="text" name="username" lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-inline">
	      <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
	    </div>
	    <!-- <div class="layui-form-mid layui-word-aux">请务必填写用户名</div> -->
	  </div>
	  <!-- <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-submit lay-filter="demo1">登录</button>
	      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
	    </div>
	  </div> -->
	  <div class="toolbar">
	  	<button class="layui-btn" lay-submit lay-filter="demo1">登录</button>
	  	<button type="reset" class="layui-btn layui-btn-primary">重置</button>
	  </div>
	</form>
</div>
<script src="<%=basePath %>/js/jquery-1.8.0.min.js" charset="utf-8"></script>
<script src="<%=basePath %>/js/layui-v1.0.9_rls/layui/layui.js" charset="utf-8"></script>
<script>
layui.use(['form'], function() {
	var form = layui.form() ,layer = layui.layer;
  
	//自定义验证规则
	form.verify({
		title: function(value){
			if(value.length < 5){
				return '标题至少得5个字符啊';
			}
		}
    	,pass: [/(.+){6,12}$/, '密码必须6到12位']
	});
		
	//监听提交
	form.on('submit(demo1)', function(data) {
		/* layer.alert(JSON.stringify(data.field), {
			title: '最终的提交信息'
    	}) */
    	
		var userid = data.form[0].value;
		var pwd = data.form[1].value;
		//var verifyCode = document.getElementById("verifyCode").value;
		//var msg = document.getElementByName("div_msg");
		if(userid=="" || pwd==""/*  || verifyCode=="" */ ){
			layer.alert(JSON.stringify("用户名密码不能为空"), {
				title: '提示'
			});
		}else{
			//msg.innerHTML = "&nbsp;";
			var data = { uname:userid, pwd:pwd,authenticationType:1};
			//"&uname="+userid+"&pwd="+pwd+"authenticationType=1";/* +"&verifyCode="+verifyCode */
			
			$.post("<%=basePath %>/login/validate.do",data,function (json){
				//json=eval('(' + json + ')');
				json=JSON.parse(json);
				if(json.result == 1) {
					window.location.href = "<%=basePath %>"+json.url;
				} else {
					layer.alert(JSON.stringify(json.message), {
						title: '提示'
				    });
				}
			});
			return false;
		}
	});
});
</script>
</body>
</html>