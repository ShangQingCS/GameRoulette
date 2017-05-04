<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<jsp:include page="/include/common.jsp"></jsp:include>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>轮盘动态查看</title>
<meta http-equiv="Cache-Control" content="no-siteapp" />
</head>
<body>
	<div class="am-cf ">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding am-padding-bottom-0">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">轮盘动态查看</strong> / <small>查看轮盘实时动态</small>
					</div>
					<div style="float: right;margin-right: 30px;"><a href="../viplogin.jsp">退出登录</a></div>
					<div style="float: right;margin-right: 30px;"><a>查看历史</a></div>
				</div>
				<hr>
				
				<div class="am-tabs" style="margin-top: 10px;" data-am-tabs>
					<ul class="am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#tab1" id="tab1">一号桌</a></li>
						<li><a href="#tab2">二号桌</a></li>
						<li><a href="#tab3">三号桌</a></li>
					</ul>
				  	<div class="am-tabs-bd">
					    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
					    	<div class="am-g">
								<div class="am-u-sm-12">
									<div class="am-panel am-panel-primary">
										<div class="am-panel-bd am-collapse am-in frame-search-panel"id="collapse-panel-1">
											<table id="from_query" class="frame-query-table" border="0" bordercolor="black">
												<tr>
													<td>&nbsp;打手：</td>
													<td>打手1</td>
													<td>&nbsp;开局时间：</td>
													<td>2017-4-28 15:45:20</td>
													<td>&nbsp;耗时：</td>
													<td>10分钟</td>
													<td>&nbsp;投注本金：</td>
													<td>10000(RMB)</td>
													<td>&nbsp;总盈亏(RMB)：</td>
													<td>12000(元)</td>
													<td>
														<button type="button" id="queryBtn" class="am-btn am-btn-primary frame-search-button">手动刷新本桌数据</button>
													</td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="am-g">
								<div class="am-u-sm-12 page-table-main">
									开奖动态（最新20局）：<br/>
									<table class="am-table am-table-bordered am-table-striped am-table-hover" id="bankListTable">
										<thead>
											<tr>
												<th width="2%" field="index"></th>
												<th width="10%" field="bankName">开奖号码</th>
												<th width="10%" field="tel">基码</th>
												<th width="10%" field="url">总投注额</th>
												<th width="10%" field="url">投注额(大)</th>
												<th width="10%" field="url">投注额(中)</th>
												<th width="10%" field="url">投注额(小)</th>
												<th width="10%" field="bankDesc">盈亏</th>
												<th width="20%">开奖时间</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>2</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td style="color: red">-200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>3</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>4</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td style="color: red">-200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>5</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>6</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>7</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>8</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td style="color: red">-200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>9</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>10</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>12</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>13</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>6</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>14</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>15</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>16</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>17</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>18</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>19</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
											<tr>
												<td>20</td>
												<td>16</td>
												<td>30</td>
												<td>900</td>
												<td>600</td>
												<td>300</td>
												<td>0</td>
												<td>1200</td>
												<td>2017-04-28 15:45:50</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="am-u-sm-12">
									<div class="am-cf">共<span id="rowCount">20</span>条记录<div id="page" class="am-fr"></div></div>
								</div>
							</div>
					    </div>
					    <div class="am-tab-panel am-fade" id="tab2">
					    	<div class="am-g">
								<div class="am-u-sm-12">
									<div class="am-panel am-panel-primary">
										<div class="am-panel-bd am-collapse am-in frame-search-panel"id="collapse-panel-1">
											<table id="from_query" class="frame-query-table" border="0" bordercolor="black">
												<tr>
													<td style="width:100px;">&nbsp;打手：</td>
													<td style="width:200px;">打手1</td>
													<td style="width:100px;">&nbsp;开局时间：</td>
													<td style="width:200px;">2017-4-28 15:45:20</td>
													<td style="width:100px;">&nbsp;耗时：</td>
													<td style="width:200px;">10分钟</td>
													<td>
														<button type="button" id="queryBtn" class="am-btn am-btn-primary frame-search-button">手动刷新本桌数据</button>
													</td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="am-g">
								<div class="am-u-sm-12 page-table-main">
									开奖动态（最新20局）：<br/>
									<table class="am-table am-table-bordered am-table-striped am-table-hover" id="bankListTable">
										<thead>
											<tr>
												<th width="2%" field="index"></th>
												<th width="10%" field="bankName">开奖号码</th>
												<th width="10%" field="tel">基码</th>
												<th width="10%" field="url">总投注额</th>
												<th width="10%" field="url">投注额(大)</th>
												<th width="10%" field="url">投注额(中)</th>
												<th width="10%" field="url">投注额(小)</th>
												<th width="10%" field="bankDesc">盈亏</th>
												<th width="20%">开奖时间</th>
											</tr>
										</thead>
									</table>
								</div>
								<div class="am-u-sm-12">
									<div class="am-cf">共<span id="rowCount"></span>条记录<div id="page" class="am-fr"></div></div>
								</div>
							</div>
					    </div>
					    <div class="am-tab-panel am-fade" id="tab3">
					    	<div class="am-g">
								<div class="am-u-sm-12">
									<div class="am-panel am-panel-primary">
										<div class="am-panel-bd am-collapse am-in frame-search-panel"id="collapse-panel-1">
											<table id="from_query" class="frame-query-table" border="0" bordercolor="black">
												<tr>
													<td style="width:100px;">&nbsp;打手：</td>
													<td style="width:200px;">打手1</td>
													<td style="width:100px;">&nbsp;开局时间：</td>
													<td style="width:200px;">2017-4-28 15:45:20</td>
													<td style="width:100px;">&nbsp;耗时：</td>
													<td style="width:200px;">10分钟</td>
													<td>
														<button type="button" id="queryBtn" class="am-btn am-btn-primary frame-search-button">手动刷新本桌数据</button>
													</td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="am-g">
								<div class="am-u-sm-12 page-table-main">
									开奖动态（最新20局）：<br/>
									<table class="am-table am-table-bordered am-table-striped am-table-hover" id="bankListTable">
										<thead>
											<tr>
												<th width="2%" field="index"></th>
												<th width="10%" field="bankName">开奖号码</th>
												<th width="10%" field="tel">基码</th>
												<th width="10%" field="url">总投注额</th>
												<th width="10%" field="url">投注额(大)</th>
												<th width="10%" field="url">投注额(中)</th>
												<th width="10%" field="url">投注额(小)</th>
												<th width="10%" field="bankDesc">盈亏</th>
												<th width="20%">开奖时间</th>
											</tr>
										</thead>
									</table>
								</div>
								<div class="am-u-sm-12">
									<div class="am-cf">共<span id="rowCount"></span>条记录<div id="page" class="am-fr"></div></div>
								</div>
							</div>
					    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- content end -->
</body>
</html>