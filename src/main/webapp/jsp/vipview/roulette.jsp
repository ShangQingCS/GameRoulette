<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
		<table align="center" width="100%">
			<tr>
				<td>
					<div style="width: 770px;overflow: hidden;margin-left: 70px;">
						<table class="selected">
							<tr>
								<th>1</th>
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
								<th>21</th>
							</tr>
							<tr>
								<td><span class="am-badge am-badge-danger am-round am-badge-selected">3</span></td>
								<td><span class="am-badge am-badge-black am-round am-badge-selected">6</span></td>
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
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
								<td><span class="am-badge am-badge-success am-round am-badge-selected">0</span></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td align="right">
					<div style="margin-top: 5px;">
						<button type="button" class="am-btn am-btn-danger am-round"><i class="am-icon-cog"></i> 重选</button>
						<button type="button" class="am-btn am-btn-danger am-round"><i class="am-icon-cog"></i> 清空</button>
						<button type="button" class="am-btn am-btn-danger am-round" style="float: left;margin-left: 70px;"><i class="am-icon-cog"></i> 退出</button>
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
							<td style="margin-right: 10px;"><span class="am-badge am-badge-zreo am-round am-badge-singe">0</span></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="big">
						<tr>
							<td><span class="am-badge am-badge-danger am-round am-badge-singe">3</span></td>
							<td><span class="am-badge am-badge-black am-round am-badge-singe">6</span></td>
							<td><span class="am-badge am-badge-danger am-round am-badge-singe">9</span></td>
							<td><span class="am-badge am-badge-danger am-badge-danger am-round">12</span></td>
						</tr>
						<tr>
							<td><span class="am-badge am-badge-black am-round am-badge-singe">2</span></td>
							<td><span class="am-badge am-badge-danger am-round am-badge-singe">5</span></td>
							<td><span class="am-badge am-badge-black am-round am-badge-singe">8</span></td>
							<td><span class="am-badge am-badge-black am-round">11</span></td>
						</tr>
						<tr>
							<td><span class="am-badge am-badge-danger am-round am-badge-singe">1</span></td>
							<td><span class="am-badge am-badge-black am-round am-badge-singe">4</span></td>
							<td><span class="am-badge am-badge-black am-round am-badge-singe">7</span></td>
							<td><span class="am-badge am-badge-black am-round">10</span></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="middle">
						<tr>
							<td><span class="am-badge am-badge-black am-round">15</span></td>
							<td><span class="am-badge am-badge-danger am-round">18</span></td>
							<td><span class="am-badge am-badge-danger am-round">21</span></td>
							<td><span class="am-badge am-badge-black am-round">24</span></td>
						</tr>
						<tr>
							<td><span class="am-badge am-badge-danger am-round">14</span></td>
							<td><span class="am-badge am-badge-black am-round">17</span></td>
							<td><span class="am-badge am-badge-black am-round">20</span></td>
							<td><span class="am-badge am-badge-danger am-round">23</span></td>
						</tr>
						<tr>
							<td><span class="am-badge am-badge-danger am-round">16</span></td>
							<td><span class="am-badge am-badge-danger am-round">19</span></td>
							<td><span class="am-badge am-badge-black am-round">22</span></td>
							<td><span class="am-badge am-badge-danger am-round">25</span></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="small">
						<tr>
							<td><span class="am-badge am-badge-danger am-round">27</span></td>
							<td><span class="am-badge am-badge-danger am-round">30</span></td>
							<td><span class="am-badge am-badge-black am-round">33</span></td>
							<td><span class="am-badge am-badge-danger am-round">36</span></td>
						</tr>
						<tr>
							<td><span class="am-badge am-badge-black am-round">26</span></td>
							<td><span class="am-badge am-badge-black am-round">29</span></td>
							<td><span class="am-badge am-badge-danger am-round">32</span></td>
							<td><span class="am-badge am-badge-black am-round">35</span></td>
						</tr>
						<tr>
							<td><span class="am-badge am-badge-black am-round">25</span></td>
							<td><span class="am-badge am-badge-black am-round">28</span></td>
							<td><span class="am-badge am-badge-black am-round">31</span></td>
							<td><span class="am-badge am-badge-danger am-round">34</span></td>
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
							<td align="center" height="50"><span style="font-size:40px;font-weight: bold;color: white;">￥450</span></td>
						</tr>
					</table>
				</td>
				<td>
					<table width="100%" border="1" bordercolor="white">
						<tr>
							<td align="center" height="50"><span style="font-size:40px;font-weight: bold;color: white;">￥450</span></td>
						</tr>
					</table>
				</td>
				<td>
					<table width="100%" border="1" bordercolor="white">
						<tr>
							<td align="center" height="50"><span style="font-size:40px;font-weight: bold;color: white;">￥450</span></td>
						</tr>
					</table>
				</td>
				<td></td>
			</tr>
		</table>
		<table align="center" class="jima" style="margin-top: 50px;width:845px;" border="0" bordercolor="white">
			<tr>
				<td width="200" valign="top">
					<span style="font-size:30px;font-weight: bold;color: white;">总获利:</span><span style="font-size:30px;font-weight: bold;color: white;">￥450</span>
					<br/><br/>
					<span style="font-size:30px;font-weight: bold;color: white;">基　码:</span><span style="font-size:30px;font-weight: bold;color: white;">　<span>10</span>　</span>
				</td>
				<td align="center">
					<a href="#"><img alt="" src="${path }/images/money-10.png"/></a>
					&nbsp;&nbsp;&nbsp;
					<a href="#"><img alt="" src="${path }/images/money-20.png"/></a>
					&nbsp;&nbsp;&nbsp;
					<a href="#"><img alt="" src="${path }/images/money-30.png"/></a>
					&nbsp;&nbsp;&nbsp;
					<a href="#"><img alt="" src="${path }/images/money-50.png"/></a>
					&nbsp;&nbsp;&nbsp;
					<select style="height: 50px; width: 50px;">
						<option>100</option>
						<option>200</option>
						<option>300</option>
					</select>
				</td>
				<td align="right">
					<button type="button" class="am-btn am-btn-warning am-round"><i class="am-icon-cog"></i> 确认基码</button><br/><br/>
					<button type="button" class="am-btn am-btn-danger am-round"><i class="am-icon-cog"></i> 清空基码</button>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>