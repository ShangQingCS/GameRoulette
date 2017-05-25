<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort(); %>
<!DOCTYPE html>
<html>
    <head>
<script type="text/javascript">
	var path_="<%=basePath%>";
</script>
        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title></title>
        <link rel="stylesheet" href="<%=basePath %>/frozenui/css/frozen.css">
        <link rel="stylesheet" href="<%=basePath %>/frozenui/demo.css">
        <script src="<%=basePath %>/frozenui/lib/zepto.min.js"></script>
        <script src="<%=basePath %>/frozenui/js/frozen.js"></script>
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
   	 		[<label for="#" id="number">&nbsp;&nbsp;</label>]&nbsp;
           		<span class="header_title">基码:</span><select style="height: 30px;" onchange="codeBase()" id="base">
                  <option value="0">-请选择-</option>
                  <option value="10">10</option>
                  <option value="20">20</option>
                  <option value="30">30</option>
                  <option value="50">50</option>
                  <option value="100">100</option>
              	</select>
         		<button class="ui-btn" id="logout">退出</button>
         		<input type="hidden" id="isBase"/>
				<input type="hidden" id="checkNumber"/>
		</header>
		<div class="ui-footer ui-footer-stable ui-btn-group ui-border-t">
		    <ul class="ui-tiled">
		       <li><div class="ui-reddot"><div><span class="money_unit">￥</span><span class="castSmall"></span></div></div></li>
		       <li><div class="ui-reddot"><div><span class="money_unit">￥</span><span class="castBig"></span></div></div></li>
		       <li><div class="ui-reddot"><div><span class="money_unit">￥</span><span class="castIn"></span></div></div></li>
		       <!-- <li class="ui-border-r">开<div>0</div></li> -->
		        <button class="ui-btn-lg ui-btn-primary" id="saveBtn">确定</button>
		   </ul>
		</div>
		<section class="ui-container ui-center">
			<ul class="ui-justify-flex ui-whitespace ul-numcontent-first">
   				<li><a href="#" onclick='checkNumber(0)'><img alt="" src="../frozenui/num.png"/>0</a></li>
				<li><a href="#" onclick='checkNumber(1)'><img alt="" src="../frozenui/num.png"/>1</a></li>
				<li><a href="#" onclick='checkNumber(2)'><img alt="" src="../frozenui/num.png"/>2</a></li>
				<li><a href="#" onclick='checkNumber(3)'><img alt="" src="../frozenui/num.png"/>3</a></li>
				<li><a href="#" onclick='checkNumber(4)'><img alt="" src="../frozenui/num.png"/>4</a></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><a href="#" onclick='checkNumber(5)'><img alt="" src="../frozenui/num.png"/>5</a></li>
				<li><a href="#" onclick='checkNumber(6)'><img alt="" src="../frozenui/num.png"/>6</a></li>
				<li><a href="#" onclick='checkNumber(7)'><img alt="" src="../frozenui/num.png"/>7</a></li>
				<li><a href="#" onclick='checkNumber(8)'><img alt="" src="../frozenui/num.png"/>8</a></li>
				<li><a href="#" onclick='checkNumber(9)'><img alt="" src="../frozenui/num.png"/>9</a></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><a href="#" onclick='checkNumber(10)'><img alt="" src="../frozenui/num.png"/>10</a></li>
				<li><a href="#" onclick='checkNumber(11)'><img alt="" src="../frozenui/num.png"/>11</a></li>
				<li><a href="#" onclick='checkNumber(12)'><img alt="" src="../frozenui/num.png"/>12</a></li>
				<li><a href="#" onclick='checkNumber(13)'><img alt="" src="../frozenui/num.png"/>13</a></li>
				<li><a href="#" onclick='checkNumber(14)'><img alt="" src="../frozenui/num.png"/>14</a></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><a href="#" onclick='checkNumber(15)'><img alt="" src="../frozenui/num.png"/>15</a></li>
				<li><a href="#" onclick='checkNumber(16)'><img alt="" src="../frozenui/num.png"/>16</a></li>
				<li><a href="#" onclick='checkNumber(17)'><img alt="" src="../frozenui/num.png"/>17</a></li>
				<li><a href="#" onclick='checkNumber(18)'><img alt="" src="../frozenui/num.png"/>18</a></li>
				<li><a href="#" onclick='checkNumber(19)'><img alt="" src="../frozenui/num.png"/>19</a></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><a href="#" onclick='checkNumber(20)'><img alt="" src="../frozenui/num.png"/>20</a></li>
				<li><a href="#" onclick='checkNumber(21)'><img alt="" src="../frozenui/num.png"/>21</a></li>
				<li><a href="#" onclick='checkNumber(22)'><img alt="" src="../frozenui/num.png"/>22</a></li>
				<li><a href="#" onclick='checkNumber(23)'><img alt="" src="../frozenui/num.png"/>23</a></li>
				<li><a href="#" onclick='checkNumber(24)'><img alt="" src="../frozenui/num.png"/>24</a></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><a href="#" onclick='checkNumber(25)'><img alt="" src="../frozenui/num.png"/>25</a></li>
				<li><a href="#" onclick='checkNumber(26)'><img alt="" src="../frozenui/num.png"/>26</a></li>
				<li><a href="#" onclick='checkNumber(27)'><img alt="" src="../frozenui/num.png"/>27</a></li>
				<li><a href="#" onclick='checkNumber(28)'><img alt="" src="../frozenui/num.png"/>28</a></li>
				<li><a href="#" onclick='checkNumber(29)'><img alt="" src="../frozenui/num.png"/>29</a></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace">
   				<li><a href="#" onclick='checkNumber(30)'><img alt="" src="../frozenui/num.png"/>30</a></li>
				<li><a href="#" onclick='checkNumber(31)'><img alt="" src="../frozenui/num.png"/>31</a></li>
				<li><a href="#" onclick='checkNumber(32)'><img alt="" src="../frozenui/num.png"/>32</a></li>
				<li><a href="#" onclick='checkNumber(33)'><img alt="" src="../frozenui/num.png"/>33</a></li>
				<li><a href="#" onclick='checkNumber(34)'><img alt="" src="../frozenui/num.png"/>34</a></li>
			</ul>
			<ul class="ui-justify-flex ui-whitespace ul-numcontent-last">
   				<li><a href="#" onclick='checkNumber(35)'><img alt="" src="../frozenui/num.png"/>35</a></li>
   				<li><a href="#" onclick='checkNumber(36)'><img alt="" src="../frozenui/num.png"/>36</a></li>
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
<script type="text/javascript" src="<%=basePath %>/js/md5_utf8.js"></script>
<script type="text/javascript" src="<%=basePath %>/jsp/mview/js/mRoulette.js"></script>
</html>