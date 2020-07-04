
ShowYear();
function ShowYear() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/year.do",
		dataType : "JSON",
		success : function(data) {
			$("#year").html(data);
		}

	});
}

ShowMonth();
function ShowMonth() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/month.do",
		dataType : "JSON",
		success : function(data) {
			$("#month").html(data);
		}
	});
}
showTotal();
function showTotal() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/total.do",
		dataType : "JSON",
		success : function(data) {
			$("#total").html(data);
		}
	});
}

showToday();
function showToday() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/today.do",
		dataType : "JSON",
		success : function(data) {
			$("#today").html(data);
		}
	});
}

showMonday();
function showMonday() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/monday.do",
		dataType : "JSON",
		success : function(data) {
			$("#monday").html(data);
		}
	});
}

showTuesday();
function showTuesday() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/tuesday.do",
		dataType : "JSON",
		success : function(data) {
			$("#tuesday").html(data);
		}
	});
}

showWednesday();
function showWednesday() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/wednesday.do",
		dataType : "JSON",
		success : function(data) {
			$("#wednesday").html(data);
		}
	});
}
showThursday();
function showThursday() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/thursday.do",
		dataType : "JSON",
		success : function(data) {
			$("#thursday").html(data);
		}
	});
}
showFriday();
function showFriday() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/friday.do",
		dataType : "JSON",
		success : function(data) {
			$("#friday").html(data);
		}
	});
}
showSaturday();
function showSaturday() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/saturday.do",
		dataType : "JSON",
		success : function(data) {
			$("#saturday").html(data);
		}
	});
}
showSunday();
function showSunday() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/sunday.do",
		dataType : "JSON",
		success : function(data) {
			$("#sunday").html(data);
		}
	});
}


showSecond();
function showSecond() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/length.do",
		dataType : "JSON",
		success : function(data) {

			require([ 'echarts', 'echarts/chart/dark', 'echarts/chart/pie', // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
					'echarts/chart/bar', 'echarts/chart/line' ],
				function(ec,theme) {
					var myChart = ec.init(document.getElementById('SecondMiddleMap'),theme);
					var option = {
						title : {
							text: '视频长度分布饼状图',
							subtext: '2016年2月-2020年4月',
							x:'center'
						},
						tooltip : {
							trigger: 'item',
							formatter: '{a} <br/>{b} : {c} ({d}%)'
						},
						legend: {
							orient: 'vertical',
							left: 'left',
							data: []
						},
						series : [
							{
								name: '饼状图',
								type: 'pie',    // 设置图表类型为饼图
								radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
								data:[          // 数据数组，name 为数据项名称，value 为数据项值
									{value:data.ZeroToOne, name:'0-1分钟'},
									{value:data.OneToTwo, name:'1-2分钟'},
									{value:data.TwotoThree, name:'2-3分钟'},
									{value:data.ThreetoFour, name:'3-4分钟'},
									{value:data.FourToFive, name:'4-5分钟'},
									{value:data.FiveTo, name:'5分钟以上'}
								]
							}
						]
					};
					myChart.setOption(option);
				});

		}
	});


}

showzx();
function showzx() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "updatecount/week.do",
		dataType : "JSON",
		success : function(data) {
			require([ 'echarts', 'echarts/chart/dark', 'echarts/chart/pie', // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
			'echarts/chart/bar', 'echarts/chart/line' ], function(ec, theme) {
				var myChart = ec.init(document.getElementById('weekzx'),
						theme);
				var option = {
					title : {
						text: '周一至周日上传视频量折线图',
						subtext: '作者更喜欢在一周哪一天上传视频',
						x:'center'
					},
					xAxis: {
						type: 'category',
						data: ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日']
					},
					yAxis: {
						name: '单位（个）',
						type: 'value'
					},
					series: [{
						data: [data.Monday, data.Tuesday, data.Wednesday, data.Thursday, data.Friday, data.Saturday, data.Sunday],
						type: 'line'
					}]
				};

				myChart.setOption(option);
			});
		}
	});
}

