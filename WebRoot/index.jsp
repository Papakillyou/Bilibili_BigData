<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Analsyse</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="static/css/bmap.css">
<style>
* {
	margin: 0;
	padding: 0;
	font-family: "Microsoft YaHei", '微软雅黑';
}

p {
	margin: 0 !important;
}

.f26 {
	font-weight: bold;
	font-size: 26px;
}

.f14 {
	font-size: 14px;
}


#wrapper {
	position: relative;
	margin: 0px auto;
	width: 100%;
	background-color: #353a48
}

#banner {
	position: relative;
	width: 100%;
	overflow: hidden;
}

.imgList {
	position: relative;
	width: 600%;
	z-index: 10;
	overflow: hidden;
}

.imgList .slider_div {
	float: left;
	display: inline-block;
	width: 16.66%;
}

#prev,#next {
	position: absolute;
	top: 50%;
	margin-top: -28px;
	z-index: 20;
	cursor: pointer;
	opacity: 0.8;
	filter: alpha(opacity =     80);
}

#prev {
	left: 10px;
}

#next {
	right: 10px;
}

#prev:hover,#next:hover {
	opacity: 0.8;
	filter: alpha(opacity =     80);
}

.indexList {
	position: absolute;
	right: 10px;
	top: 5px;
	z-index: 30;
}

.indexList li {
	float: left;
	margin-right: 5px;
	padding: 2px 4px;
	border: 2px solid black;
	background: grey;
	cursor: pointer;
}

.indexList .indexOn {
	background: red;
	font-weight: bold;
	color: white;
}
</style>
	<script  src="js/js2wordcloud.js"></script>
