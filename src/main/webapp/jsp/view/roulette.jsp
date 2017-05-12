<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort(); %>
<html>
<head>
<script type="text/javascript">
	var path_="<%=basePath%>";
</script>
<jsp:include page="/include/common.jsp"></jsp:include>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<style type="text/css">
.am-badge {
	padding: 12px 12px;
	font-size: 2em;
}

.am-badge-singe {
	padding: 12px 21px;
	font-size: 2em;
}
.am-badge-zreo {
	background-color: #3A942F;
}
.am-badge-black {
	background-color: #080404;
}
.am-badge-danger {
	background-color: #ec1911;
}

.am-badge-selected {
	padding: 5px 10px;
	font-size: 19px;
}

body {
	background-color: #13532C;
}

.main {
	margin:auto auto; 
	width: 845px; 
	margin-top: 10px;
}

.selected {
	border: 1px solid white;
}

.selected tr td {
	border: 1px solid white;
	padding: 3px;
}

.selected tr th {
	border: 1px solid white;
	color:white;
	text-align:center;
	padding: 3px;
}

.zreo .big .middle .small {
	border: 1px solid white;
	border-right: none;
}

.zreo tr td {
	border: 1px solid white;
	border-right: none;
	padding: 3px;
}

.big tr td {
	border: 1px solid white;
	border-right: none;
	padding: 3px;
}

.middle tr td {
	border: 1px solid white;
	border-right: none;
	padding: 3px;
}

.small tr td {
	border: 1px solid white;
	padding: 3px;
}

