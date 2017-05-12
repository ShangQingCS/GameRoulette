//选择基码
var codeBase = function(){
	var isbase = $("#base").val();
	if(isbase != 0){
		$("#base").attr("disabled","disabled");
	}
	$("#isBase").val(isbase);
};
	
//选择号码
var checkNumber = function(obj){
	var isbase = $("#base").val();
	var number  = $("#checkNumber").val();
	if(isbase == null || isbase == "0"){
		alert('请选择基码');
		return;
	}
	$("#checkNumber").val(obj);
	$("#number").text(obj);
};

//确认
$("#saveBtn").click(function(){
	var number  = $("#checkNumber").val();
	var isbase = $("#base").val();
	if(isbase == null || isbase == "0"){
		alert('请选择基码');
		return;
	}
	if(number == null || number == ""){
		alert("请选择号码");
		return;
	}
	
	$(".castSmall").text("0");
	$(".castBig").text("0");
	$(".castIn").text("0");
	//传入基码和选中号码，请求后台
	var basic="betAmount="+isbase+"&lotteryNumber="+number+"&type=2";
	var sign=getsign(basic);
	var data={"betAmount":isbase,"lotteryNumber":number,"sign":sign,"sign_type":"MD5","sign_charset":"UTF-8","type":"2"}
	$.ajax({
		url :path_ +"/idnex/getnext.do",
		type : 'POST',
		data : data,
		dataType: "json",
		success : function(data) {
			data=getSignVeryfy(data);
			$(data).each(function(index){
				var rouletteType = data[index];
				if(rouletteType.attr =="ROW_INFO"){
					if(rouletteType.attrval == 1){
						$(".castSmall").text(rouletteType.faceValue);
					}else if(rouletteType.attrval == 2){
						$(".castBig").text(rouletteType.faceValue);
					}else if(rouletteType.attrval == 3){
						$(".castIn").text(rouletteType.faceValue);
					}
				}
			});
		}
	});
	$("#checkNumber").val("");
});

//退出
$('#logout').click(function(){
	window.location.href = path_+"/login/view.do";
});