</head>
<body>
	<div id="wrapper">
		<!-- 最外层部分 -->
		<div id="banner">
			<!-- 轮播部分 -->
			<div class="imgList">
				<!-- 图片部分 -->
				
				<div class="slider_div">
					<div style="width: 100%;height: 100%;background-color: #121c35">
						<p
							style="color: white;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;background-color: #0d5ab1">哔哩哔哩弹幕视频网大数据服务平台</p>
						<div style="width:100%;height:70%; ">
							<div
								style="float:left; width:19.7%;height: 100%;margin-right:1px;">
								<div
									style="width: 100%;height: 25%;margin-bottom:1px;background-color: #222b30;">
									<br />
									<p style="color: white;text-align: center;font-size: 25px">今日上传视频量</p>
									<p id="today" style="color: white;text-align: center;font-size: 30px"></p>
									<p class="span_div" style="color: white;text-align: center;">
									</p>
								</div>
								<div
									style="width: 100%;height: 25%;margin-bottom:1px ;background-color: #222b30;">
									<br />
									<p style="color: white;text-align: center;font-size: 25px">当月上传视频量</p>
									<p id="month" style="color: white;text-align: center;font-size: 30px"></p>
								</div>
								<div
									style="width: 100%;height: 25%;background-color: #222b30; ">
									<br />
									<p style="color: white;text-align: center;font-size: 25px">当年上传视频量</p>
									<p id="year" style="color: white;text-align: center;font-size: 30px"></p>
								</div>
								<div
										style="width: 100%;height: 25%;margin-bottom:1px ;background-color: #222b30;">
									<br />
									<p style="color: white;text-align: center;font-size: 25px">总上传视频量</p>
									<p id="total" style="color: white;text-align: center;font-size: 30px"></p>
								</div>
							</div>

							<div style="float:left; width:49%;height: 100%;margin-right: 1px">
								<div id="SecondMiddleMap" style="width:100%;height: 100%; "></div>
							</div>

							<div style="float:left; width:31%;height: 100%;background-color:#222b30;">
								<div style="width: 100%;height: 40%">
									<%
										Date d = new Date();
										SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
										String now = df.format(d);
									%>

									<div
											style="margin-top:82px;text-align: center;width: 100%;height: 100%;background-color: #222b30; ">
										<br />
										<p style="margin-top:82px;color: white;text-align: center;font-size: 40px"><%=now %></p>
									</div>


								</div>
								<div style="width: 100%;height: 50%">
									<div id="weekzx" style="height: 85%;width: 100%"></div>
								</div>
							</div>
						</div>
						<div style="width: 100%;height:30%;">
							<div style="float:left; width: 14.3%;height: 100%">
								<br />
								<p style="color: white;text-align: center;font-size: 25px">周一上传视频量</p>
								<p id="monday" style="color: white;text-align: center;font-size: 30px"></p>
								<p class="span_div" style="color: white;text-align: center;">
								</p>

							</div>
							<div style="float:left; width: 14.3%;height: 100%">
								<br />
								<p style="color: white;text-align: center;font-size: 25px">周二上传视频量</p>
								<p id="tuesday" style="color: white;text-align: center;font-size: 30px"></p>
								<p class="span_div" style="color: white;text-align: center;">
								</p>

							</div>
							<div style="float:left; width: 14.3%;height: 100%">
								<br />
								<p style="color: white;text-align: center;font-size: 25px">周三上传视频量</p>
								<p id="wednesday" style="color: white;text-align: center;font-size: 30px"></p>
								<p class="span_div" style="color: white;text-align: center;">
								</p>

							</div>
							<div style="float:left; width: 14.3%;height: 100%">
								<br />
								<p style="color: white;text-align: center;font-size: 25px">周四上传视频量</p>
								<p id="thursday" style="color: white;text-align: center;font-size: 30px"></p>
								<p class="span_div" style="color: white;text-align: center;">
								</p>

							</div>
							<div style="float:left; width: 14.3%;height: 100%">
								<br />
								<p style="color: white;text-align: center;font-size: 25px">周五上传视频量</p>
								<p id="friday" style="color: white;text-align: center;font-size: 30px"></p>
								<p class="span_div" style="color: white;text-align: center;">
								</p>

							</div>
							<div style="float:left; width: 14.3%;height: 100%">
								<br />
								<p style="color: white;text-align: center;font-size: 25px">周六上传视频量</p>
								<p id="saturday" style="color: white;text-align: center;font-size: 30px"></p>
								<p class="span_div" style="color: white;text-align: center;">
								</p>

							</div>
							<div style="float:left; width: 14.2%;height: 100%">
								<br />
								<p style="color: white;text-align: center;font-size: 25px">周日上传视频量</p>
								<p id="sunday" style="color: white;text-align: center;font-size: 30px"></p>
								<p class="span_div" style="color: white;text-align: center;">
								</p>

							</div>


						</div>
					</div>
				</div>
				
				<div class="slider_div">
					<div style="width: 100%;height: 100%;background-color: #121c35">
						<p style="color: white;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;">TOP10</p>
						<div style="height:100%;width:100%; background-color:#222b30">
							<div style="height:10%;width:100%;">
								<div style="width: 100%;height: 100%;"class="row" style="margin-top:  30px">
									<div style="float:left; width: 30%;height: 100%"class="col-lg-12 text-center">
										<h3 class="section-subheading text-muted">粉丝数排名前十位UP主</h3>
									</div>
									<div style="float:left; width: 70%;height: 100%"class="col-lg-12 text-center">
										<h3 class="section-subheading text-muted">播放量排名前十个鬼畜视频</h3>
									</div>
								</div>
							</div>
							<%--<div class="container">--%>
							<div style="height:90%;width:100%;">
								<div style="width: 100%;height: 100%;background-color:#bce8f1">
									<div style="float:left; width: 5%;height: 100%"></div>
									<div style="float:left; width: 20%;height: 100%;background-color: #ffdd8a">
										<table class="table table-bordered" id='top10UpbyFans'>
											<tr>
												<th>up主名字</th>
												<th>粉丝个数</th>
											</tr>
										</table>
									</div>
									<div style="float:left; width: 10%;height: 100%"></div>
									<div style="float:left; width: 60%;height: 100%;background-color: #cfff92">
										<table class="table table-bordered" id='top10watches'>
											<tr>
												<th>视频名称</th>
												<th>播放次数</th>
												<th>视频链接</th>
											</tr>-
										</table>
									</div>
									<div style="float:left; width: 5%;height: 100%"></div>
								</div>
							</div>

							<%--</div>--%>
						</div>
					</div>
				</div>





				<div class="slider_div">
					<div style="width: 100%;height: 100%;background-color: #121c35">
						<p
							style="color: white;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;">
							年度鬼畜区热度关键词</p>
						<div style="height:100%;width:100%; background-color:#222b30">
							<div style="width:100%;height:10%; ">
								<div style="float:left; width: 50%;height: 100%">
									<p style="color: red;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;">
										2016年度鬼畜热词</p>
								</div>
								<div style="float:left; width: 50%;height: 100%">
									<p style="color: red;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;">
										2017年度鬼畜热词</p>
								</div>
							</div>
							<div style="width:100%;height:40%; ">
								<div style="float:left; width: 50%;height: 100%">
									<div id="2016wordcloud" style="height: 100%;width: 100%">
									</div>
								</div>
								<div style="float:left; width: 50%;height: 100%">
									<div id="2017wordcloud" style="height: 100%;width: 100%"></div>
								</div>
							</div>
							<div style="width:100%;height:10%; ">
								<div style="float:left; width: 50%;height: 100%">
									<p style="color: red;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;">
										2018年度鬼畜热词</p>
								</div>
								<div style="float:left; width: 50%;height: 100%">
									<p style="color: red;text-align: center;font-size: 28px; font-weight: bold;line-height: 46px;height: 46px;margin: 0;padding: 0;">
										2019年度鬼畜热词</p>
								</div>
							</div>
							<div style="width:100%;height:40%; ">
								<div style="float:left; width: 50%;height: 100%">
									<div id="2018wordcloud" style="height: 100%;width: 100%"></div>
								</div>
								<div style="float:left; width: 50%;height: 100%">
									<div id="2019wordcloud" style="height: 100%;width: 100%"></div>
								</div>
							</div>



						</div>
					</div>
				</div>



			</div>
		</div>
		<img src="./images/left.png" width="64" height="64" id="prev"> <img
			src="./images/right.png" width="64" height="64" id="next">

	</div>


	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/js/jquery-2.2.1.min.js"></script>
	<!-- 弹层插件 -->
	<script src="js/layer/layer.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/bootstrap.min.js"></script>
	<!-- echarts -->
	<script src="js/echarts.js"></script>

	<script type="text/javascript">
		require.config({
			paths : {
				'echarts' : 'js'
			}
		});

		var curIndex = 0, //当前index
		imgLen = $(".imgList .slider_div").length; //图片总数
		// 定时器自动变换2.5秒每次
		var autoChange = setInterval(function() {
			if (curIndex < imgLen - 1) {
				curIndex++;
			} else {
				curIndex = 0;
			}
			//调用变换处理函数
			/* changeTo(curIndex);  */
		}, 6000);
		//左箭头滑入滑出事件处理
		$("#prev").hover(function() {
			//滑入清除定时器
			clearInterval(autoChange);
		}, function() {
			//滑出则重置定时器
			//autoChangeAgain();
		});
		//左箭头点击处理
		$("#prev").click(function() {
			//根据curIndex进行上一个图片处理
			curIndex = (curIndex > 0) ? (--curIndex) : (imgLen - 1);
			changeTo(curIndex);
		});
		//右箭头滑入滑出事件处理
		$("#next").hover(function() {
			//滑入清除定时器
			clearInterval(autoChange);
		}, function() {
			//滑出则重置定时器
			/* autoChangeAgain(); */
		});
		//右箭头点击处理
		$("#next").click(function() {
			curIndex = (curIndex < imgLen - 1) ? (++curIndex) : 0;
			changeTo(curIndex);
		});
		//对右下角按钮index进行事件绑定处理等
		$(".indexList").find("li").each(function(item) {
			$(this).hover(function() {
				clearInterval(autoChange);
				changeTo(item);
				curIndex = item;
			}, function() {
				/* autoChangeAgain(); */
			});
		});
		//清除定时器时候的重置定时器--封装
		/*  function autoChangeAgain(){ 
		     autoChange = setInterval(function(){ 
		      if(curIndex < imgLen-1){ 
		        curIndex ++;
		      }else{ 
		        curIndex = 0;
		      }
		   	//调用变换处理函数
		     	changeTo(curIndex);
		     	},5000);
		 } */
		function changeTo(num) {
			var goLeft = num;
			$(".imgList").animate({
				left : "-" + goLeft * 100 + "%"
			}, 500);
			$(".indexList").find("li").removeClass("indexOn").eq(num).addClass(
					"indexOn");
		}
	</script>
	<script type="text/javascript"
		src="http://api.map.baidu.com/api?v=2.0&ak=whWrhHB8Q2orXafl4B9sb1fwuBsaqV8Q">
		//v2.0版本的引用方式：src="http://api.map.baidu.com/api?v=2.0&ak=您的密钥"
		//v1.4版本及以前版本的引用方式：src="http://api.map.baidu.com/api?v=1.4&key=您的密钥&callback=initialize"
	</script>
	<script type="text/javascript" src="js/jslib/one.js"></script>
	<script type="text/javascript" src="js/jslib/two.js"></script>
	<script type="text/javascript" src="js/jslib/three.js"></script>
</body>
</html>
