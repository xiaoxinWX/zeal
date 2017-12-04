	//这一部分是轮播图的jq动画
		var length = $('.imgs li').length;
		for(var i = 1; i < length + 1; i++) {
			var li = "<li></li>";
			$('.num').append(li);
		}
		$('.imgs li').first().show();
		$('.num li').first().addClass('active');
		$('.num li').mouseover(function() {
			$(this).addClass('active').siblings().removeClass('active');
			var index = $(this).index();
			i = index;
			$('.imgs li').eq(index).fadeIn(300).siblings().fadeOut(300);
		})
		var i = 0;
		var t = setInterval(move, 2000);
		
		function move() {
			i++;
			if(i == length) i = 0;
			$('.imgs li').eq(i).fadeIn(300).siblings().fadeOut(300);
			$('.num li').eq(i).addClass('active').siblings().removeClass('active');
		}
		$('.wrap').hover(
			function() {
				clearInterval(t);
			},
			function() {
				t = setInterval(move, 2000);
			}
		);
	//轮播图结束
	//下面3个div的点击事件
	//首页的具体两个值
	var WeiXiu_1="";
	var WeiXiuJuti_2="";
	var WeiXiuJuti_3="";
	var WeiXiuJuti_4="";
	//上门维修的点击事件,选中的情况
	$(".weixiu_sange_1").on("click",function(){
		$(".weixiu_yin").css("display","block");
		$(".weixiu_yin_di2").css("display","none");
		$(".weixiu_yin_di3").css("display","none");
		$(".weixiu_sange_1").css({"color":"green","border":"2px solid green"});	
		$(this).siblings().css({"color":"#474747","border":"2px solid white"});	
		$(".weixiu_dian").css("margin-top","400px");
		WeiXiu_1=$(this).find("span").html();
	})
	
	//寄送维修的点击事件,选中的情况
	$(".weixiu_sange_2").on("click",function(){
		$(".weixiu_yin").css("display","none");
		$(".weixiu_yin_di2").css("display","block");
		$(".weixiu_yin_di3").css("display","none");		
		$(".weixiu_sange_2").css({"color":"green","border":"2px solid green"});
		$(this).siblings().css({"color":"#474747","border":"2px solid white"});
		$(".weixiu_dian").css("margin-top","600px");
		WeiXiu_1=$(this).find("span").html();
	})
	//到店维修的点击事件,选中的情况
	$(".weixiu_sange_3").on("click",function(){
		$(".weixiu_yin").css("display","none");		
		$(".weixiu_yin_di2").css("display","none");
		$(".weixiu_yin_di3").css("display","block");
		$(".weixiu_sange_3").css({"color":"green","border":"2px solid green"});
		$(this).siblings().css({"color":"#474747","border":"2px solid white"});
		$(".weixiu_dian").css("margin-top","500px");
		WeiXiu_1=$(this).find("span").html();
	})

	//首页点击了维修的类型后出现的几个li标签选中的样式
	$(".weixiu_timePlace_item").on("click",function(){
		$(this).css({"border":"1px solid green"});
		$(this).children().css("color","green");
		$(this).siblings().css({"border":"1px solid #474747"});
		$(this).siblings().find("span").css("color","#474747");		
		$(this).siblings().find("p").css("color","#9B9B9B");
		$(this).parent().siblings(".weixiu_index_serviceBtn").css({"color": "#F9F9FA","background": "#0FAE6F"})
		WeiXiuJuti_2=$(this).children(".weixiu_item_name").html();
		WeiXiuJuti_3=$(this).children(".weixiu_timePlace_item_1").html();
		WeiXiuJuti_4=$(this).children(".weixiu_timePlace_item_2").html();
		console.log(WeiXiu_1,WeiXiuJuti_2,WeiXiuJuti_3,WeiXiuJuti_4);
	})
	//首页 第一个确认维修的点击事件
	$(".weixiu_index_1").on("click",function(){
		$(".weixiu_active").css("display","none");
		$(".weixiu_er_tou").css("display","block");
		$(".weixiu_er_left_title").css("display","block");
		$(".weixiu_er_mobile").css("display","block");
		$(".weixiu_dian").css("display","block");
		$(".weixiu_er_type span").html(WeiXiu_1);
		$(".weixiu_er_title").html(WeiXiuJuti_2);
		$(".weixiu_er_address").html(WeiXiuJuti_3);
		$(".weixiu_er_tel").html(WeiXiuJuti_4);	
		$(".weixiu_dian").css("top","90%");
	})	
	//首页 第二个确认维修的点击事件
	$(".weixiu_index_2").on("click",function(){
		$(".weixiu_active").css("display","none");
		$(".weixiu_er_tou_img").addClass("weixiu_er_tou_imgactive");
		$(".weixiu_er_tou").css("display","block");
		$(".weixiu_er_left_title").css("display","block");
		$(".weixiu_er_mobile").css("display","block");
		$(".weixiu_dian").css("display","block");
		$(".weixiu_er_type span").html(WeiXiu_1);
		$(".weixiu_er_title").html(WeiXiuJuti_2);
		$(".weixiu_er_address").html(WeiXiuJuti_3);
		$(".weixiu_er_tel").html(WeiXiuJuti_4);
		$(".weixiu_dian").css("top","90%");
	})	
	//首页 第三个确认维修的点击事件
	$(".weixiu_index_3").on("click",function(){
		$(".weixiu_active").css("display","none");
		$(".weixiu_er_tou").css("display","block");
		$(".weixiu_er_mobile").css("display","block");
		$(".weixiu_er_left_title").css("display","block");
		$(".weixiu_dian").css("display","block");
		$(".weixiu_er_type span").html(WeiXiu_1);
		$(".weixiu_er_title").html(WeiXiuJuti_2);
		$(".weixiu_er_address").html(WeiXiuJuti_3);
		$(".weixiu_er_tel").html(WeiXiuJuti_4);
		$(".weixiu_dian").css("top","90%");
		
	})	
	//第二页 头部的修改点击返回之前的状态
	$(".weixiu_er_type a").on("click",function(){
		$(".weixiu_active").css("display","block");
		$(".weixiu_er_tou").css("display","none");
		$(".weixiu_si").css("display","none");
		$(".weixiu_san_box").css("display","none");
//		$(".weixiu_er_chosen2").css("display","none")
		
	})
	//确认维修的后发生的让确认维修到屏幕最下端的操作

	//所有页 最下面的dd标签缓慢出现的效果		
	$("dt").click(function(){	
		$(this).parent().find(".weixiu_3").slideToggle("fast",function(){
			if($(this).parent().find(".weixiu_jia").text()=="+"){
				$(this).parent().find(".weixiu_jia").text("-");
			}else{
				$(this).parent().find(".weixiu_jia").text("+");
			}
			
		});		
	});
	//第二页 ul下手机的li标签操作手机的类型
	$(".weixiu_er_mobile li").on("click",function(){
		$(".weixiu_er_chosen").css("display","block");
		$(".weixiu_er_left_title label").html("选择故障");
		$(".weixiu_er_chosen span").html($(this).html());
		$(".weixiu_er_guzhang").css("display","block");
		$(this).parent().css("display","none");
		$(".weixiu_dian").css("top","75%");
		$(".weixiu_er_device").css("display","block");
		$(".weixiu_er_device span").html($(this).html());
		$(".weixiu_er_de1").css("display","block");
	})
	//第二页 选择了机型后，点击右边的修改事件
	$(".weixiu_er_de1").on("click",function(){
		$(".weixiu_er_mobile").css("display","block");
		$(".weixiu_er_mobile .ul_hover").css("display","block");
		$(".weixiu_dian").css("top","95%");
		$(".weixiu_er_guzhang").css("display","none");
		$(this).css("display","none");
		$(".weixiu_er_left_title label").html("选择维修的机型：");
	})
	//第三页 具体的维修样式点击事件
	$(".weixiu_er_guzhang li").on("click",function(){
		$(".weixiu_er_chosen2").css("display","block");		
		$(".weixiu_er_chosen2 span").html($(this).children("p").html());
		$(".weixiu_er_left_title").css("display","none");
		$(".weixiu_san_box").css("display","block");
		$(this).parent().css("display","none");
		$(".weixiu_dian").css("top","92%");
	})
	// 第三页 具体内容的点击事件
	var xianSpan="";
	var houSpan="";
	$(".problem_li").on("click",function(){
		$(this).toggleClass("weixiu_san_active");
		$(this).find(".weixiu_san_img").toggleClass("weixiu_san_active_img");		
		$(this).parent().siblings(".weixiu_index_serviceBtn").css({"color": "#F9F9FA","background": "#0FAE6F"});
		xianSpan+=$(this).find(".problem_li_span_1").html()+",";
		houSpan+=$(this).find(".problem_li_span_2").html()+",";
		//第三页 最下面的确认事件
		$(".weixiu_index_serviceBtn").on("click",function(){
			$(".weixiu_san_box").css("display","none");
			$(".weixiu_si").css("display","block");
			$(".weixiu_er_chosen2").find("span").html("屏幕故障("+xianSpan+")"+houSpan);
			$(".weixiu_dian").css("top","44%");
		})			
	})
	//第三页 右边的编辑点击事件
	$(".weixiu_er_chosen2 a").on("click",function(){
		$(".weixiu_san_box").css("display","none");
		$(".weixiu_dian").css("top","95%");
		$(".weixiu_er_guzhang .ul_hover").css("display","block");
		$(".weixiu_si").css("display","none");
//		$(this).css("display","none");	
		
	})
	//第四个页面的按钮点击事件
	$(".weixiu_index_serviceBtn_1").on("click",function(){
		alert("跳转到登录界面");
		$(".weixiu_qi").css("display","block");
		$(".weixiu_si_wrap").css("display","none");
		$(".weixiu_er_chosen2").css("display","none");
		$(".weixiu_dian").css("top","44%");
	})
	//状态点击事件
	//接受点击后获取到的内容
	var ZhuAng="";
	$(".sh_statusContent li").on("click",function(){
		$(this).css({"color": "#0FAE6F","border": "1px solid #0FAE6F"});
		ZhuAng = $(this).html();
		$(this).siblings().css({"color": "#474747","border": "1px solid #474747"});
		$(this).parent().css({"display":"none"});
		$(this).parent().siblings().css("display","block");
		$(".weixiu_qi_span1").removeClass("weixiu_qi_check");
		$(".weixiu_qi_span2").addClass("weixiu_qi_check");		
	})
	//状态和历史栏相互切换
	$(".weixiu_qi_span2").on("click",function(){
		$(".weixiu_qi_span1").removeClass("weixiu_qi_check");
		$(".weixiu_qi_span2").addClass("weixiu_qi_check");
		$(".sh_statusContent").css("display","none");
		$(".sh_historyContent").css("display","block");
		
	})
	//状态和历史栏相互切换
	$(".weixiu_qi_span1").on("click",function(){
		$(".weixiu_qi_span2").removeClass("weixiu_qi_check");
		$(".weixiu_qi_span1").addClass("weixiu_qi_check");
		$(".sh_statusContent").css("display","block");
		$(".sh_historyContent").css("display","none");
	})
	
	$(".sh_historyContent li").on("click",function(){
		$(this).css({"color": "#0FAE6F","border": "1px solid #0FAE6F"});
		$(this).siblings().css({"color": "#474747","border": "1px solid #474747"});
		$(this).parents(".weixiu_rep_statusHistory").css({"display":"none"});
		$(".weixiu_rep_falInfo span").css("color","#474747");
		$(".weixiu_er_juti").html("<span>"+ZhuAng+"</span><span>"+$(this).html()+"</span>");
		$(".weixiu_er_juti").css("display","block");
		$('.weixiu_er_device a').html("编辑");
		$(".weixiu_er_device a").css("display","block");
		$(".weixiu_text_moren").addClass("weixiu_text_active");
		$(".weixiu_rep_contacrBtn").css("display","block");
		$(".weixiu_rep_falInfo").css("display","block");
		$(".weixiu_text_moren").css("display","block");
	})
	//7P右边的点击事件回到编辑的页面
	$(".weixiu_er_device a").on("click",function(){
		$(".weixiu_rep_statusHistory").css("display","block");
		$(".weixiu_rep_falInfo").css("display","none");
		$(this).css("display","none");
	})
	//屏幕故障右边的编辑点击事件
	$(".weixiu_rep_fal_a").on("click",function(){
		$(".weixiu_rep_falInfo").css("display","block");
		$(".weixiu_text_moren").css("display","block");
		$(this).css("display","none");
		$(".weixiu_rep_contacrBtn").css("display","block");
	})
	//textarea内容获取
	var TextA="";
	$(".weixiu_rep_contacrBtn").on("click",function(){
		TextA = $(".weixiu_text_moren").val();
		$(".weixiu_rep_falInfo_span").html(TextA);
		$(".weixiu_rep_falInfo_span").css("display","block");
		$(".weixiu_rep_contacrBtn").css("display","none");
		$(".weixiu_text_moren").css("display","none");
		$(".weixiu_rep_falInfo a").css("display","block");
		$(".weixiu_rep_falInfo span").css("color","#9B9B9B");
		$(".contact_title span").css("color","#474747");
		$(".weixiu_rep_contactBtn").css("display","block");
	})
	//第五个页面 第三个框框的点击事件
	$(".weixiu_rep_contactBtn").on("click",function(){
		$(".contact_title a").css("display","block");
		$(".weixiu_contact span").css("color","#9B9B9B");
		$(this).css("display","none");		
		$(".weixiu_rep_warning").css("color","#474747");
	})
	//第五个页面 第三个框框的编辑的跳转到购物车界面事件
	$(".contact_title a").on("click",function(){
		alert("跳转到登录注册页面");
		
	})
	//阅读注意事项的右边点击事件
	$(".weixiu_rep_warning").on("click",function(){
		//跳转到阅读条款的界面
		$(".weixiu_qi").css("display","none");
		$(".weixiu_rep_warningDetail").css("display","block");
		$(".weixiu_er_device").css("display","none");
		$(".weixiu_er_tou").css("display","none");
		//同时要改背景的图片
		$(".weixiu_dian").css("display","none");
	})
	//阅读的注意事项的具体页面的点击事件
	$(".weixiu_rep_warningyue").on("click",function(){
		$(".weixiu_qi").css("display","block");
		$(".weixiu_rep_warningDetail").css("display","none");
		$(".weixiu_er_device").css("display","block");
		$(".weixiu_er_tou").css("display","block");
		$(".weixiu_rep_warning_span").addClass("weixiu_rep_warning_spanActive");
		$(".weixiu_re_confirmBtn").addClass("weixiu_rep_anniu");
		$(".weixiu_re_confirmBtn").html("提交维修信息");
	})
	//提交维修信息后的具体的东西
	$(".weixiu_re_confirmBtn").on("click",function(){
		//如果联系方式的那一栏没有地址就要弹出提示框
		console.log($(".weixiu_contact_juti").html());
		if($(".weixiu_contact_juti").html()==""){
			alert("请填写联系地址");
		}else{
			alert("跳转到购物车界面");
		}
	})