show2016();
function show2016() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "wordcount/mostWord.do",
		dataType : "JSON",
		success : function(data) {
			var wc = new Js2WordCloud(document.getElementById('2016wordcloud'))
			wc.setOption({
				tooltip: {
					show: true
				},
				list: [[data.y2016[0].word, data.y2016[0].count],
					[data.y2016[1].word, data.y2016[1].count],
					[data.y2016[2].word, data.y2016[2].count],
					[data.y2016[3].word, data.y2016[3].count],
					[data.y2016[4].word, data.y2016[4].count],
					[data.y2016[5].word, data.y2016[5].count],
					[data.y2016[6].word, data.y2016[6].count],
					[data.y2016[7].word, data.y2016[7].count],
					[data.y2016[8].word, data.y2016[8].count],
					[data.y2016[9].word, data.y2016[9].count]],
				color: '#15a4fa'
			})
		}

	});

}

show2017();
function show2017() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "wordcount/mostWord.do",
		dataType : "JSON",
		success : function(data) {
			var wc = new Js2WordCloud(document.getElementById('2017wordcloud'))
			wc.setOption({
				tooltip: {
					show: true
				},
				list: [[data.y2017[0].word, data.y2017[0].count],
					[data.y2017[1].word, data.y2017[1].count],
					[data.y2017[2].word, data.y2017[2].count],
					[data.y2017[3].word, data.y2017[3].count],
					[data.y2017[4].word, data.y2017[4].count],
					[data.y2017[5].word, data.y2017[5].count],
					[data.y2017[6].word, data.y2017[6].count],
					[data.y2017[7].word, data.y2017[7].count],
					[data.y2017[8].word, data.y2017[8].count],
					[data.y2017[9].word, data.y2017[9].count]],
				color: '#15a4fa'
			})
		}

	});

}

show2018();
function show2018() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "wordcount/mostWord.do",
		dataType : "JSON",
		success : function(data) {
			var wc = new Js2WordCloud(document.getElementById('2018wordcloud'))
			wc.setOption({
				tooltip: {
					show: true
				},
				list: [[data.y2018[0].word, data.y2018[0].count],
					[data.y2018[1].word, data.y2018[1].count],
					[data.y2018[2].word, data.y2018[2].count],
					[data.y2018[3].word, data.y2018[3].count],
					[data.y2018[4].word, data.y2018[4].count],
					[data.y2018[5].word, data.y2018[5].count],
					[data.y2018[6].word, data.y2018[6].count],
					[data.y2018[7].word, data.y2018[7].count],
					[data.y2018[8].word, data.y2018[8].count],
					[data.y2018[9].word, data.y2018[9].count]],
				color: '#15a4fa'
			})
		}

	});

}

show2019();
function show2019() {
	$.ajax({
		type : "POST",
		async : true, // 同步执行 结束请求后再在执行下一个ajax
		url : "wordcount/mostWord.do",
		dataType : "JSON",
		success : function(data) {
			var wc = new Js2WordCloud(document.getElementById('2019wordcloud'))
			wc.setOption({
				tooltip: {
					show: true
				},
				list: [[data.y2019[0].word, data.y2019[0].count],
					[data.y2019[1].word, data.y2019[1].count],
					[data.y2019[2].word, data.y2019[2].count],
					[data.y2019[3].word, data.y2019[3].count],
					[data.y2019[4].word, data.y2019[4].count],
					[data.y2019[5].word, data.y2019[5].count],
					[data.y2019[6].word, data.y2019[6].count],
					[data.y2019[7].word, data.y2019[7].count],
					[data.y2019[8].word, data.y2019[8].count],
					[data.y2019[9].word, data.y2019[9].count]],
				color: '#15a4fa'
			})
		}

	});

}