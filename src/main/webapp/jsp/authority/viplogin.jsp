<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  	<title>登录</title>
  	<meta name="renderer" content="webkit">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  	<link rel="stylesheet" href="js/layui-v1.0.9_rls/layui/css/layui.css"  media="all">
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
<div class="main" style="background: url('images/timg1.jpg')no-repeat;background-size:100% 100%;">
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
<script src="js/layui-v1.0.9_rls/layui/layui.js" charset="utf-8"></script>
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
    	window.location.href="vipview/search.jsp";
    	return false;
	});
});
</script>
</body>
</html>