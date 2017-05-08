<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<jsp:include page="${Path }/include/common.jsp"></jsp:include>
        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title></title>
        <link rel="stylesheet" href="${Path }/frozenui/css/frozen.css">
        <link rel="stylesheet" href="${Path }/frozenui/demo.css">
        <script src="${Path }/frozenui/lib/zepto.min.js"></script>
        <script src="${Path }/frozenui/js/frozen.js"></script>
		<style>
			.small {
				background:red;
			}
			.middle {
				background:yellow;
			}
			.big {
				background:blue;
			}
			.test-img {
				padding-left: 1px;
			}
			img {
				width: 50px;height: 50px;
				margin-top: 0px;
				margin-left: 0px;
			}
			label {
				font-size: 20px;
				color: #E53A22;
				font-weight: bold;
			}
			#numcontent{
				margin-top: 20px;
			}
			.ul-numcontent-first {
				padding-top: 10px;
			}
			.ul-numcontent-last {
				padding-bottom: 60px;
			}
			li {
				font-size: 18px;
			}
			.money_unit {
				font-size: 18px;
				font-weight: bold;
				color: #83D944;
			}
			.header_title {
				font-size: 14px;
			}
		</style>
		
    </head>
    
    <body>
		<header class="ui-header ui-header-positive ui-border-b">
   	 		<!-- <i class="ui-icon-return" onclick="history.back()"></i> -->
   	 		[<label for="#">16</label>]&nbsp;
           		<span class="header_title">基码:</span><select style="height: 30px;">
                  <option>10</option>
                  <option>20</option>
                  <option>30</option>
                  <option>50</option>
                  <option>100</option>
              	</select>
         		<button class="ui-btn" id="logout">退出</button>
		</header>
		<div class="ui-footer ui-footer-stable ui-btn-group ui-border-t">
		    <ul class="ui-tiled">
		       <li><div class="ui-reddot"><div><span class="money_unit">￥</span>450</div></li>
		       <li><div class="ui-reddot"><div><span class="money_unit">￥</span>1080</div></li>
		       <li><div class="ui-reddot"><div><span class="money_unit">￥</span>1200</div></li>
		       <!-- <li class="ui-border-r">开<div>0</div></li> -->
		        <button class="ui-btn-lg ui-btn-primary">确定</button>
		   </ul>
		</div>
		<section class="ui-container ui-center">
			<ul class="ui-justify-flex ui-whitespace ul-numcontent-first">
   				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
				<li><img alt="" src="../frozenui/num.png"/></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace ul-numcontent-last">
   				<li><img alt="" src="../frozenui/num.png"/></li>
   				<li><img alt="" src="../frozenui/num.png"/></li>
   				<li><img alt="" src="" style="visibility: collapse;"/></li>
   				<li><img alt="" src="" style="visibility: collapse;"/></li>
   				<li><img alt="" src="" style="visibility: collapse;"/></li>
			</ul>
		    <!-- <div style="text-align: left;padding-bottom: 60px;font-size: 15px;">会员：zhangsan&nbsp;&nbsp;打手：lisi</div> -->
			<!-- <ul class="ui-justify-flex ui-whitespace">
   				<li><img alt="" src="" style="visibility: collapse;"/></li>
   				<li><img alt="" src="" style="visibility: collapse;"/></li>
   				<li><img alt="" src="" style="visibility: collapse;"/></li>
   				<li><img alt="" src="" style="visibility: collapse;"/></li>
   				<li><img alt="" src="" style="visibility: collapse;"/></li>
			</ul> -->
		</section>
    </body>
     <script>
        $('#logout').click(function(){
        	location.href= '../mlogin.html';
        });
        </script>
</html>