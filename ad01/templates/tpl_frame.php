<?php require_once(dirname(__FILE__).'/inc_header.php');?>  
<script type="text/javascript">
 function setbug(appid,url,host){
    $.getJSON("http://data.appcms.cc/apperror.php?&jsoncallback=?",{"appid":appid,"url":url,"host":host},function(json){
    try{        
        alert(json.msg);
    }catch(e){alert(e.message);}
    });
 }
</script>
<script language="javascript" type="text/javascript" src="templates/css/js/frame.js" ></script>
<script language="javascript" type="text/javascript">
var data_center_url='<?php echo(DATA_CENTER_URL); ?>';//数据中心
</script>
<?php require_once(dirname(__FILE__).'/inc_top.php');?>
<?php require_once(dirname(__FILE__)."/inc_menu.php");?>
<script type="text/javascript">
$(function(){
       function panelW(){
        var right_width = $('.right_body').width();
        var panelWidth = right_width / 2- 17;
        var obj = $('.panel').children('.p-sty');
        $('.panel').children('.p-sty').width(panelWidth);
        obj.height() < 160 ? obj.height('160') : obj.height(obj.height());
    }
    $(window).ready(function(){ panelW();});
    $(window).resize(function(){panelW();});
});
</script>

<!-- 右侧区域开始 -->
<div class="right_body"> 
    <!-- 当前位置开始 -->
    <div class="snav">您的位置：<a href="frame.php">管理首页</a> » 概况和升级</div><!-- 当前位置结束 -->
    <!-- 右侧主体内容开始 -->
    <div class="mbody">
     <input id="auths" type="hidden" value="<?php echo AUTH_CODE; ?>" />
        <div class="panel">
            <div class="p-sty panel-four  " style="margin:5px 0 10px 5px;">
                <span class="panel-tit">系统信息</span>
                <ul>
                    <li>操作系统：<?php echo php_uname('s') ;?></li>
                    <li>服务器软件：<?php echo $apache = function_exists('apache_get_version')?apache_get_version():"";?></li>
                    <li>MySql版本：<?php echo $page['mysql_version'];?></li>
					<br/>
					<li>获取最新教程：<a href="http://sz.xinqyi.com/zxjc.html" target="_blank">点击获取</a></li>
                 </ul>
            </div>
        </div>
    </div><!-- 右侧主体内容结束 -->
    
    <?php require_once(dirname(__FILE__)."/inc_footer.php");?>

</div><!-- 右侧区域结束 -->

<!-- 隐藏表单半透明层 -->

</body>
</html>