.jima {
	margin-top: 10px;
}
</style>
</head>
<%-- <body style="background: url('${path}/images/timg1.jpg')no-repeat;background-size:100% 100%;"> --%>
<body>
	<div class="main" style="height: 90px; margin-top: 20px;">
		<table align="center" width="100%" border="0">
			<tr>
				<td>
					<div style="width: 770px;overflow: hidden;margin-left: 70px;">
						<table class="selected" id="selected">
							<thead> 
							<tr>
								<!-- <th>1</th>
								<th>2</th>
								<th>3</th>
								<th>4</th>
								<th>5</th>
								<th>6</th>
								<th>7</th>
								<th>8</th>
								<th>9</th>
								<th>10</th>
								<th>11</th>
								<th>12</th>
								<th>13</th>
								<th>14</th>
								<th>15</th>
								<th>16</th>
								<th>17</th>
								<th>18</th>
								<th>19</th>
								<th>20</th>
								<th>21</th>  -->
							</tr>
							</thead>
							<tbody>
							<tr>
							<!-- <td><span class="am-badge am-badge-danger am-round am-badge-selected">3</span></td>
								<td><span class="am-badge am-badge-black am-round am-badge-selected">6</span></td>
								<td><span class="am-badge am-badge-black am-round am-badge-selected">27</span></td>
								<td><span class="am-badge am-badge-danger am-round am-badge-selected">34</span></td>
								<td><span class="am-badge am-badge-black am-round am-badge-selected">10</span></td>
								<td><span >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
								<td><span class="am-badge am-badge-black am-round am-badge-selected">15</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>  -->
							</tr>
							</tbody>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td align="right">
					<div style="margin-top: 5px;">
						<button type="button" id="gravityBtn" class="am-btn am-btn-danger am-round"><i class="am-icon-cog"></i> 重选</button>
						<button type="button" id="emptyBtn" class="am-btn am-btn-danger am-round"><i class="am-icon-cog"></i> 清空</button>
						<button type="button" id="signOutBtn" class="am-btn am-btn-danger am-round" style="float: left;margin-left: 70px;"><i class="am-icon-cog"></i> 退出</button>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div class="main" style="margin-top: 15px;">
		<table align="center">
			<tr>
				<td>
					
				</td>
				<td>
					
				</td>
				<td>
					
				</td>
				<td>
					
				</td>
				<td>
					
				</td>
			</tr>
			<tr>
				<td>
					<table class="zreo">
						<tr>
							<td style="margin-right: 10px;"><a href="#" onclick='checkNumber(0)'><span class="am-badge am-badge-zreo am-round am-badge-singe">0</span></a></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="big">
						<tr>
							<td><a href="#" onclick='checkNumber(3)'><span class="am-badge am-badge-danger am-round am-badge-singe">3</span></a></td>
							<td><a href="#" onclick='checkNumber(6)'><span class="am-badge am-badge-black am-round am-badge-singe">6</span></a></td>
							<td><a href="#" onclick='checkNumber(9)'><span class="am-badge am-badge-danger am-round am-badge-singe">9</span></a></td>
							<td><a href="#" onclick='checkNumber(12)'><span class="am-badge am-badge-danger am-badge-danger am-round">12</span></a></td>
						</tr>
						<tr>
							<td><a href="#" onclick='checkNumber(2)'><span class="am-badge am-badge-black am-round am-badge-singe">2</span></a></td>
							<td><a href="#" onclick='checkNumber(5)'><span class="am-badge am-badge-danger am-round am-badge-singe">5</span></a></td>
							<td><a href="#" onclick='checkNumber(8)'><span class="am-badge am-badge-black am-round am-badge-singe">8</span></a></td>
							<td><a href="#" onclick='checkNumber(11)'><span class="am-badge am-badge-black am-round">11</span></a></td>
						</tr>
						<tr>
							<td><a href="#" onclick='checkNumber(1)'><span class="am-badge am-badge-danger am-round am-badge-singe">1</span></a></td>
							<td><a href="#" onclick='checkNumber(4)'><span class="am-badge am-badge-black am-round am-badge-singe">4</span></a></td>
							<td><a href="#" onclick='checkNumber(7)'><span class="am-badge am-badge-danger am-round am-badge-singe">7</span></a></td>
							<td><a href="#" onclick='checkNumber(10)'><span class="am-badge am-badge-black am-round">10</span></a></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="middle">
						<tr>
							<td><a href="#" onclick='checkNumber(15)'><span class="am-badge am-badge-black am-round">15</span></a></td>
							<td><a href="#" onclick='checkNumber(18)'><span class="am-badge am-badge-danger am-round">18</span></a></td>
							<td><a href="#" onclick='checkNumber(21)'><span class="am-badge am-badge-danger am-round">21</span></a></td>
							<td><a href="#" onclick='checkNumber(24)'><span class="am-badge am-badge-black am-round">24</span></a></td>
						</tr>
						<tr>
							<td><a href="#" onclick='checkNumber(14)'><span class="am-badge am-badge-danger am-round">14</span></a></td>
							<td><a href="#" onclick='checkNumber(17)'><span class="am-badge am-badge-black am-round">17</span></a></td>
							<td><a href="#" onclick='checkNumber(20)'><span class="am-badge am-badge-black am-round">20</span></a></td>
							<td><a href="#" onclick='checkNumber(23)'><span class="am-badge am-badge-danger am-round">23</span></a></td>
						</tr>
						<tr>
							<td><a href="#" onclick='checkNumber(13)'><span class="am-badge am-badge-black am-round">13</span></a></td>
							<td><a href="#" onclick='checkNumber(16)'><span class="am-badge am-badge-danger am-round">16</span></a></td>
							<td><a href="#" onclick='checkNumber(19)'><span class="am-badge am-badge-black am-round">19</span></a></td>
							<td><a href="#" onclick='checkNumber(22)'><span class="am-badge am-badge-black am-round">22</span></a></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="small">
						<tr>
							<td><a href="#" onclick='checkNumber(17)'><span class="am-badge am-badge-danger am-round">27</span></a></td>
							<td><a href="#" onclick='checkNumber(30)'><span class="am-badge am-badge-danger am-round">30</span></a></td>
							<td><a href="#" onclick='checkNumber(33)'><span class="am-badge am-badge-black am-round">33</span></a></td>
							<td><a href="#" onclick='checkNumber(36)'><span class="am-badge am-badge-danger am-round">36</span></a></td>
						</tr>
						<tr>
							<td><a href="#" onclick='checkNumber(26)'><span class="am-badge am-badge-black am-round">26</span></a></td>
							<td><a href="#" onclick='checkNumber(29)'><span class="am-badge am-badge-black am-round">29</span></a></td>
							<td><a href="#" onclick='checkNumber(32)'><span class="am-badge am-badge-danger am-round">32</span></a></td>
							<td><a href="#" onclick='checkNumber(35)'><span class="am-badge am-badge-black am-round">35</span></a></td>
						</tr>
						<tr>
							<td><a href="#" onclick='checkNumber(25)'><span class="am-badge am-badge-danger am-round">25</span></a></td>
							<td><a href="#" onclick='checkNumber(28)'><span class="am-badge am-badge-danger am-round">28</span></a></td>
							<td><a href="#" onclick='checkNumber(31)'><span class="am-badge am-badge-black am-round">31</span></a></td>
							<td><a href="#" onclick='checkNumber(34)'><span class="am-badge am-badge-danger am-round">34</span></a></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="small" width="80">
						<tr>
							<td height="59">&nbsp;</td>
						</tr>
						<tr>
							<td height="59">&nbsp;</td>
						</tr>
						<tr>
							<td height="59">&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
					<table width="100%" border="1" bordercolor="white">
						<tr>
							<td align="center" height="50"><span class="castSmall" style="font-size:40px;font-weight: bold;color: white;"></span></td>
						</tr>
					</table>
				</td>
				<td>
					<table width="100%" border="1" bordercolor="white">
						<tr>
							<td align="center" height="50"><span class="castBig" style="font-size:40px;font-weight: bold;color: white;"></span></td>
						</tr>
					</table>
				</td>
				<td>
					<table width="100%" border="1" bordercolor="white">
						<tr>
							<td align="center" height="50"><span class="castIn" style="font-size:40px;font-weight: bold;color: white;"></span></td>
						</tr>
					</table>
				</td>
				<td></td>
			</tr>
		</table>
		<table align="center" class="jima" style="margin-top: 50px;width:845px;" border="0" bordercolor="white">
			<tr>
				<td width="255" valign="top">
					<span style="font-size:30px;font-weight: bold;color: white;">总获利:</span><span class="totalProfit" style="font-size:30px;font-weight: bold;color: white;"></span>
					<br/><br/>
					<span style="font-size:30px;font-weight: bold;color: white;">基　码:</span><span class="isBase" style="font-size:30px;font-weight: bold;color: white;"><span></span></span>
					<input type="hidden" id="isBase"/>
					<input type="hidden" id="checkNumber"/>
				</td>
				<td align="center">
					<a href="#" onclick='codeBase(10)'><img alt="" src="${path }/images/money-10.png"/></a>
					&nbsp;&nbsp;&nbsp;
					<a href="#" onclick='codeBase(20)'><img alt="" src="${path }/images/money-20.png"/></a>
					&nbsp;&nbsp;&nbsp;
					<a href="#" onclick='codeBase(30)'><img alt="" src="${path }/images/money-30.png"/></a>
					&nbsp;&nbsp;&nbsp;
					<a href="#" onclick='codeBase(50)'><img alt="" src="${path }/images/money-50.png"/></a>
					&nbsp;&nbsp;&nbsp;
					<!-- <select style="height: 50px; width: 50px;">
						<option>100</option>
						<option>200</option>
						<option>300</option>
					</select> -->
				</td>
				<td align="right">
					<button type="button" id="saveBtn" class="am-btn am-btn-warning am-round"><i class="am-icon-cog"></i> 确　　认</button><br/><br/>
					<button type="button" id="emptyBase" class="am-btn am-btn-danger am-round"><i class="am-icon-cog"></i> 清空基码</button>
				</td>
			</tr>
		</table>
	</div>
</body>
<script type="text/javascript" src="<%=basePath %>/js/md5_utf8.js"></script>
<script type="text/javascript" src="<%=basePath %>/jsp/view/js/roulette.js"></script>
</html>