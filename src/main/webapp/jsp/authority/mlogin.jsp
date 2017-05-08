<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<% String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort(); %>
<html>
    <head>
    <jsp:include page="/include/common.jsp"></jsp:include>
        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title>登录</title>
        <link rel="stylesheet" href="<%=basePath %>/frozenui/css/frozen.css">
        <link rel="stylesheet" href="<%=basePath %>/frozenui/demo.css">
        <script src="<%=basePath %>/frozenui/lib/zepto.min.js"></script>
        <script src="<%=basePath %>/frozenui/js/frozen.js"></script>
    </head>
    
    <body ontouchstart>
        <header class="ui-header ui-header-positive ui-border-b">
            <!-- <i class="ui-icon-return" onclick="history.back()"></i> --><h1>登录</h1><!-- <button class="ui-btn">回首页</button> -->
        </header>
        <section class="ui-container">
        	<div class="ui-poptips ui-poptips-success" id="msgDiv" style="display: none;">
			    <div class="ui-poptips-cnt"><i></i><span id="msgText">温馨提示内容</span></div>
			</div>
			<div class="ui-form ui-border-t">
			    <form action="#">
			        <div class="ui-form-item ui-border-b">
			            <label>VIP编号</label>
			            <input type="text" id="vipId" placeholder="请输入VIP编号" 
			            onkeyup="if(this.value.length>0){document.getElementById('vipClose').style.display='';} else {document.getElementById('vipClose').style.display='none';}"/>
			            <a href="javascript:void(0);" id="vipClose"
			            onclick="document.getElementById('vipId').value='';this.style.display='none';" style="display: none;" class="ui-icon-close"></a>
			        </div>
			        <div class="ui-form-item ui-border-b">
			            <label>打手编号</label>
			            <input type="text" id="dsId" placeholder="请输入打手编号" 
			            onkeyup="if(this.value.length>0){document.getElementById('dsClose').style.display='';} else {document.getElementById('dsClose').style.display='none';}"/>
			            <a href="javascript:void(0);" id="dsClose" 
			            onclick="document.getElementById('dsId').value='';this.style.display='none';" style="display: none;" class="ui-icon-close"></a>
			        </div>
			        <div id="div_msg" style="color: red; padding-left: 85px;text-align:center; margin-top: 5px;">&nbsp;</div>
			        <div class="ui-btn-wrap">
			    		<a class="ui-btn ui-btn-lg ui-btn-primary" id="submitBtn" data-href="index.html">确定</a>
					</div>
			    </form>
			</div>
        </section>
        <script>
        $('#submitBtn').click(function(){
        	/* $('#msgText').html("请输入VIP编号");
        	$('#msgDiv').show(); */
        	var vipId = $("#vipId").val();
        	var dsId = $("#dsId").val();
        	if(vipId.length>0 && dsId.length>0) {
        		ajaxlogin();
        	}
        });
        
        var ajaxlogin = function() {
        	var vipId = $("#vipId").val();
        	var dsId = $("#dsId").val();
			var msg = document.getElementById("div_msg");
			var data = { uname:vipId, ename:dsId,authenticationType:2};
			$.post("<%=basePath %>/login/validate.do",data,function (json){
				//json=eval('(' + json + ')');
				json=JSON.parse(json);
				if(json.result == 1) {
					window.location.href = "<%=basePath %>"+json.url;
				} else {
					msg.innerText = json.message;
				}
			});
        };
        </script>
    </body>
</html>