<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title><?php if($con['seo_title']==''){echo $con['app_title'].'手机兼职赚钱，不花一分钱,一部手机即可兼职赚钱，月入过千 - '.SITE_NAME;}
else{echo $con['seo_title'].'-'.SITE_NAME;}?></title>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/style/css/baidu.css"  type="text/css" />
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/comm.js"></script>
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/TouchSlide.1.1.js"></script>
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/jquery-1.7.2.min.js"></script>
</head>
<body>
	<div class="box wrap">
		<!-- 头部内容 开始 -->
		<?php require_once ('inc_head.php');?>
		<!-- 头部内容 结束 -->
</nav>
	</header>    <div class="part"></div>
<div class="box column-wrap">
  <div class="app-top">
				<a class="" onclick="window.open('<?php echo(SITE_PATH.'download.php?id='.$con['history'][0]['appcms_history_id']);?>');">
<div class="app-icon"><img src="<?php echo $con['app_logo'];?>" border="0"></div>
				</a>
				<div class="app-info">
					<span class="app-name"><a href="javascript:;" onclick="window.open('<?php echo(SITE_PATH.'download.php?id='.$con['history'][0]['appcms_history_id']);?>');" title="<?php echo $con['app_title'];?>"><?php echo $con['app_title'];?></a></span>
					<span class="app-type">大小：<?php echo $con['app_size'];?> &nbsp;&nbsp; 版本：<?php echo $con['app_version'];?></span>
<div class="l level"><span class="<?php echo "l".ceil($con['app_recomment']/2); ?>"></span></div>
			</div>
				<div class="line-10"></div>
					<a class="box app-download"  href="javascript:void(0);" onclick="window.open('<?php echo(SITE_PATH.'download.php?id='.$con['history'][0]['appcms_history_id']);?>');">立&nbsp;即&nbsp;下&nbsp;载</a>

		</div>
	</div>


</div>		
<div class="part"></div>
<div class="box column-wrap">
	  <div class="title"><h2>应用截图</h2></div>
				<div class="m-slide-box">
			<ul class="pic-slide">
<?php foreach($con['resource'] as $v):?>
								<li><img src="<?php echo $v['resource_url'];?>">
<?php endforeach;?>
</li>
							</ul>
		</div>
		</div>
    <div class="box column-wrap">
		<div class="title">
		  <h2>应用介绍</h2>
		</div>
		<div class="app-intro">
			<div class="app-infos" id="app-infos">
						<?php echo $con['app_desc'];?>
  		    	</div>                  
 <div class="text-right collapse">
                    <a class="" id="collapse">＋展开全部</a>
                </div>
        </div>
    </div>

				

		
<script>
    var height= $(window).height();
    $('#search').click(function(){
        $('#dialog').removeClass('hidden');
        $('#dialog').height(height);
    });
    $('#close').click(function(){
        $('#dialog').addClass('hidden');
    });
</script>
<script type="text/javascript">
    //banner
    var swiper = new Swiper('.swiper-container', {
        loop:true,
        pagination: '.swiper-pagination',
        paginationClickable: true
    });
</script>
<script>
    $('#collapse').click(function(){
        if($(this).text()=='＋展开全部'){
            $('#content').css('height', 'auto');
            $(this).html('－收起部分');
        }else if($(this).text()=='－收起部分'){
            $('#content').height(70);
            $(this).html('＋展开全部');
        }
    });
</script>
					</div>
</div>
		
		<div class="box column-wrap">
			<div class="title"><h2>精品推荐</h2></div>
			<div class="m-slide-box">
				<ul class="app-slide">
      <?php $a = $c->get_recommend(array('area_id'=>2,'pagesize'=>8,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3  )'));//print_r($a['list'][0]);?>
     <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
                      <li> 
              <a href="<?php echo $v['surl']?>">
<img src="<?php echo $v['app_logo']; ?>" />
<figcaption><?php echo $v['app_title']; ?></<figcaption>
</a>
<a href="<?php echo $v['surl'];?>" class="down">下载</a>
</li>
<?php } }?>
			</div>
		</div>
		<div id="tab" class="tabBox tabBox-3">
			<div class="hd">
				<ul>
					<li class="on">苹果赚钱</li>
					<li class="">安卓赚钱</li>
					<li class="">站长推荐</li>
			<li class="">上升最快</li>
				</ul>
			</div>
			<div class="tempWrap" style="overflow:hidden; position:relative;"><div class="bd" id="tab-bd" style="width: 1080px; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition: 0ms; -webkit-transition: 0ms; -webkit-transform: translate(0px, 0px) translateZ(0px);">
				<div class="con" style="display: table-cell; vertical-align: top; width: 360px;">
					<ul class="app-array">
      <?php $a = $c->get_recommend(array('area_id'=>2,'pagesize'=>8,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3  )'));//print_r($a['list'][0]);?>
     <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
                      <li> 
              <a href="<?php echo $v['surl']?>"class="app-btn">
<img src="<?php echo $v['app_logo']; ?>" />
<figcaption><?php echo $v['app_title']; ?></figcaption></a></li>
<?php } }?>
				<div class="line-5"></div>
				</div>
				<div class="con" style="display: table-cell; vertical-align: top; width: 360px;">
					<ul class="app-array">
      <?php $a = $c->get_recommend(array('area_id'=>3,'pagesize'=>8,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3  )'));//print_r($a['list'][0]);?>
     <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
                      <li> 
              <a href="<?php echo $v['surl']?>"class="app-btn">
<img src="<?php echo $v['app_logo']; ?>" />
<figcaption><?php echo $v['app_title']; ?></figcaption></a></li>
<?php } }?>
				</div>
				<div class="con" style="display: table-cell; vertical-align: top; width: 360px;">
					<ul class="app-array">
      <?php $a = $c->get_recommend(array('area_id'=>4,'pagesize'=>8,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3  )'));//print_r($a['list'][0]);?>
     <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
                      <li> 
              <a href="<?php echo $v['surl']?>"class="app-btn">
<img src="<?php echo $v['app_logo']; ?>" />
<figcaption><?php echo $v['app_title']; ?></figcaption></a></li>
<?php } }?>
				</div>
							<div class="con" style="display: table-cell; vertical-align: top; width: 360px;">
					<ul class="app-array">
      <?php $a = $c->get_recommend(array('area_id'=>6,'pagesize'=>8,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3  )'));//print_r($a['list'][0]);?>
     <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
                      <li> 
              <a href="<?php echo $v['surl']?>"class="app-btn">
<img src="<?php echo $v['app_logo']; ?>" />
<figcaption><?php echo $v['app_title']; ?></figcaption></a></li>
<?php } }?>
				</div>
			</div></div>
		</div>
		<script type="text/javascript">
			TouchSlide( { slideCell:"#tab",
				/*endFun:function(i){ //高度自适应
					var bd = document.getElementById("tab-bd");
					bd.parentNode.style.height = bd.children[i].children[0].offsetHeight+"px";
					if(i>0)bd.parentNode.style.transition="200ms";//添加动画效果
				}*/
			} );
		</script>
</div>
		<!-- 底部内容 开始 -->
			<?php require_once ('inc_foot.php');?>
		<!-- 底部内容 结束 -->
	</div>
</div>

</body>
</html>
