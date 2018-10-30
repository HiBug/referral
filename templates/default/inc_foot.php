<div class="warp-footer"> <!-- 页脚 结束 -->
      <div class="marauto">
        <div class="l footer-left">
            <h4>友情链接</h4>
            <div class="footer-link">
                <?php echo($c->get_flink($tpl));?>
            </div>
			<div style="display:none;"><?php if(defined('COUNT_CODE')) echo(COUNT_CODE); ?></div>
            <div class="f-img-link">
            </div>
        </div>
        <p class="line-t-25"></p>
      </div>    
    </div><!-- 页脚 结束  -->
</div>
<style>
.izl-rmenu{position:fixed; left:50%; margin-left:532px; bottom:10px; padding-bottom:73px; background:url(/upload/r_b.png) 0px bottom no-repeat; z-index:999; }
.izl-rmenu .btn{width:72px; height:73px; margin-bottom:1px; cursor:pointer; position:relative;}
.izl-rmenu .btn-qq{background:url(/upload/r_qq.png) 0px 0px no-repeat; background-color:#6da9de;}
.izl-rmenu .btn-qq:hover{background-color:#488bc7;}
.izl-rmenu a.btn-qq,.izl-rmenu a.btn-qq:visited{background:url(/upload/r_qq.png) 0px 0px no-repeat; background-color:#6da9de; text-decoration:none; display:block;}
.izl-rmenu .btn-wx{background:url(/upload/r_wx.png) 0px 0px no-repeat; background-color:#78c340;}
.izl-rmenu .btn-wx:hover{background-color:#58a81c;}
.izl-rmenu .btn-wx .pic{background-color:#ff811b; position:absolute; width:160px; left:-160px; top:0px; line-height:73px; color:#FFF; font-size:18px;text-align:center; display:none;}
.izl-rmenu .btn-top{background:url(/upload/r_top.png) 0px 0px no-repeat; background-color:#666666; display:none;}
.izl-rmenu .btn-top:hover{background-color:#444;}
</style>
<script>
$(function(){
	var tophtml="<div id=\"izl_rmenu\" class=\"izl-rmenu\"><a href=\"http://wpa.qq.com/msgrd?v=3&uin=690403568&site=qq&menu=yes\" class=\"btn btn-qq\"></a><div class=\"btn btn-wx\"><img class=\"pic\" src=\"/upload/weixin.jpg\"/></div><div class=\"btn btn-top\"></div></div>";	$("#top").html(tophtml);
	$("#izl_rmenu").each(function(){
		$(this).find(".btn-wx").mouseenter(function(){
			$(this).find(".pic").fadeIn("fast");
		});
		$(this).find(".btn-wx").mouseleave(function(){
			$(this).find(".pic").fadeOut("fast");
		});
		$(this).find(".btn-phone").mouseenter(function(){
			$(this).find(".phone").fadeIn("fast");
		});
		$(this).find(".btn-phone").mouseleave(function(){
			$(this).find(".phone").fadeOut("fast");
		});
		$(this).find(".btn-top").click(function(){
			$("html, body").animate({
				"scroll-top":0
			},"fast");
		});
	});
	var lastRmenuStatus=false;
	$(window).scroll(function(){//bug
		var _top=$(window).scrollTop();
		if(_top>200){
			$("#izl_rmenu").data("expanded",true);
		}else{
			$("#izl_rmenu").data("expanded",false);
		}
		if($("#izl_rmenu").data("expanded")!=lastRmenuStatus){
			lastRmenuStatus=$("#izl_rmenu").data("expanded");
			if(lastRmenuStatus){
				$("#izl_rmenu .btn-top").slideDown();
			}else{
				$("#izl_rmenu .btn-top").slideUp();
			}
		}
	});
});
</script>
<div id="top">
    <div class="izl-rmenu" id="izl_rmenu">
        <a class="btn btn-qq" href="http://wpa.qq.com/msgrd?v=3&amp;uin=690403568&amp;site=qq&amp;menu=yes">
        </a>
        <div class="btn btn-wx">
            <img src="/upload/weixin.jpg" class="pic" style="display: none;">
        </div>
        <div class="btn btn-top" style="display: block;">
        </div>
    </div>
</div>
<div class="to-top"  style="display:none;"  >
	<a class="to-top-a" title="返回顶部"></a>
</div>

<script type="text/javascript">
	$(function(){
		$(window).scroll(function(){
				var scrolltop=$(this).scrollTop();
				scrolltop > 250 ? $('.to-top').show(): $('.to-top').hide();
				var top = $(window).height();
				$('.to-top').css({'top':scrolltop + top - 246});
			});
		$('.to-top').on('click',function(){
			if(!$('body').is(":animated"))
				$('html,body').animate({scrollTop: 0}, 500);
		});
	});
</script>
</body>
</html>
