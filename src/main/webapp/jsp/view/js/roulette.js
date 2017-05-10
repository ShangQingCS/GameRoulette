var key = 1;
var index = 0;

//选择基码
var codeBase = function(obj){
	var selPy = $("#selected tbody tr");
	var selPyTd = selPy.children("td");
	if(selPyTd.length != 0){
		return;
	}
	var isbase = $("#isBase").val();
	var sum = 0;
	if(isbase != null && isbase != ""){
		var isbase1 = parseInt(isbase);
		sum = isbase1+obj;
		$("#isBase").val(sum);	
		$(".isBase").text(sum);
	}else{
		if(obj == 10){
			$("#isBase").val(obj);	
			$(".isBase").text(obj);
		}else if(obj == 20){
			$("#isBase").val(obj);
			$(".isBase").text(obj);
		}else if(obj == 30){
			$("#isBase").val(obj);
			$(".isBase").text(obj);
		}else if(obj == 50){
			$("#isBase").val(obj);
			$(".isBase").text(obj);
		}
	}
};
	
//选择号码
var checkNumber = function(obj){
	var isbase = $("#isBase").val();
	var number  = $("#checkNumber").val();
	if(isbase == null || isbase == ""){
		alert('请选择基码');
		return;
	}
	if(number != null && number != ""){
		alert("请选择确认");
		return;
	}
	$("#checkNumber").val(obj);
	var number  = $("#checkNumber").val();
	var danger = "am-badge am-badge-danger am-round am-badge-selected"; //红色
	var black ="am-badge am-badge-black am-round am-badge-selected"; //黑色
	var zreo ="am-badge am-badge-success am-round am-badge-selected"; //绿色
	if(key > 16){
		$("#selected thead tr th").eq(index).hide();
		$("#selected tbody tr td").eq(index).hide();
		index++;
	}
	var thHtml = "";
 	thHtml += "<th>"+key+"</th>";
 	$("#selected thead tr").append(thHtml);
		var tdHtml = "";
		    tdHtml += "<td>";
		if( number == 1  || number == 3	 || number == 5  || 
			number == 9  || number == 7  || number == 12 ||
			number == 14 || number == 16 || number == 18 || 
			number == 21 || number == 23 || number == 25 ||
			number == 27 || number == 28 || number == 30 ||
			number == 32 || number == 34 || number == 36 ){
			tdHtml += "<span class='"+danger+"'>"+number+"</span>"; 
		}else if( number == 0){
			tdHtml += "<span class='"+zreo+"'>"+number+"</span>";
		}else{
			tdHtml += "<span class='"+black+"'>"+number+"</span>";
		}
	    tdHtml += "</td>";
	    $("#selected tbody tr").append(tdHtml);
	    key++;
};

//确认
$("#saveBtn").click(function(){
	var number  = $("#checkNumber").val();
	var isbase = $("#isBase").val();
	if(isbase == null || isbase == ""){
		alert('请选择基码');
		return;
	}
	if(number == null || number == ""){
		alert("请选择号码");
		return;
	}
	
	$(".castSmall").text("￥0");
	$(".castBig").text("￥0");
	$(".castIn").text("￥0");
	var basic="lotteryNumber="+number+"&betAmount="+isbase;
	var sign=sign(basic);
	var data={"lotteryNumber":number,"betAmount":isbase,"sign":sign,"sign_type":"MD5","sign_charset":"UTF-8"}
	$.ajax({
		url :path_ +"/idnex/getnext.do",
		type : 'POST',
		data : data,
		dataType: "json",
		success : function(data) {
			data=getSignVeryfy(data);
			if(data){
				$(data).each(function(index){
					var rouletteType = data[index];
					if(rouletteType.attr =="ROW_INFO"){
						if(rouletteType.attrval == 1){
							$(".castSmall").text("￥"+rouletteType.faceValue);
						}else if(rouletteType.attrval == 2){
							$(".castBig").text("￥"+rouletteType.faceValue);
						}else if(rouletteType.attrval == 3){
							$(".castIn").text("￥"+rouletteType.faceValue);
						}
					}
					if(rouletteType.sumShares != null){
						$(".totalProfit").text("￥"+rouletteType.sumShares);
					}else{
						$(".totalProfit").text("￥0");
					}
				});
			}else{
				alert("网络故障~请重新尝试");
			}
		}
	});
	$("#checkNumber").val("");
});

//清空基码
$("#emptyBase").click(function(){
	$("#isBase").val("");
	$(".isBase").text("");
	
});

//重选
$("#gravityBtn").click(function(){
	var number  = $("#checkNumber").val();
	if(number == null || number == ""){
		alert("请选择号码");
		return;
	}
	$("#selected thead tr th:last-child").remove();
	$("#selected tbody tr td:last-child").remove();
	$("#checkNumber").val("");
	key--;
});

//清空
$("#emptyBtn").click(function(){
	 $("#selected thead tr").html("");
	 $("#selected tbody tr").html("");
	 key = 1;
	 i = 0;
});

//退出
$("#signOutBtn").click(function(){
	window.location.href = path_+"/login.jsp";
});

