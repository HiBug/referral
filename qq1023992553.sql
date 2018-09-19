/*
Navicat MySQL Data Transfer

Source Server         : szws
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : szws

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-08-10 12:00:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `appcms_admin_list`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_admin_list`;
CREATE TABLE `appcms_admin_list` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '账号',
  `upass` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `ustate` int(2) NOT NULL DEFAULT '0' COMMENT '用户状态（正常=0，停用=1）',
  `reg_date` int(11) NOT NULL DEFAULT '0' COMMENT '开通时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台管理表';

-- ----------------------------
-- Records of appcms_admin_list
-- ----------------------------
INSERT INTO `appcms_admin_list` VALUES ('1', 'qq1023992553', 'a9ff3513281d443ac5a37e606063fda7', '0', '0');

-- ----------------------------
-- Table structure for `appcms_app_history`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_app_history`;
CREATE TABLE `appcms_app_history` (
  `history_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'app下载id',
  `app_id` int(11) NOT NULL DEFAULT '0' COMMENT '应用ID',
  `app_version` varchar(500) NOT NULL DEFAULT '' COMMENT '版本号',
  `app_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `app_size` varchar(500) NOT NULL DEFAULT '' COMMENT '程序大小',
  `app_system` varchar(500) NOT NULL DEFAULT '' COMMENT '系统要求',
  `appcms_history_id` int(11) NOT NULL DEFAULT '0' COMMENT 'APPCMS数据中心下载ID',
  `down_url` varchar(500) NOT NULL DEFAULT '' COMMENT '下载地址',
  PRIMARY KEY (`history_id`),
  KEY `app_id` (`app_id`),
  KEY `appcms_history_id` (`appcms_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COMMENT='应用历史版本表';

-- ----------------------------
-- Records of appcms_app_history
-- ----------------------------
INSERT INTO `appcms_app_history` VALUES ('184', '184', '1.2.2', '1531626986', '9.88MB', '不限', '0', 'http://h5.youju.sohu.com/partner_invite?id=8908042');
INSERT INTO `appcms_app_history` VALUES ('185', '185', '1.1.0', '1531627830', '2.77MB', '目前仅限安卓手机', '0', 'http://inv.ms0312.com/775144');
INSERT INTO `appcms_app_history` VALUES ('186', '186', '1.8.1', '1531646680', '5.23 MB', '不限', '0', 'http://www.lf2vip.cn/register/index?rrdd=MTM0OTQxNQ==&rn=feaD6d');
INSERT INTO `appcms_app_history` VALUES ('143', '143', '6.18', '1529417937', '4.2MB', '不限', '0', 'http://url.cn/40vQNki?u=17179812&t=71');
INSERT INTO `appcms_app_history` VALUES ('189', '189', '1.0.1', '1531660487', '3.50 MB', '苹果手机', '0', 'http://api.sjinke.com/?uid=13552');
INSERT INTO `appcms_app_history` VALUES ('190', '190', '1.1.3', '1531664607', '14.3MB', '苹果手机', '0', 'http://m.jiuxiaovip.com?from_id=837191');
INSERT INTO `appcms_app_history` VALUES ('191', '191', '2.1.1', '1531665136', '10.5 MB', '苹果手机', '0', 'http://quzhuan.shop//index.php/Home/Index/load/parendId/113243');
INSERT INTO `appcms_app_history` VALUES ('192', '192', '1.2.1', '1531668673', '3.98MB', '苹果手机', '0', 'http://app.yingyongmiao.com/s.php?user_id=2335712');
INSERT INTO `appcms_app_history` VALUES ('193', '193', '1.1.0', '1531669149', '11.9MB', '苹果手机', '0', 'http://www.51jpgy.com/web/share/userid/1528774.html');
INSERT INTO `appcms_app_history` VALUES ('194', '194', '1.0.1', '1531669716', '2.59MB', '苹果手机', '0', 'http://wx.th233.cn/?id=18271157');
INSERT INTO `appcms_app_history` VALUES ('195', '194', '1.0.1', '1531669718', '2.59MB', '苹果手机', '0', 'http://wx.th233.cn/?id=18271157');
INSERT INTO `appcms_app_history` VALUES ('144', '144', '5.1.3', '1529418891', '3MB', 'Android2.0以上', '0', 'http://pingyuzaixian.cn/index.html?inviteCode=13315174&reference=qqFriend&shareTag=2018-06-19 22:30');
INSERT INTO `appcms_app_history` VALUES ('121', '121', '6.25', '1529394893', '4.58M', 'Android2.0以上', '0', 'http://www.adyouzi.net/phenix/invite.html?invite_code=133827');
INSERT INTO `appcms_app_history` VALUES ('141', '141', '5.3.6', '1529416118', '7MB', 'Android2.0以上', '0', 'http://goo.sanligang.cn/?9a02557305115ee7631');
INSERT INTO `appcms_app_history` VALUES ('142', '142', '3.1.8', '1529417623', '8.5MB', '不限', '0', 'http://t.cn/R3NY6k4');
INSERT INTO `appcms_app_history` VALUES ('123', '123', '1.0.2', '1529397833', '19.63 MB', '不限', '0', 'http://m.yyeduobao.com/share.php?uid=162961&t=3&id=1&hash=3hxwxcbyvz');
INSERT INTO `appcms_app_history` VALUES ('166', '166', '2.3.6', '1529457674', '7MB', '苹果系统', '0', 'http://aldsd.kkhongbao.com/?u=3791002');
INSERT INTO `appcms_app_history` VALUES ('132', '132', '2.6.3', '1529405824', '5.6MB', 'Android2.0以上', '0', 'http://api.kuai.mvideo.xiaomi.com/videodaily-h5/v2/#/userExcitation/shareDownload?eyJuaWNrX25hbWUiOiLniLHkuIrlkIPpsbznjKsiLCJ1c2VyX2ljb24iOiJodHRwOi8vdGhpcmR3eC5xbG9nby5jbi9tbW9wZW4vdmlfMzIvQmZVVk1UMFV1bGhpYVlsZHBIZXZZblo0MkpXU0RRMXlpYjBEd3ZIUExzV3lNWWhtOGxlblQxN0lGZFBVVlI4aWFrcXBjVlE0dmlicldOd0pJYlY1a0FJZjJBLzAiLCJhbW91bnQiOjAsImludl9jb2RlIjoiSzE0NTgxNjIifQ==?&sfrom=qq');
INSERT INTO `appcms_app_history` VALUES ('187', '187', '1.0.1', '1531648736', '22.86 MB', '苹果手机', '0', 'http://jkzhuan.com/i/5365995968');
INSERT INTO `appcms_app_history` VALUES ('173', '173', '3.2.3', '1529461485', '7.1MB', '苹果系统', '0', 'http://www.shiwandashi.com/?invite_id=1132625');
INSERT INTO `appcms_app_history` VALUES ('165', '165', '3.2.7', '1529457060', '6MB', '苹果系统', '0', 'http://m.apptry100.cn/?u=60770449');
INSERT INTO `appcms_app_history` VALUES ('188', '188', '1.0.2', '1531659432', '8.92MB', '苹果手机', '0', 'http://scxmcy.com.cn/?u=531658663&balance=1&name=15330&from=singlemessage&isappinstalled=0&t=1531659236');
INSERT INTO `appcms_app_history` VALUES ('161', '161', '3.6.2', '1529455704', '8MB', '苹果系统', '0', 'http://tg.topasm.com?u=7895892&e=407');
INSERT INTO `appcms_app_history` VALUES ('158', '158', '6.1.1', '1529454046', '9MB', '苹果系统', '0', 'http://usdcat.cn/share/383174');
INSERT INTO `appcms_app_history` VALUES ('176', '176', '1.0.0', '1529463406', '2.98MB', '苹果手机iOS', '0', 'http://www.didazhuan.com/share.php?id=46381');
INSERT INTO `appcms_app_history` VALUES ('180', '180', '1.1.2', '1529465708', '5.23MB', '苹果手机', '0', 'http://www.miquapp.com/Share?u=czoxNjoiMzgzNzEsMTUyOTQ2NTUxMCI7');
INSERT INTO `appcms_app_history` VALUES ('119', '119', '1.2.1', '1529393667', '1.5MB', 'Android', '0', 'http://player.52torrent.com/invitation-jump.html?ch=qr_code&cid=894771108');
INSERT INTO `appcms_app_history` VALUES ('120', '120', '5.3', '1529382051', '10M', 'Android2.0以上', '0', 'http://toutiao.weixinfenxiang.com.cn/toutiao/new-user-register/index.html?inviteCode=80407085');
INSERT INTO `appcms_app_history` VALUES ('122', '122', '3.52', '1529396288', '9.49M ', 'Android2.0以上', '0', 'http://app.k.360kan.com/k2/recommend/share?fcode=yy6wwd6nsd');
INSERT INTO `appcms_app_history` VALUES ('124', '124', '3.25', '1529399642', '8M', '不限', '0', 'http://1529399164.m.xianfatask.com/mobile/user.php?act=share_register&puid=52684');
INSERT INTO `appcms_app_history` VALUES ('125', '125', '1.1.5', '1529400636', '5.56MB', 'Android2.0以上', '0', 'http://a.app.qq.com/o/simple.jsp?pkgname=com.coohua.videoearn&ch=c&uId=6717001&env=p');
INSERT INTO `appcms_app_history` VALUES ('126', '126', '2.1.1', '1529401070', '12.3MB', '暂时只有安卓手机', '0', 'http://http://share.xiaomeeyouxi.cn/mrzd/invitation/share?account=1775916');
INSERT INTO `appcms_app_history` VALUES ('127', '127', '2.0.5', '1529401860', '10.67MB', 'Android2.0以上', '0', 'http://www.hrindex.cn/xunlei/jump.html');
INSERT INTO `appcms_app_history` VALUES ('128', '128', '3.2', '1529402475', '9M', 'Android2.0以上', '0', 'http://page.quzhuanxiang.com/qn/common?funid=43&channel=92002&invite=p32248');
INSERT INTO `appcms_app_history` VALUES ('129', '129', '1.2.3', '1529402967', '9M ', 'Android2.0以上', '0', 'http://kandian.youth.cn/user/share?uid=12452006');
INSERT INTO `appcms_app_history` VALUES ('130', '130', '1.0.1', '1529403543', '6.15MB', 'Android2.0以上', '0', 'http://api.yingliangwangluo.com/appweb/sharePage.html?uId=245967');
INSERT INTO `appcms_app_history` VALUES ('131', '131', '1.5', '1529405198', '4.4MB', 'Android2.0以上', '0', 'http://dw.kaconshop.com/m/6MgjZ?t=a80f7b');
INSERT INTO `appcms_app_history` VALUES ('133', '133', '5.23', '1529406296', '5MB', 'Android2.0以上', '0', 'http://ss.sohu.com/infonews/invite/register/5b28e2c0c0d9db000105452b/1?channel=18&subchannel=1&social_media=4');
INSERT INTO `appcms_app_history` VALUES ('134', '134', '3.5.1', '1529406612', '7MB', 'Android2.0以上', '0', 'http://a.app.qq.com/o/simple.jsp?pkgname=com.xike.yipai&ckey=CK1393608178105');
INSERT INTO `appcms_app_history` VALUES ('135', '135', '3.2.1', '1529407255', '20MB', 'Android2.0以上', '0', 'http://ktt.iclient.ifeng.com/tuwa/ktt_h5#/employee?proid=ifengnewsgold&description=plan&qrcode=3&aman=588z7740620o106G468&gud=93g610H189');
INSERT INTO `appcms_app_history` VALUES ('136', '136', '6.3.3', '1529408528', '8.7MB', 'Android2.0以上', '0', 'http://player.rohuida.com/browser/red_head/index.html?ch=aqq&cid=853860&uid=nvyfsi');
INSERT INTO `appcms_app_history` VALUES ('137', '137', '1.1.5', '1529413691', '2.90 MB', 'Android 3.3以上', '0', 'http://1240414123133.qukantoutiao.net/7097/382567293');
INSERT INTO `appcms_app_history` VALUES ('138', '138', '1.2.9', '1529414348', '8.73MB', '不限', '0', 'http://www.huanxifin.com/api/index.php/news/weixin/shorttolongurl/urlid/10768');
INSERT INTO `appcms_app_history` VALUES ('139', '139', '3.68', '1529415360', '8MB', 'Android2.0以上', '0', 'http://kltzp.toutiao99.cn/reg/122840_13/1529415223.html');
INSERT INTO `appcms_app_history` VALUES ('140', '140', '1.5', '1529415836', '3.9MB', 'Android2.0以上', '0', 'http://www.zhangyongbao.com/yuedu/apprentice/invite?code=BX00358127&money=20&id=258127');
INSERT INTO `appcms_app_history` VALUES ('146', '146', '8.36', '1529419492', '16MB', '不限', '0', 'http://www.knowchat.com/0004655645');
INSERT INTO `appcms_app_history` VALUES ('147', '147', '6.3.2', '1529420328', '8MB', '苹果系统', '0', 'http://shike.com/orochi/FKFriendZone2?code=xEmcsmCw5W7C7Q0-dDc8BTBpVy9-ov%2al');
INSERT INTO `appcms_app_history` VALUES ('148', '148', '6.3.1', '1529420753', '5MB', '苹果系统', '0', 'http://m.hongbaodaren.com/?u=2956597');
INSERT INTO `appcms_app_history` VALUES ('149', '149', '3.7.3', '1529421454', '5MB', '苹果系统', '0', 'http://www.caimimao.cn/nsharecmm.action?fmuid=698076&masterid=6980766');
INSERT INTO `appcms_app_history` VALUES ('150', '150', '3.5.1', '1529422085', '5MB', '苹果系统', '0', 'http://m.jinrizuijia.net/invite/?inviter=rTJEEGCZ8acKMFUt5FQavZiH2kGkHE6oKNiNiFGkW8wRs-o2j0tDHvBhk-FmGSRGLua3zexghLI1&from=link');
INSERT INTO `appcms_app_history` VALUES ('151', '151', '1.2.3', '1529422580', '5MB', '苹果系统', '0', 'http://hd.meili.me/inviteReg.html?uid=100261793391');
INSERT INTO `appcms_app_history` VALUES ('152', '152', '4.3.8', '1529423227', '5MB', '苹果系统', '0', 'http://www.qiantutu.cn/welcome?invite_id=1042865');
INSERT INTO `appcms_app_history` VALUES ('153', '153', '6.3.1', '1529423998', '5MB', '苹果系统', '0', 'http://m.applyape.com/callback/shoutu?id=92637');
INSERT INTO `appcms_app_history` VALUES ('154', '154', '5.1.6', '1529424851', '3MB', '苹果系统', '0', 'http://lm.365smz.com/u/2619997.html');
INSERT INTO `appcms_app_history` VALUES ('155', '155', '3.5.2', '1529451055', '7MB', '苹果系统', '0', 'http://500zhuan.com/invite/301073.htm');
INSERT INTO `appcms_app_history` VALUES ('156', '156', '6.8.5', '1529451899', '10MB', '苹果系统', '0', 'http://m.moneyds.com/user/inviteu/81075577.html');
INSERT INTO `appcms_app_history` VALUES ('157', '157', '1.2.6', '1529452946', '5.89MB', '苹果系统', '0', 'http://www.shiyongapp.com/guide/14305986');
INSERT INTO `appcms_app_history` VALUES ('159', '159', '3.6.1', '1529454635', '5MB', '苹果系统', '0', 'http://m.qianmaomi.com/home/Invitepage/?mentorid=16962');
INSERT INTO `appcms_app_history` VALUES ('160', '160', '1.0.3', '1529455392', '13MB', '苹果系统', '0', 'http://v2.mayixiaoka.com/rec/293344');
INSERT INTO `appcms_app_history` VALUES ('162', '162', '3.5.2', '1529456117', '7MB', '苹果系统', '0', 'http://h5.jinrizhuanqian.cn/webpage/html/checkout.html?uid=mfclou&sta=0');
INSERT INTO `appcms_app_history` VALUES ('163', '163', '6.5.3', '1529456390', '6.2MB', '苹果系统', '0', 'http://csk1.xiaochanzhuanqian.cn/?uid=55152');
INSERT INTO `appcms_app_history` VALUES ('164', '164', '1.1.2', '1529456679', '5.92MB', '苹果系统', '0', 'http://tanrice.com/i/?49446');
INSERT INTO `appcms_app_history` VALUES ('167', '167', '7.2.1', '1529457913', '6MB', '苹果系统', '0', 'http://www.beeplay01.com/wxguide.html?id=45778297047');
INSERT INTO `appcms_app_history` VALUES ('168', '168', '2.3.3', '1529458328', '5MB', '苹果系统', '0', 'http://htsw.youdongren.com/pc2/index.html');
INSERT INTO `appcms_app_history` VALUES ('169', '169', '1.3.2', '1529458542', '6MB', '苹果系统', '0', 'http://m.qianmaiap.com/?u=181771');
INSERT INTO `appcms_app_history` VALUES ('170', '170', '3.5.3', '1529458910', '3MB', '苹果系统', '0', 'http://kkz.lixingru.cn/intro/invite?invitation=496383');
INSERT INTO `appcms_app_history` VALUES ('171', '171', '3.6.2', '1529459209', '9MB', '苹果系统', '0', 'http://www.eimoney.com/diamonds/mobile/share/link?promote_code=2753043');
INSERT INTO `appcms_app_history` VALUES ('172', '172', '1.3.5', '1529460176', '10.92MB', '苹果系统', '0', 'http://sz.xinqyi.com/upload/img/2018/06/20/5b29b59345921.jpg');
INSERT INTO `appcms_app_history` VALUES ('174', '174', '3.6.9', '1529462375', '5MB', '苹果系统', '0', 'http://www.xiaomaozq.com/guide/guide.html?identify=sM7cXds4');
INSERT INTO `appcms_app_history` VALUES ('175', '175', '1.2.2', '1529462814', '5.6MB', '苹果系统', '0', 'http://zk.xyou123.net/w/link/20761125');
INSERT INTO `appcms_app_history` VALUES ('177', '177', '1.3.1', '1529463903', '22.1MB', '苹果手机', '0', 'http://www.2bird.cn/user/share?key=ZGdN7uFyAzU_c');
INSERT INTO `appcms_app_history` VALUES ('178', '178', '1.0.1', '1529464495', '12.09MB', '不限', '0', 'http://apn.aphaofu.com/Web/Ap?d=65eea173051152f4402');
INSERT INTO `appcms_app_history` VALUES ('179', '179', '1.0.2', '1529465339', '3.66MB', '苹果系统', '0', 'http://www.bazikeji.com/invite/317048');
INSERT INTO `appcms_app_history` VALUES ('181', '181', '1.1.0', '1529466397', '2.86MB', '苹果系统iOS', '0', 'http://pphongbao.com/?random=1122&r=824518036');
INSERT INTO `appcms_app_history` VALUES ('182', '182', '3.6.3', '1529479572', '5MB', '苹果系统', '0', 'http://xiaoxiao517.com/?u=51483951');
INSERT INTO `appcms_app_history` VALUES ('183', '183', '3.6.9', '1529480102', '9MB', '苹果系统', '0', 'http://wx.xy599.com/share.php?id=18759681');

-- ----------------------------
-- Table structure for `appcms_app_list`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_app_list`;
CREATE TABLE `appcms_app_list` (
  `app_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '应用id',
  `last_cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '终极分类ID',
  `app_title` varchar(500) NOT NULL DEFAULT '' COMMENT '应用名称',
  `app_stitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `app_version` varchar(500) NOT NULL DEFAULT '' COMMENT '版本号（最新）',
  `app_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间（最新）',
  `app_size` varchar(50) NOT NULL DEFAULT '' COMMENT '程序大小（最新）',
  `app_system` varchar(100) NOT NULL DEFAULT '' COMMENT '系统要求（最新）',
  `app_type` varchar(20) NOT NULL DEFAULT '' COMMENT '软件类型：免费/收费',
  `app_logo` varchar(500) NOT NULL DEFAULT '' COMMENT '缩略图',
  `app_desc` text COMMENT '应用详情',
  `app_company` varchar(500) NOT NULL DEFAULT '' COMMENT '开发商',
  `app_company_url` varchar(500) NOT NULL DEFAULT '' COMMENT '开发商网址',
  `app_tags` varchar(1000) NOT NULL DEFAULT '' COMMENT '标签',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '入库时间',
  `app_grade` float NOT NULL DEFAULT '0' COMMENT '用户评分',
  `app_recomment` float NOT NULL DEFAULT '0' COMMENT '系统评分',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发布人ID',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '发布人',
  `app_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论量',
  `app_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `app_down` int(11) NOT NULL DEFAULT '0' COMMENT '下载量',
  `app_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `data_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '数据中心应用ID',
  `charge_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '独立计费包ID',
  `rewrite_tag` varchar(100) NOT NULL DEFAULT '' COMMENT 'app页面伪静态标签',
  `seo_title` text COMMENT '应用SEO标题',
  `seo_keywords` text COMMENT '应用SEO关键字',
  `seo_desc` text COMMENT '应用SEO描述',
  PRIMARY KEY (`app_id`),
  KEY `cate_update_time` (`last_cate_id`,`app_update_time`),
  KEY `cate_order` (`last_cate_id`,`app_order`),
  KEY `cate_visitor` (`last_cate_id`,`app_visitors`),
  KEY `cate_create_time` (`last_cate_id`,`create_time`),
  KEY `cate_down` (`last_cate_id`,`app_down`),
  KEY `app_update_time` (`app_update_time`),
  KEY `app_order` (`app_order`),
  KEY `app_down` (`app_down`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COMMENT='应用表';

-- ----------------------------
-- Records of appcms_app_list
-- ----------------------------
INSERT INTO `appcms_app_list` VALUES ('142', '2', '闪电盒子', '闪电盒子', '3.1.8', '1533869335', '8.5MB', '不限', '', '/upload/img/2018/06/19/5b290e98059dd.png', '闪电盒子是一款既可以看新闻看视频赚钱，又可以方便的使用各种应用的app，而且在闪电盒子中看新闻或使用应用都可以领到红包，让大家玩手机就可以赚钱。<br />\n注册填写红包口令&nbsp;<strong><span style=\"color:#ff0000;\">49812998041&nbsp;</span></strong>送1元，提现秒到账。<br />\n<br />\n闪电盒子怎么赚钱？<br />\n1、首页左上角可以分时段的拆红包获得闪电币，无上限。<br />\n2、可完成任务获得现金及闪电币。<br />\n3、徒弟完成日常红包任务师傅将可获得徒弟进贡的闪电币除以上方式，收徒是最快收益最大的挣钱方式，每收1个徒弟，都可以获得5元现金奖励，且徒弟会给您进贡大量的闪电币。', '', '', '闪电盒子', '1533869335', '0', '9', '1', 'qq1023992553', '0', '130', '5', '0', '0', '0', '', '闪电盒子', '闪电盒子', '闪电盒子');
INSERT INTO `appcms_app_list` VALUES ('141', '2', '乐享看', '乐享看', '5.3.6', '1533869340', '7MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b29095fb05f9.png', '乐享看，是一个移动手机自阅赚钱平台，看新闻，看资讯，看视频都能赚金币，金币换零花钱，汇聚社会趣闻、奇趣、搞笑、健康、育儿等内容，随时随地看好文，尽情分享给好友~&nbsp; 来乐享看:加入就送2~88元现金。<br />\n<br />\n【赚钱特点】<br />\n1、实时更新高质量热点好文，包括搞笑、娱乐、猎奇、健康等各类新鲜内容，全面覆盖热点领域，让你的碎片化时间不再无趣！<br />\n2、分享新闻还能赚钱！动动手指一个月话费轻松到手，根本停不下来！<br />\n3、实时送上热点新闻，并且结合大数据、基于用户的行为数据 ，推荐你想看的内容！<br />\n4、邀请好友成为你的徒弟，每次徒弟赚钱你也赚钱，别人躺赢，你躺赚！<br />\n5、新人1元提现秒速到账，世界上没有比这更爽的事啦~', '', '', '乐享看', '1533869340', '0', '9', '1', 'qq1023992553', '0', '109', '11', '0', '0', '0', '', '乐享看', '乐享看', '乐享看');
INSERT INTO `appcms_app_list` VALUES ('123', '2', '逛有钱', '逛有钱', '1.0.2', '1533869233', '19.63 MB', '不限', '', '/upload/img/2018/06/19/5b28bd349dbe0.png', '逛有钱app，一款能赚钱的购物App！万千宝贝，看了就赚钱！能省钱更能赚钱，相对于其他返利网能帮你花钱的时候省钱，逛有钱让你不花钱还能赚钱，逛有钱是你必备的手机购物App<br />\n<br />\n产品优势<br />\n【赚钱】不止省钱，每天逛每天赚钱；<br />\n【优惠】超级优惠，超级券，优选优质商品超级优惠券；<br />\n【精选】人工精选，每天不间隙人工精选好宝贝；<br />\n【头条】宝贝头条，超有趣头条，分享好宝贝', '', '', '逛有钱', '1533869233', '0', '6', '1', 'qq1023992553', '0', '109', '4', '0', '0', '0', '', '逛有钱', '逛有钱', '逛有钱');
INSERT INTO `appcms_app_list` VALUES ('124', '1', '闲发', '闲发', '3.25', '1533869242', '8M', '不限', '', '/upload/img/2018/06/19/5b28c899b5532.jpg', '闲发app，做任务赚钱平台，任务很多，靠谱稳定，还可以在线自主投放任务，首次2元提现，后续10元起提现；200元以内提现皆为秒到账，200元以上提现24小时内审核到账。<br />\n<br />\n【推广语】<br />\n闲發，闲暇时光，发点小财：<br />\n关注赚钱：关注公众号（7天内不得取消关注），养家糊口<br />\n阅读赚钱：阅读文章，积累资金<br />\n分享赚钱：朋友圈推广裂变，赚钱更快<br />\n更高收入：开通黄金会员，相比普通会员，享受更高奖励及收徒提成<br />\n提现稳定：首次2元提现，后续10元起，200元以内皆是秒到账<br />\n<br />\n【小贴士】<br />\n普通可以免费加入，收徒亦有提成，如果善于推广或注重高价任务，建议开通黄金会员，详情注册下载后，点击APP首页-升级VIP，查看详细开通及介绍。<br />\n<br />\n普通用户：<br />\n1、关注区：完成一个任务获取0.1元+5积分；徒弟完成一个任务，您获取10％佣金奖励+5积分；<br />\n2、阅读区：完成一个任务获取任务佣金+1积分；徒弟完成一个任务，您获取10％佣金奖励+1积分；<br />\n3、分享区：好友帮忙关注一个，您获取0.1元+5积分，每个任务最高可得10元；徒弟完成一个任务，您获取5％佣金奖励+5积分；<br />\n4、推广区：徒弟首次提现，您获取0.5元奖励；<br />\n5、兑换区：完成一个任务，获取50积分；<br />\n6、徒弟开通150日会员，您获取3元奖励；开通300日会员，您获取6元奖励。<br />\n注：所有徒孙完成任务即开VIP奖励，都提示损失。<br />\n<br />\n黄金VIP：<br />\n1、关注区：完成一个任务获取0.15元+10积分；徒弟完成一个任务，您获取20％佣金奖励+10积分；徒孙完成一个任务，您获取5％佣金奖励+1积分<br />\n2、阅读区：完成一个任务获取任务佣金+2积分；徒弟完成一个任务，您获取20％佣金奖励+2积分；徒孙完成一个任务，您获取5％佣金奖励+1积分<br />\n3、分享区：好友帮忙关注一个，您获取0.1元+10积分，每个任务不限量完成。徒弟完成一个任务，您获取10％佣金奖励+10积分；徒孙完成一个任务，您获取3％佣金奖励+1积分<br />\n4、推广区：徒弟首次提现，您获取1元奖励；<br />\n5、兑换区：完成一个任务，获取100积分；<br />\n6、徒弟开通150日会员，您获取6元奖励；开通300日会员，您获取12元奖励；徒孙开通150日会员，您获取3元奖励；开通300日会员，您获取6元奖励；<br />\n7、尊享高级专属任务：与平台签约，可获取每月最低底薪500元+10％佣金奖励。<br />\n<br />\n【小提醒】<br />\n做任务赚钱，你的不二之选，新上线，会员享受半价，如果不想开通，也可以以免费的普通会员身份进行做任务赚钱<br />\n<br />\n【防作弊】<br />\n不支持一部设备注册多账号使用，但一个账号可以多设备登陆，否则违规，请正规操作及推广赚钱<br />\n<br />\n【小说明】<br />\n免费亦可赚钱，VIP赚更多。官方表示：任务稳定，提现靠谱。我站运营已经开通了黄金VIP，但各位会员应本着自愿和风险承担能力大小为原则，酌情自主判断是否开通黄金VIP', '', '', '闲发', '1533869242', '0', '6', '1', 'qq1023992553', '0', '109', '12', '0', '0', '0', '', '闲发', '闲发', '闲发');
INSERT INTO `appcms_app_list` VALUES ('125', '2', '淘视频', '淘视频', '1.1.5', '1533869247', '5.56MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28cc7111dc4.jpg', '看视频，淘金币，尽在淘视频。注册填写邀请码：<span style=\"color:#ff0000;\"><strong>6717001</strong></span>，送2元。<br />\n淘视频，集有趣、有料、有个性的内容于一体，让您看视频的同时，不但能收获一份乐趣，更能轻松赚零花钱。<br />\n<br />\n1、下载注册淘视频，即送现金红包，如需邀请码，可填写：<strong><span style=\"color:#ff0000;\">6717001</span></strong>，还能获得额外红包奖励<br />\n2、看视频赚钱，十几秒出金币，单价5金币，10元可提现支付宝或兑换更多精美礼品', '', '', '淘视频', '1533869247', '0', '9', '1', 'qq1023992553', '0', '109', '4', '0', '0', '0', '', '淘视频', '淘视频', '淘视频');
INSERT INTO `appcms_app_list` VALUES ('126', '2', '每日赚点', '每日赚点', '2.1.1', '1533869254', '12.3MB', '暂时只有安卓手机', '', '/upload/img/2018/06/19/5b28ce69de468.jpg', '每日赚点APP主要专为学生、宝妈、线上兼职者打造的手机赚钱软件平台。我们长期深耕手机兼职赚钱行业，是一款优质的软件、超优质的服务，是众多手赚大咖的必选软件！ 每日赚点&mdash;打开手机就能赚钱、体验手机赢钱，答题赚钱，兼职赚钱等赚钱方式,还能，随时随地捡红包。<br />\n<br />\n本站已经在每日赚点提现11000元+，一直在和平台合作，新用户最低10元就可以申请提现，而且兼职任务非常多，每日赚点是秒赚随时提现的手机平台，看视频、资讯，满足不同人群的需求，求职、招聘、游戏赚钱、调研答题应有尽有， 每日赚点通过运营各种活动，优化用户体验，提高用户奖励，逐渐成为手机赚钱行业里新的佼佼者。<br />\n<br />\n【赚钱特点】<br />\n1、高价任务：每天更新海量任务，单价高，建议早，中，晚三个时间段登陆每日赚点刷新快速手机兼职赚钱，先到先得赚钱无极限，让你每天赚点。<br />\n2、简单赚钱：每天空余时间看个搞笑视频，随时赚钱。<br />\n3、分享赚钱：每日赚点专门开辟了微信朋友圈兼职赚钱的分享频道，用户只需简单点击分享，朋友圈好友点击就能有收入，秒赚20元。超简单，每天更新分享内容，兼职理财知识，养生心灵鸡汤，内容丰富。&nbsp;', '', '', '每日赚点', '1533869254', '0', '6', '1', 'qq1023992553', '0', '120', '26', '0', '0', '0', '', '每日赚点', '每日赚点', '每日赚点');
INSERT INTO `appcms_app_list` VALUES ('147', '1', '试客小兵', '试客小兵', '6.3.2', '1533869418', '8MB', '苹果系统', '', '/upload/img/2018/06/19/5b2918d0324e4.png', '试客小兵，是苹果手赚平台，用户通过试玩手机应用即可赚到高额奖励，试客小兵是北京世通宝网络科技有限公司推出的苹果赚钱平台，让你收货的不止是财富。<br />\n免费试玩，获取丰厚现金奖励，分分钟就可以提取现金。', '', '', '试客小兵', '1533869418', '0', '9', '1', 'qq1023992553', '0', '617', '27', '0', '0', '0', '', '试客小兵', '试客小兵', '试客小兵');
INSERT INTO `appcms_app_list` VALUES ('148', '1', '红包达人', '红包达人', '6.3.1', '1533869412', '5MB', '苹果系统', '', '/upload/img/2018/06/19/5b291b499f9bf.png', '红包达人，是一个苹果赚钱软件，任务单价1元起，满20元就能提现<br />\n人人都成赚钱高手，随时随地红包到手！', '', '', '红包达人', '1533869412', '0', '9', '1', 'qq1023992553', '0', '619', '27', '0', '0', '0', '', '红包达人', '红包达人', '红包达人');
INSERT INTO `appcms_app_list` VALUES ('149', '1', '财迷猫', '财迷猫', '3.7.3', '1533869407', '5MB', '苹果系统', '', '/upload/img/2018/06/19/5b291e1f44a09.jpg', '财迷猫，一个苹果手赚平台，新用户注册送2元，每收一个徒弟，徒弟每次做一个任务，师父收入0.5元，无封顶哦！<br />\n任务更新时间：集中在12点以后，15点、16点居多其他时间也会有任务上线，满10元就能提现，不收手续费；支持多种方式提现。', '', '', '财迷猫', '1533869407', '0', '9', '1', 'qq1023992553', '0', '609', '12', '0', '0', '0', '', '财迷猫', '财迷猫', '财迷猫');
INSERT INTO `appcms_app_list` VALUES ('150', '1', '熊猫试玩i', '熊猫试玩i', '3.5.1', '1533869402', '5MB', '苹果系统', '', '/upload/img/2018/06/19/5b2920aab660d.png', '熊猫试玩下载试玩App就能赚钱，玩得越多赚得越多。<br />\n现在加入，新用户立送2元，绑定手机再送0.5元，满就能10元提现。<br />\n下载试玩App就有现金奖励，轻轻松松月入上千。邀请好友有奖励，TA做任务更有高达10%提成。<br />\n现金奖励立即到账，支付宝、微信快速提现。', '', '', '熊猫试玩i', '1533869402', '0', '9', '1', 'qq1023992553', '0', '609', '24', '0', '0', '0', '', '熊猫试玩i', '熊猫试玩i', '熊猫试玩i');
INSERT INTO `appcms_app_list` VALUES ('151', '1', '快马小报', '快马小报', '1.2.3', '1533869396', '5MB', '苹果系统', '', '/upload/img/2018/06/19/5b2922c929b3a.jpg', '快马小报，原&ldquo;快马浏览器&rdquo;看资讯赚零花，边娱乐边赚钱。支持苹果手机和安卓手机。阅读一篇资讯10金币，转发一篇资讯一个有效阅读10-50金币，邀请好友可得1500金币，每日十点签到给700个金币（相当于0.5元 ），每日凌晨自动兑换成现金，现金满10元就可直接提现。<br />\n<br />\n新手任务 日常任务<br />\n1.每日签到<br />\n每次成功签到可获得700金币奖励。<br />\n2.抢红包<br />\n每隔几分钟会获得一次抢红包机会，连抢次数越多，红包金币奖励越高。<br />\n3.转发任务<br />\n转发赏金任务文章，每次好友点击都能带来相应单价的收益。<br />\n4.每日阅读<br />\n选择自己喜欢的文章认真阅读，即可获得丰厚的金币奖励。<br />\n高手进阶 推广赚钱<br />\n1，成功邀请一个徒弟加入，会获得1500金币奖励。<br />\n2，阅读任务中，自己阅读一次奖励10金币，而徒弟每次阅读会给您带来20金币的收益；在转发任务中，徒弟分享的任务每次被点击都会给您带来20金币的收益。如果邀请5名徒弟，那么每天的收益就能翻10倍。还在等什么！快去邀请徒弟加入吧！', '', '', '快马小报', '1533869396', '0', '9', '1', 'qq1023992553', '0', '609', '4', '0', '0', '0', '', '快马小报', '快马小报', '快马小报');
INSERT INTO `appcms_app_list` VALUES ('152', '1', '钱兔', '钱兔', '4.3.8', '1533869391', '5MB', '苹果系统', '', '/upload/img/2018/06/19/5b29251eb2b0a.png', '钱兔ios，是一款苹果手机赚钱的APP， 现在加入总共立送3元，单价1元起，满10元就能提现。<br />\n每个任务只需几分钟即可完 成，每天抽出十几分钟做任务，轻松挣零花钱。', '', '', '钱兔', '1533869391', '0', '9', '1', 'qq1023992553', '0', '609', '15', '0', '0', '0', '', '钱兔', '钱兔', '钱兔');
INSERT INTO `appcms_app_list` VALUES ('153', '1', '应用猿', '应用猿', '6.3.1', '1533869385', '5MB', '苹果系统', '', '/upload/img/2018/06/19/5b292851ae46a.png', '应用猿ios，一个苹果手机赚钱软件，注册就送1.2元，任务单价1.2，赚满10元就能提现，快来赚取你的RMB吧。', '', '', '应用猿', '1533869385', '0', '9', '1', 'qq1023992553', '0', '609', '14', '0', '0', '0', '', '应用猿', '应用猿', '应用猿');
INSERT INTO `appcms_app_list` VALUES ('154', '1', '懒猫试玩', '懒猫试玩', '5.1.6', '1533869380', '3MB', '苹果系统', '', '/upload/img/2018/06/20/5b292b8d1f2d8.png', '懒猫试玩，是一款苹果手机赚钱软件、兼职就可以赚钱，只需要一部手机，在家里、学校、餐厅、地铁任何地方，只要有网络都可以随时随地打开懒猫试玩赚钱，注册就送3元，满10元就能提现，任务丰富。', '', '', '懒猫试玩', '1533869380', '0', '9', '1', 'qq1023992553', '0', '619', '26', '0', '0', '0', '', '懒猫试玩', '懒猫试玩', '懒猫试玩');
INSERT INTO `appcms_app_list` VALUES ('155', '1', '500赚', '500赚', '3.5.2', '1533869482', '7MB', '苹果系统', '', '/upload/img/2018/06/20/5b2991f23a459.png', '500赚&rdquo;是一款能赚钱的APP，通过下载IOS应用APP试玩，给APP好评等方式获得奖励，随时随地赚取零花钱，领红包！任务单价超高，100%返现5元即可提现，秒到账！', '', '', '500赚', '1533869482', '0', '9', '1', 'qq1023992553', '0', '609', '4', '0', '0', '0', '', '500赚', '500赚', '500赚');
INSERT INTO `appcms_app_list` VALUES ('156', '1', '钱大师', '钱大师', '6.8.5', '1533869477', '10MB', '苹果系统', '', '/upload/img/2018/06/20/5b2994b035cf7.png', '钱大师是一个崭新的移动APP试用平台，注册即送2元，完善个人资料送0.5元，共2.5元，10元就可提现。<br />\n您通过钱大师下载APP试玩体验，即可获得相应现金奖励。只要3分钟体验钱大师，就能获取一次现金奖励。利用碎片化时间，钱大师帮您轻松搞定生活费。', '', '', '钱大师', '1533869477', '0', '9', '1', 'qq1023992553', '0', '620', '25', '0', '0', '0', '', '钱大师', '钱大师', '钱大师');
INSERT INTO `appcms_app_list` VALUES ('157', '1', '试用宝', '试用宝', '1.2.6', '1533869472', '5.89MB', '苹果系统', '', '/upload/img/2018/06/20/5b2998d60e231.png', '试用宝ios，2017年最新上线的手赚平台（仅限iOS平台），安装即送1元现金红包，最靠谱的手机赚钱平台。<br />\n零投入，无需任何本金，下载APP试玩即可获得1-3元现金奖励，更有高额任务50元现金奖励，累计10元即可提现到微信或者支付宝账户。', '', '', '试用宝', '1533869472', '0', '9', '1', 'qq1023992553', '0', '609', '4', '0', '0', '0', '', '试用宝', '试用宝', '试用宝');
INSERT INTO `appcms_app_list` VALUES ('184', '1', '沙发视频', '沙发视频', '1.2.2', '1533869551', '9.88MB', '不限', '', '/upload/img/2018/07/15/5b4ac4b926544.png', '沙发视频看视频也能赚钱，红包等你拿，上沙发看视频，躺着走向人生赢家！<br />\n新用户注册领取最高200元随机红包，沙发视频是搜狐旗下看视频赚钱的软件，邀请好友一起来赚钱，伙计越多挣得越多！<br />\n', '', '', '沙发视频', '1533869551', '8', '8', '1', 'qq1023992553', '0', '109', '0', '0', '0', '0', '', '沙发视频', '沙发视频', '沙发视频看视频也能赚钱，红包等你拿，上沙发看视频，躺着走向人生赢家！新用户注册领取最高200元随机红包，沙发视频是搜狐旗下看视频赚钱的软件，邀请好友一起来赚钱，伙计越多挣得越多！');
INSERT INTO `appcms_app_list` VALUES ('175', '1', '赚客', '赚客', '1.2.2', '1533869597', '5.6MB', '苹果系统', '', '/upload/img/2018/06/20/5b29bf88469a3.png', '赚客，一款让你轻松赚钱的手机APP，新用户安装送3元现金，任务量爆棚的平台，一个能赚8毛，15分钟赚20元，话费，现金10元可提现，24小时闪电到账！赚客每日抽奖秒领现金，实物大奖笔记本、平衡车、音响免费抽！开箱夺宝送iphone，游戏赚钱两不误！<br />\n<br />\n赚客特点：<br />\n1、新手福利：优惠活动前所未有，安装送3元现金，新手任务高达10元！<br />\n2、高额奖励：试玩、签到、截图，海量任务轻松赚，让你体验快速赚钱！<br />\n3、游戏赚钱：特设每日抽奖和开箱夺宝，秒中大奖，现金、iphone、笔记本，实物大奖惊喜不间断！<br />\n4、收徒赚钱：邀请好友一起玩，坚持每日收徒，永久分成，立马月入上千！<br />\n<br />\n赚客是一款能让你随时随地都能赚钱的手机APP。<br />\n用户可通过免费试玩应用软件和收徒来赚取现金奖励，支持支付宝提现、微信提现，还可以兑换手机话费！<br />\n作为激励互动平台，赚客是目前用户口碑最佳，最靠谱，奖励最多的手机赚钱APP。<br />\n支持苹果iOS和安卓系统', '', '', '赚客', '1533869597', '0', '9', '1', 'qq1023992553', '0', '619', '20', '0', '0', '0', '', '赚客', '赚客', '赚客');
INSERT INTO `appcms_app_list` VALUES ('185', '2', '红包试客', '红包试客', '1.1.0', '1533869657', '2.77MB', '目前仅限安卓手机', '', '/upload/img/2018/07/15/5b4ac8c61b724.png', '红包试客赚钱软件，通过完成简单的小任务即可赚钱，随时提现到账！每日抽奖中红包，赚话费，还有机会抽中各种实物奖励。成为红包试客，轻松赢取红包！<br />\n<br />\n红包试客相较于其他同类型的手机赚钱软件、赚钱应用，拥有更大量的任务，更快速的提现，更丰富的玩法！<br />\n<br />\n拥有红包试客赚钱，你可以获得：<br />\n【新手奖励】新手首次登陆即有3元，更有1-10元的新手任务！<br />\n【高额任务】高额任务让你赚得停不下来，无需抢，海量任务任你挑！<br />\n【抽取大奖】每日抽奖有丰富的奖励，红包、iphone电子实物等奖励期待你来抽取！<br />\n【邀请好友】分享软件邀请好友一起玩，躺着也能拿奖励，手机赚钱月入上千！', '', '', '红包试客', '1533869657', '8', '8', '1', 'qq1023992553', '0', '109', '2', '0', '0', '0', '', '红包试客', '红包试客', '红包试客');
INSERT INTO `appcms_app_list` VALUES ('186', '1', '香蕉网', '香蕉网', '1.8.1', '1533869651', '5.23 MB', '不限', '', '/upload/img/2018/07/15/5b4b1263e59b2.png', '香蕉网是快转赚、雪梨网、番薯网和玉米网旗下新平台，注册送1元，5元即可提现。<br />\n每次阅读0.1元-0.15元，老平台旗下稳定靠谱。', '', '', '香蕉网', '1533869651', '8', '8', '1', 'qq1023992553', '0', '509', '0', '0', '0', '0', '', '香蕉网', '香蕉网', '香蕉网');
INSERT INTO `appcms_app_list` VALUES ('187', '1', '即刻赚', '即刻赚', '1.0.1', '1533869645', '22.86 MB', '苹果手机', '', '/upload/img/2018/07/15/5b4b1a8d3ed76.png', '即刻赚是深圳市乐瀛文化科技有限公司推出的一款全新的赚钱类应用，玩手机就能轻松赚钱，提供多种获取收益方式：<br />\n◦完成每日任务即可获得奖励<br />\n◦邀请好友各获得奖励，和好友一起赚钱更好玩<br />\n◦只需关注微信就可快速提现<br />\n我们致力于提高投放移动广告效果，优化用户体验，为用户带来更多收益。快来和我们一起即刻赚吧。', '', '', '即刻赚', '1533869645', '9', '9', '1', 'qq1023992553', '0', '509', '0', '0', '0', '0', '', '即刻赚', '即刻赚', '即刻赚');
INSERT INTO `appcms_app_list` VALUES ('188', '1', '一号红包', '一号红包', '1.0.2', '1533869637', '8.92MB', '苹果手机', '', '/upload/img/2018/07/15/5b4b42c8a100c.png', '一号红包，红包天天有，注册送1元，10元提现，单价1元左右！<br />\n轻松赚钱无需投入，每日大量试玩任务上线，下载试玩后即可获得奖励。<br />\n打开浏览器即可开玩，随手点一点，几块钱奖励瞬间到手，你所需要的只是一个手机。', '', '', '一号红包', '1533869637', '9', '9', '1', 'qq1023992553', '0', '509', '0', '0', '0', '0', '', '一号红包', '一号红包', '一号红包');
INSERT INTO `appcms_app_list` VALUES ('189', '1', '试金客', '试金客', '1.0.1', '1533869632', '3.50 MB', '苹果手机', '', '/upload/img/2018/07/15/5b4b487ac737f.png', '试金客是一款苹果应用试玩app，通过在试金客上试玩软件，就能赚钱的软件，单价1至1.5元，5元提现。<br />\n果粉无需任何投入，只需按照指定要求做任务就可获得对应奖励， 收入超过6元即可提现到支付宝或电话充值。<br />\n', '', '', '试金客', '1533869632', '9', '9', '1', 'qq1023992553', '0', '509', '2', '0', '0', '0', '', '试金客', '试金客', '试金客');
INSERT INTO `appcms_app_list` VALUES ('190', '1', '金手指', '金手指', '1.1.3', '1533869626', '14.3MB', '苹果手机', '', '/upload/img/2018/07/15/5b4b5839becdc.png', '金手指，一款苹果试玩赚钱平台，可以点亮你的零花钱的APP，10元提现，单价1元左右。<br />\n用户通过完成指定下载任务，从而获取丰厚的零花钱奖励。零花钱可以通过支付宝方式进行提现。', '', '', '金手指', '1533869626', '8', '9', '1', 'qq1023992553', '0', '509', '2', '0', '0', '0', '', '金手指', '金手指', '金手指');
INSERT INTO `appcms_app_list` VALUES ('191', '1', '趣赚', '趣赚', '2.1.1', '1533869620', '10.5 MB', '苹果手机', '', '/upload/img/2018/07/15/5b4b5a26bb280.png', '趣赚是一款专业的苹果手机应用试玩平台， 下载试玩App就能赚钱，单价1元左右，10元提现。<br />\n加入趣赚， 一部手机，就可以开启你的赚钱之旅 &hellip;&hellip;&nbsp;', '', '', '趣赚', '1533869620', '9', '9', '1', 'qq1023992553', '0', '509', '0', '0', '0', '0', '', '趣赚', '趣赚', '趣赚');
INSERT INTO `appcms_app_list` VALUES ('192', '1', '应用喵', '应用喵', '1.2.1', '1533869615', '3.98MB', '苹果手机', '', '/upload/img/2018/07/15/5b4b68730e6e6.png', '应用喵是一款苹果手机试玩应用就能赚钱的app，单价1元左右，10元就能提现。<br />\n国内最新最好玩的手机赚钱平台，手机赚钱就选应用喵。用户无需投入，动动手指下载app就能赚钱。', '', '', '应用喵', '1533869615', '8', '9', '1', 'qq1023992553', '0', '509', '2', '0', '0', '0', '', '应用喵', '应用喵', '应用喵');
INSERT INTO `appcms_app_list` VALUES ('193', '1', '天天赚钱', '天天赚钱', '1.1.0', '1533869610', '11.9MB', '苹果手机', '', '/upload/img/2018/07/15/5b4b6a5f34c2f.png', '天天赚钱是苹果应用试玩平台，下载应用试玩就能赚钱的软件，单价1元左右，10元提现。<br />\n每天大量任务，赚钱后可通过支付宝提现或话费充值，躺着赚钱轻松提现。<br />\n', '', '', '天天赚钱', '1533869610', '9', '9', '1', 'qq1023992553', '0', '509', '5', '0', '0', '0', '', '天天赚钱', '天天赚钱', '天天赚钱');
INSERT INTO `appcms_app_list` VALUES ('194', '1', '头号试玩', '头号试玩', '1.0.1', '1533869605', '2.59MB', '苹果手机', '', '/upload/img/2018/07/15/5b4b6c9b96805.png', '头号试玩 - 你的零钱提款机，用手机免费赚钱，试玩应用获得现金奖励，10元就能提现，单价1元左右。', '', '', '头号试玩', '1533869605', '8', '9', '1', 'qq1023992553', '0', '519', '5', '0', '0', '0', '', '头号试玩', '头号试玩', '头号试玩');
INSERT INTO `appcms_app_list` VALUES ('127', '2', '悦头条', '悦头条', '2.0.5', '1533869260', '10.67MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28d076e017f.png', '看资讯，赚零花，下载即送红包，1元可提现，我已提现到账88元，你也试试吧<br />\n记得填写我的邀请码：<span style=\"color:#ff0000;\"><strong>04288000</strong></span>&nbsp;（填写邀请马上送1元）<br />\n1、聚合海量资讯内容，通过人工智能揣摩你的兴趣，分秒内就能懂你，量身推荐你感兴趣的内容；<br />\n2、聚合了各式各样海量的小视频，根据你的兴趣推送给你超级有趣的小视频，更有更多热门小视频，做朋友圈灵通的人；<br />\n3、邀请好友有惊喜，获取丰富的奖励，你赚，我赚，大家赚；<br />\n4、提现无门槛，随时提现，快速到账。', '', '', '悦头条', '1533869260', '0', '6', '1', 'qq1023992553', '0', '109', '6', '0', '0', '0', '', '悦头条', '悦头条', '悦头条');
INSERT INTO `appcms_app_list` VALUES ('128', '2', '趣专享', '趣专享', '3.2', '1533869265', '9M', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28d3e745cd7.png', '趣专享是一款逛逛还能赚零钱的APP，浏览商品赚金币，金币自动兑换现金，可直接提现。<br />\n不止浏览商品赚零钱，所有商品还能下单返利赚零钱，上不封顶！！更有签到、开宝箱、晒收入等丰富任务，动动手指钱就来！邀请收徒，徒弟贡献多，师傅赢得双倍收益，上不封顶！亲朋好友齐上阵。', '', '', '趣专享', '1533869265', '0', '6', '1', 'qq1023992553', '0', '109', '20', '0', '0', '0', '', '趣专享', '趣专享', '趣专享');
INSERT INTO `appcms_app_list` VALUES ('129', '2', '中华头条', '中华头条', '1.2.3', '1533869272', '9M ', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28d5f63e207.png', '中华头条APP，边看新闻边赚钱。注册即得1.5元红包，通过每日签到，阅读、分享文章，邀请好友建立师徒关系获得海量金币，次日即可结算提现至支付宝。中华头条是北京华网智讯信息有限公司开发的中华网新闻客户端，智能的推荐让您的阅读更高效。', '', '', '中华头条', '1533869272', '0', '6', '1', 'qq1023992553', '0', '109', '20', '0', '0', '0', '', '中华头条', '中华头条', '中华头条');
INSERT INTO `appcms_app_list` VALUES ('130', '2', '点点新闻', '点点新闻', '1.0.1', '1533869278', '6.15MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28d7f85f206.png', '点点新闻是看新闻就能赚钱的APP，点点读读，就能赚钱，一款让你的时间更有价值的轻娱乐软件，为您提供丰富的搞笑段子、有趣内容、在阅读娱乐的同时还可以获得红包收益，轻轻松松赚零花。', '', '', '点点新闻', '1533869278', '0', '8', '1', 'qq1023992553', '0', '109', '12', '0', '0', '0', '', '点点新闻', '点点新闻', '点点新闻');
INSERT INTO `appcms_app_list` VALUES ('131', '2', '一起赚', '一起赚', '1.5', '1533869284', '4.4MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28de4b10d2c.png', '一起赚，一起来赚钱，一起赚APP是通过试玩安卓应用来获得佣金的一款赚钱软件！简单的下载几个应用，试玩一会儿，就能获得高额奖励！奖励可直接提现至支付宝账户，安全快捷！加入一起赚就送3元左右红包。<br />\n<br />\n<span style=\"color:#0000ff;\">加入送3元左右红包，填写邀请码</span><span style=\"color:#ff0000;\">NBTTE0D</span><span style=\"color:#0000ff;\">，再奖励2元左右。</span><br />\n<br />\n软件特色：<br />\n下载试玩应用赚钱，单价0.35-2.5元<br />\n提现规则：10元提现微信，支付宝，当天到账。', '', '', '一起赚', '1533869284', '0', '9', '1', 'qq1023992553', '0', '130', '12', '0', '0', '0', '', '一起赚', '一起赚', '一起赚');
INSERT INTO `appcms_app_list` VALUES ('166', '1', '神灯赚钱', '神灯赚钱', '2.3.6', '1533869542', '7MB', '苹果系统', '', '/upload/img/2018/06/20/5b29abb7340ed.jpg', '神灯赚钱APP是上海清源绿网科技有限公司推出的基于苹果iOS的应用试玩体验手赚平台，应用单价1-2元，10元即可提现。<br />\n新用户下载神灯助手（朕知道了）进入神灯平台绑定微信、绑定手机号即送3元现金！', '', '', '神灯赚钱', '1533869542', '0', '9', '1', 'qq1023992553', '0', '609', '12', '0', '0', '0', '', '神灯赚钱', '神灯赚钱', '神灯赚钱');
INSERT INTO `appcms_app_list` VALUES ('167', '1', '蜜蜂试玩', '蜜蜂试玩', '7.2.1', '1533869536', '6MB', '苹果系统', '', '/upload/img/2018/06/20/5b29acd289da8.jpg', '蜜蜂试玩app是一款苹果手机赚钱软件，下载安装蜜蜂试玩app，轻松试玩有趣的推荐应用，就能赚佣金，利用碎片化时间，轻松试玩。每天只要轻松试玩几分钟，就能获得一次试玩奖励，任务更新，每天下午任务最多。<br />\n<br />\n1、注册送1元，任务单价1元左右，任务不需要首次<br />\n2、10元起提现到支付宝，每天下午任务较多', '', '', '蜜蜂试玩', '1533869536', '0', '9', '1', 'qq1023992553', '0', '609', '12', '0', '0', '0', '', '蜜蜂试玩', '蜜蜂试玩', '蜜蜂试玩');
INSERT INTO `appcms_app_list` VALUES ('168', '1', '海豚试玩', '海豚试玩', '2.3.3', '1533869530', '5MB', '苹果系统', '', '/upload/img/2018/06/20/5b29ae2495eb2.jpg', '海豚试玩，上海友动网络科技有限公司出品的苹果手机试玩赚钱app。想用手机试玩应用赚钱，就用海豚试玩app，任务单价1元起，10元起提现。<br />\n<br />\n1、苹果手机应用试玩赚钱，单价1元起<br />\n2、收徒享受徒弟每个任务提成5毛，单徒最高10元<br />\n3、满10元可申请支付宝提现，1-2个工作日到账', '', '', '海豚试玩', '1533869530', '0', '9', '1', 'qq1023992553', '0', '619', '24', '0', '0', '0', '', '海豚试玩', '海豚试玩', '海豚试玩');
INSERT INTO `appcms_app_list` VALUES ('146', '2', '知聊', '知聊', '8.36', '1533869424', '16MB', '不限', '', '/upload/img/2018/06/19/5b2916ad554e3.png', '知聊是一款能赚钱的社交软件，为用户提供各种社交聊天服务的安卓手机软件，用户可以在这里找到知心好友畅聊人生，详谈理想，各种视频，各种短信，各种语音，你的聊天方式你做主。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、用视频语音的方式，随时随地帮你解决烦恼；<br />\n　　2、对骚扰收费，不用担心别人骚扰你；<br />\n　　3、自拍审核加信用体系，拒绝不良用户；<br />\n　　4、聊天=赚钱，零碎时间，与人聊天替人解忧，赚取生活费；<br />\n　　5、奇葩的聊友圈，晒照也有价值；<br />\n　　6、邀请他人来玩更有钱景。', '', '', '知聊', '1533869424', '0', '9', '1', 'qq1023992553', '0', '129', '32', '0', '0', '0', '', '知聊', '知聊', '知聊');
INSERT INTO `appcms_app_list` VALUES ('133', '2', '搜狐资讯', '搜狐资讯', '5.23', '1533869296', '5MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28e312bfd5c.png', '搜狐新闻（资讯版），是搜狐媒体平台推出的一款阅读赚钱app，邀请好友最高赚3元，平台拥有大量优质文章，优质视频，让你在空闲时间刷刷新闻也能赚钱零花钱。', '', '', '搜狐资讯', '1533869296', '0', '9', '1', 'qq1023992553', '0', '109', '12', '0', '0', '0', '', '搜狐资讯', '搜狐资讯', '搜狐资讯');
INSERT INTO `appcms_app_list` VALUES ('134', '2', '趣多拍', '趣多拍', '3.5.1', '1533869306', '7MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28e430324d8.jpg', '趣多拍，看视频就能赚钱的app。趣多拍app是一款好看又能赚钱的视频app，趣多拍app全频道覆盖，涵盖超广泛，融入到每个人生活的日常，邀请好友一起加入每天轻松赚零钱。加入趣多拍app给你带来想不到的精彩好视频，让你一看就有好心情！<br />\n<br />\n如需填写邀请码，请填：A1101189，谢谢<br />\n<br />\n1、看视频能赚钱，一起拆红包，注册即送1.5元以上红包<br />\n2、看视频按照时长奖励，每30秒奖励一次，看的多奖励多<br />\n3、通常汇率10000金币=1元，满3元/5元可微信提现，赚钱好轻松', '', '', '趣多拍', '1533869306', '0', '9', '1', 'qq1023992553', '0', '109', '14', '0', '0', '0', '', '趣多拍', '趣多拍', '趣多拍');
INSERT INTO `appcms_app_list` VALUES ('173', '1', '试玩大师', '试玩大师', '3.2.3', '1533869495', '7.1MB', '苹果系统', '', '/upload/img/2018/06/20/5b29bab0a5c86.jpg', '试玩大师是一个苹果手机试玩应用奖励现金的平台，注册送1元，单价1元左右，10元就能提现。来试玩大师APP轻松试玩，实时奖励发放，快速现金提现。<br />\n<br />\n1、苹果手机试玩赚钱，单价8毛左右，简单任务能赚钱<br />\n2、收徒奖励徒弟任务50%的收益提成，每个徒弟最高10元<br />\n3、满10元即可支付宝提现，1-3天到账', '', '', '试玩大师', '1533869495', '0', '9', '1', 'qq1023992553', '0', '619', '4', '0', '0', '0', '', '试玩大师', '试玩大师', '试玩大师');
INSERT INTO `appcms_app_list` VALUES ('174', '1', '小猫赚钱', '小猫赚钱', '3.6.9', '1533869489', '5MB', '苹果系统', '', '/upload/img/2018/06/20/5b29be4040789.jpg', '小猫赚钱是一款苹果手机试玩应用就能赚钱的app，轻松试玩3分钟，即可获得现金奖励。用小猫赚钱下载应用领奖励，轻松兼职挣钱，上线初期任务都会比较多，单价0.7元-0.12元。<br />\n<br />\n【赚钱特点】<br />\n1、新手安装即送1元，试玩单价0.7-0.12元<br />\n2、收徒奖励1元+20%提成，单个徒弟最高提成100元<br />\n3、满10元可微信提现，工作日24小时到账', '', '', '小猫赚钱', '1533869489', '0', '9', '1', 'qq1023992553', '0', '609', '6', '0', '0', '0', '', '小猫赚钱', '小猫赚钱', '小猫赚钱');
INSERT INTO `appcms_app_list` VALUES ('165', '1', '秒赚大钱', '秒赚大钱', '3.2.7', '1533869508', '6MB', '苹果系统', '', '/upload/img/2018/06/20/5b29a8b75509d.png', '秒赚大钱ios，全网最火赚钱APP，10元起提现，试玩一个应用单价1元起，新用户送2元。<br />\n轻轻松松赚钱，真的躺着都会赚钱的平台！支持苹果手机和安卓手机', '', '', '秒赚大钱', '1533869508', '0', '9', '1', 'qq1023992553', '0', '619', '16', '0', '0', '0', '', '秒赚大钱', '秒赚大钱', '秒赚大钱');
INSERT INTO `appcms_app_list` VALUES ('162', '1', '今日赚', '今日赚', '3.5.2', '1533869443', '7MB', '苹果系统', '', '/upload/img/2018/06/20/5b29a5cd20d58.jpg', '今日赚ios，是国内最大的ASO搜索流量分发渠道，应用单价1元起，是北京上榜科技科技有限公司推出的苹果iOS试玩应用赚钱平台。拿起你的手机刷刷几个任务，每个月的的零花钱又有了。', '', '', '今日赚', '1533869443', '0', '9', '1', 'qq1023992553', '0', '619', '10', '0', '0', '0', '', '今日赚', '今日赚', '今日赚');
INSERT INTO `appcms_app_list` VALUES ('163', '1', '蝉试客', '蝉试客', '6.5.3', '1533869437', '6.2MB', '苹果系统', '', '/upload/img/2018/06/20/5b29a691df029.png', '蝉试客试玩有趣的APP，每月多赚500元，新用户注册送1元，10元提现，单价1元起。只要3分钟试玩体验，就能获得一次试玩奖励，利用碎片化时间，发现更多好玩应用。', '', '', '蝉试客', '1533869437', '0', '9', '1', 'qq1023992553', '0', '620', '5', '0', '0', '0', '', '蝉试客', '蝉试客', '蝉试客');
INSERT INTO `appcms_app_list` VALUES ('164', '1', '探米', '探米', '1.1.2', '1533869433', '5.92MB', '苹果系统', '', '/upload/img/2018/06/20/5b29a7e8b807b.jpg', '探米是一款苹果手机试玩赚钱平台，任务多，玩法多，提现稳定靠谱。探米app不仅仅有试玩任务，还有高额任务、打卡任务。<br />\n使用探米，试玩应用3分钟奖金即时到账，通过做任务，可获得高额的现金奖励。<br />\n<br />\n1、苹果系统专用试玩赚钱软件，试玩单价0.8元左右<br />\n2、收徒，徒弟每试玩1个任务额外奖励师傅0.5元，最高10元', '', '', '探米', '1533869433', '0', '9', '1', 'qq1023992553', '0', '609', '4', '0', '0', '0', '', '探米', '探米', '探米');
INSERT INTO `appcms_app_list` VALUES ('159', '1', '钱小喵', '钱小喵', '3.6.1', '1533869461', '5MB', '苹果系统', '', '/upload/img/2018/06/20/5b299fe383afa.png', '钱小喵，最新苹果赚钱平台，新平台上线任务量丰富，单价0.8一个量，每成功邀请一个好友奖励1元，徒弟做任务分成50%，徒孙分成5%。', '', '', '钱小喵', '1533869461', '0', '9', '1', 'qq1023992553', '0', '619', '16', '0', '0', '0', '', '钱小喵', '钱小喵', '钱小喵');
INSERT INTO `appcms_app_list` VALUES ('160', '1', '蚂蚁小咖', '蚂蚁小咖', '1.0.3', '1533869455', '13MB', '苹果系统', '', '/upload/img/2018/06/20/5b29a2d7dbfb3.png', '蚂蚁小咖app是一款试玩游戏赚钱的神器！这款手机赚钱软件只需要动动你的手指就下载系统推送额应用资源，就可以马上赚钱到口袋中了！加入送3元，满11元提现，单价1元起。通过试玩应用获得现金奖励并通过支付宝进行提现。有兴趣的小伙伴们不妨来下载试试吧!<br />\n<br />\n软件介绍： 蚂蚁小咖app是一款试玩应用、游戏赚钱的神器！这款手机赚钱软件只需要动动你的手指就下载系统推送额应用资源，就可以马上赚钱到口袋中了！每天都可以轻松赚取早餐钱哦！喜欢的同学不妨来下载体验下!<br />\n<br />\n软件特点：<br />\n界面简洁，赚钱给力； 邀请好友，赚钱更多； 支持支付宝提现、话费充值操作。&nbsp;', '', '', '蚂蚁小咖', '1533869455', '0', '9', '1', 'qq1023992553', '0', '609', '24', '0', '0', '0', '', '蚂蚁小咖', '蚂蚁小咖', '蚂蚁小咖');
INSERT INTO `appcms_app_list` VALUES ('171', '1', 'iMoney爱盈利', 'iMoney爱盈利', '3.6.2', '1533869513', '9MB', '苹果系统', '', '/upload/img/2018/06/20/5b29b128d4f4f.png', 'iMoney爱盈利：是国内最专业的苹果手机应用试玩平台，10元就能提现，多种赚钱方式让您多一份零花钱，平台任务量多，立刻加入送1元现金奖励。', '', '', 'iMoney爱盈利', '1533869513', '0', '9', '1', 'qq1023992553', '0', '609', '8', '0', '0', '0', '', 'iMoney爱盈利', 'iMoney爱盈利', 'iMoney爱盈利');
INSERT INTO `appcms_app_list` VALUES ('172', '1', '小鸟wifi', '小鸟wifi', '1.3.5', '1533869500', '10.92MB', '苹果系统', '', '/upload/img/2018/06/20/5b29b51b19ed0.jpg', '小鸟wifi，一款苹果手机赚钱平台，内置大量赚钱方式，动动手指，挖币赚大钱。&quot;使用小鸟WiFi，用户可以通过远程管理、网速测试、拉黑名单等功能控制一只小鸟路由器，并彻底解决家庭网络安全问题。<br />\n<br />\n下载试玩：下载任务中试玩3分钟即可获得人民币1-30元不等的收益，丰厚且快速。<br />\n任务返利：进行短期投资，是给大家提供的获取高收益方式之一。<br />\n新闻浏览：原有的嘿嘿新闻阅读奖励，新版本大家可以继续通过阅读新闻赚取收益。<br />\n分享收徒：赚钱方式增加，徒弟贡献的收益也一并增加。<br />\n路由挖币：通过路由器硬件获取收益，让你的&ldquo;坐享其成&rdquo;。<br />\n设备分销：不仅可以通过自己的路由器获取收益，好友通过自己分享购买产品，可以给自己带来高额的返利。<br />\n', '', '', '小鸟wifi', '1533869500', '0', '9', '1', 'qq1023992553', '0', '609', '6', '0', '0', '0', '', '小鸟wifi', '小鸟wifi', '小鸟wifi');
INSERT INTO `appcms_app_list` VALUES ('176', '1', '嘀嗒赚', '嘀嗒赚', '1.0.0', '1533869592', '2.98MB', '苹果手机iOS', '', '/upload/img/2018/06/20/5b29c20653a33.png', '嘀嗒赚是苹果手机APP试玩平台，旨在提供用户利用碎片化时间，下载APP软件试玩体验，并获取报酬，是一款便捷的微试玩项目。<br />\n任务简单 ，单价1元起，基本下载完就可以提交 10元提现。<br />\n重要的是全部不要首次，很给力，北京掌贝网络科技有限公司旗下。', '', '', '嘀嗒赚', '1533869592', '0', '9', '1', 'qq1023992553', '0', '609', '10', '0', '0', '0', '', '嘀嗒赚', '嘀嗒赚', '嘀嗒赚');
INSERT INTO `appcms_app_list` VALUES ('177', '1', '二鸟', '二鸟', '1.3.1', '1533869586', '22.1MB', '苹果手机', '', '/upload/img/2018/06/20/5b29c4286c9e9.jpg', '二鸟，苹果手机赚钱平台，下载安装立得赏金，每个应用单价1元左右，5元就可以提现。在这里可以与百万玩家一同体验不同的、新鲜有趣的APP，动动手指，体验不同的APP即可获得现金奖励。', '', '', '二鸟', '1533869586', '0', '9', '1', 'qq1023992553', '0', '609', '14', '0', '0', '0', '', '二鸟', '二鸟', '二鸟');
INSERT INTO `appcms_app_list` VALUES ('178', '1', '乐享看苹果', '乐享看', '1.0.1', '1533869581', '12.09MB', '不限', '', '/upload/img/2018/06/20/5b29c663907b4.png', '乐享看，是一个移动手机自阅赚钱平台，看新闻，看资讯，看视频都能赚金币，金币换零花钱，汇聚社会趣闻、奇趣、搞笑、健康、育儿等内容，随时随地看好文，尽情分享给好友~&nbsp; 来乐享看:加入就送2~88元现金。<br />\n<br />\n【赚钱特点】<br />\n1、实时更新高质量热点好文，包括搞笑、娱乐、猎奇、健康等各类新鲜内容，全面覆盖热点领域，让你的碎片化时间不再无趣！<br />\n2、分享新闻还能赚钱！动动手指一个月话费轻松到手，根本停不下来！<br />\n3、实时送上热点新闻，并且结合大数据、基于用户的行为数据 ，推荐你想看的内容！<br />\n4、邀请好友成为你的徒弟，每次徒弟赚钱你也赚钱，别人躺赢，你躺赚！<br />\n5、新人1元提现秒速到账，世界上没有比这更爽的事啦~', '', '', '乐享看', '1533869581', '0', '8', '1', 'qq1023992553', '0', '609', '8', '0', '0', '0', '', '乐享看', '乐享看', '乐享看');
INSERT INTO `appcms_app_list` VALUES ('179', '1', '狐狸赚', '狐狸赚', '1.0.2', '1533869576', '3.66MB', '苹果系统', '', '/upload/img/2018/06/20/5b29c99c913c4.png', '狐狸赚是一个用手机就能赚钱的应用平台，新用户送1元，10元就能提现，利用闲暇时间通过狐狸赚试玩体验苹果手机应用即可轻松获得现金奖励。友情提醒：新用户登录后请先绑定手机和微信，以免清理缓存后找不回账号。<br />\n<br />\n1、新用户送1元，试玩单价0.8元起，<br />\n2、每个徒弟完成每个任务，师傅获得0.5元，最高至10元<br />\n3、10元就能提现，支付宝1-3天到账', '', '', '狐狸赚', '1533869576', '0', '5', '1', 'qq1023992553', '0', '609', '14', '0', '0', '0', '', '狐狸赚', '狐狸赚', '狐狸赚');
INSERT INTO `appcms_app_list` VALUES ('181', '1', 'pp红包ios', 'pp红包ios', '1.1.0', '1533869565', '2.86MB', '苹果系统iOS', '', '/upload/img/2018/06/20/5b29ccc3dbfbc.PNG', 'pp红包ios，一个苹果手机赚钱平台，老平台信誉可靠，任务丰富，提现类型多，满10元就能提现，注册就送2元，快来赚你的红包吧。', '', '', 'pp红包ios', '1533869565', '0', '9', '1', 'qq1023992553', '0', '629', '18', '0', '0', '0', '', 'pp红包ios', 'pp红包ios', 'pp红包ios');
INSERT INTO `appcms_app_list` VALUES ('182', '1', '钱咖ios', '钱咖ios', '3.6.3', '1533869560', '5MB', '苹果系统', '', '/upload/img/2018/06/20/5b2a0005eabbe.jpg', '钱咖ios，一个不错的苹果手赚平台，注册完善资料就有2元，任务单价都在1元以上，还有双倍任务<br />\n任务量也比其他平台多，满10元就能提现，支持支付宝和微信，充话费。', '', '', '钱咖ios', '1533869560', '0', '9', '1', 'qq1023992553', '0', '649', '37', '0', '0', '0', '', '钱咖ios', '钱咖ios', '钱咖ios');
INSERT INTO `appcms_app_list` VALUES ('183', '1', '小鱼赚钱', '小鱼赚钱', '3.6.9', '1533869555', '9MB', '苹果系统', '', '/upload/img/2018/06/20/5b2a036c85112.png', '小鱼赚钱，2016最新上线的手赚平台（仅限iOS平台），安装即送2元，最靠谱的手机赚钱平台。<br />\n零投入，无需任何本金，下载APP试玩即可获得1-3元奖金，累计10元即可支付宝一键提现。', '', '', '小鱼赚钱', '1533869555', '0', '9', '1', 'qq1023992553', '0', '649', '36', '0', '0', '0', '', '小鱼赚钱', '小鱼赚钱', '小鱼赚钱');
INSERT INTO `appcms_app_list` VALUES ('132', '2', '快视频世界', '快视频世界', '2.6.3', '1533869290', '5.6MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28e0df2e2cd.jpg', '快视频是小米旗下一个短视频平台，目前注册为会员，每天签到，看视频都可以免费赚钱，999金币=3.5元，单干一天至少也能赚1元以上，最低满3元即可提现到微信零钱，不知道能不能长期持续下去，当前还算值得一做的小项目了！3元就能提现微信，门槛还是很低的，大家可以尝试做。<br />\n<br />\n下载app，打开，优先使用微信登陆，小米手机可以使用小米账号登录，登陆后在任务中心记得填写邀请码：K1458162<br />\n<br />\n1、小米旗下看视频赚钱，完成任务中心，单干日赚1元以上<br />\n2、收徒赚钱，邀请码：K1458162，收徒最高奖励999金币<br />\n3、满10元即可微信提现，低门槛，到账妥妥的<br />\n<br />\n该快视频app是小米公司旗下的，和之前360旗下的快视频不是一回事儿哦', '', '', '快视频世界', '1533869290', '0', '9', '1', 'qq1023992553', '0', '129', '8', '0', '0', '0', '', '快视频世界', '快视频世界', '快视频世界');
INSERT INTO `appcms_app_list` VALUES ('180', '1', '米趣', '米趣', '1.1.2', '1533869570', '5.23MB', '苹果手机', '', '/upload/img/2018/06/20/5b29cb3371978.png', '米趣，有趣的赚钱平台，一个近期推出的苹果赚钱软件，任务丰富，佣金单价1元起。<br />\n在家赚钱神器赚钱方式，让您多一份零花钱，用户可以通过安装应用，完成指定任务即可获得现金奖励，注册送0.88元现金红，零投资轻松赚钱，微信提现秒到账。', '', '', '米趣', '1533869570', '0', '9', '1', 'qq1023992553', '0', '609', '16', '0', '0', '0', '', '米趣', '米趣', '米趣');
INSERT INTO `appcms_app_list` VALUES ('143', '2', '学生赚', '学生赚', '6.18', '1533869330', '4.2MB', '不限', '', '/upload/img/2018/06/19/5b290ff3338c6.png', '学生赚-中国第一个专为学生而打造的手机赚钱平台,专为果粉们精心打造的手机赚钱app.2013年8月正式发布，首发当月即有30万用户，目前已是350万果粉们支付宝掌上提现神器！<br />\n<span style=\"color:#0000ff;\">注册填写邀请码：</span><span style=\"color:#ff0000;\">17179812</span><span style=\"color:#0000ff;\"> &nbsp;（随机1-10元红包）</span><br />\n<br />\n轻松兑换秒提现<br />\n三分钟玩转QB秒提现，移动话费，联通话费，电信话费，支付宝充值，财付通充值等12小时直充到账！<br />\n<br />\n操作简单无限赚<br />\n3分钟上手畅玩，摇一摇100%中大奖、分享赚学币、猜拳赢100万！九大分区海量任务学币赚不停！更有小黄24小时hi聊，有奖3D竞猜等娱乐引爆手赚时代！<br />\n<br />\n350万用户提现神器<br />\n一部苹果手机，下载即收益，每天轻松点点，电话煲、shopping、QBQ钻游戏会员，那都不是事儿！350万果粉都在玩，亲还在等什么？', '', '', '学生赚', '1533869330', '0', '9', '1', 'qq1023992553', '0', '119', '21', '0', '0', '0', '', '学生赚', '学生赚', '学生赚');
INSERT INTO `appcms_app_list` VALUES ('144', '2', '零用钱', '零用钱', '5.1.3', '1533869375', '3MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b2913c95f45c.png', '零用钱app，<span style=\"color:#ff0000;\">邀请码：13315174</span>（填写邀请码多送2元）<br />\n一款元老级的手赚平台，安装零用钱就送3元现金，已通过360安全卫士认证，是全国最可信的手机版赚钱软件。简洁的操作，尊贵的体验，只需轻松动动手指，轻松赚钱，每天一分钟安装手机软件，零用钱到手。', '', '', '零用钱', '1533869375', '0', '8', '1', 'qq1023992553', '0', '109', '15', '0', '0', '0', '', '零用钱', '零用钱', '零用钱');
INSERT INTO `appcms_app_list` VALUES ('169', '1', '钱脉', '钱脉', '1.3.2', '1533869523', '6MB', '苹果系统', '', '/upload/img/2018/06/20/5b29aee86a89b.jpg', '钱脉，一款苹果手机赚钱平台，内置大量ios赚钱佣金任务，要赚钱，找钱脉，钱脉APP是一款能把人脉变成钱脉的APP。<br />\n试玩一个应用单价1元，5元就能提现。', '', '', '钱脉', '1533869523', '0', '9', '1', 'qq1023992553', '0', '609', '14', '0', '0', '0', '', '钱脉', '钱脉', '钱脉');
INSERT INTO `appcms_app_list` VALUES ('170', '1', '可可赚', '可可赚', '3.5.3', '1533869518', '3MB', '苹果系统', '', '/upload/img/2018/06/20/5b29b0b1b7d17.jpg', '可可赚是一个苹果手机专用的APP试玩赚钱平台，完成平台的试玩任务，即可领取现金奖励，让有苹果设备的用户都能轻松赚钱。<br />\n<span style=\"color:#ff0000;\">如需填邀请码，请填：496383</span><br />\n<br />\n1、苹果手机试玩赚钱，注册送1元，任务单价1元起<br />\n2、徒弟每做1个任务提成0.5元，最高奖励30元/位<br />\n3、满8元可提现微信钱包，当天或次日到账', '', '', '可可赚', '1533869518', '0', '9', '1', 'qq1023992553', '0', '609', '24', '0', '0', '0', '', '可可赚', '可可赚', '可可赚');
INSERT INTO `appcms_app_list` VALUES ('122', '2', '快视频', '快视频', '3.52', '1533869226', '9.49M ', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28bb2c69ded.png', '快视频是360旗下推出的看视频领红包的APP，边看视频边赚钱，10元就能提现。看视频就能领红包，躺着也能赚钱！快视频APP全新升级，每天福利送不停，看视频就可以领取现金红包奖励，每天只用几分钟，赚钱根本停不下来。天天有钱赚，随时能提现，每天都像过大年&hellip;&hellip;<br />\n<br />\n【推广语】<br />\n①海量视频，人工智能推荐，懂你感兴趣的内容，还能边看视频边赚钱。<br />\n②邀请收徒，可获得拜师红包及观察期奖励，徒弟收徒，师爷也有奖励。<br />\n③收益以金币为单位，可兑换人民币，汇率随系统每日有所波动，10元提现。', '', '', '快视频', '1533869226', '0', '9', '1', 'qq1023992553', '0', '169', '37', '0', '0', '0', '', '快视频', '快视频', '快视频');
INSERT INTO `appcms_app_list` VALUES ('158', '1', '赚美金', '赚美金', '6.1.1', '1533869467', '9MB', '苹果系统', '', '/upload/img/2018/06/20/5b299dc283a1a.png', '赚美金ios，是一款让每个人都能赚钱的神奇应用！<br />\n别人教您花钱，我们教您赚钱！不投一分钱，动动手指试玩应用就能获得现金奖励。<br />\n支持支付宝、话费提现，闪电处理，极速到账。~~<br />\nPS:上午8-10点任务最多，下午3-5点任务最多', '', '', '赚美金', '1533869467', '0', '9', '1', 'qq1023992553', '0', '609', '4', '0', '0', '0', '', '赚美金', '赚美金', '赚美金');
INSERT INTO `appcms_app_list` VALUES ('161', '1', '掉钱眼儿', '掉钱眼儿', '3.6.2', '1533869449', '8MB', '苹果系统', '', '/upload/img/2018/06/20/5b29a42a10dd1.png', '掉钱眼儿ios，一款苹果手机试玩赚钱的平台，首次成功安装并激活，先领2元现金红包，用户下载APP试玩体验，即可获得奖励，人人都是&ldquo;应用体验师&rdquo;。试玩一款应用1-3元，任务一般晚上9点更新。', '', '', '掉钱眼儿', '1533869449', '0', '9', '1', 'qq1023992553', '0', '609', '4', '0', '0', '0', '', '掉钱眼儿', '掉钱眼儿', '掉钱眼儿');
INSERT INTO `appcms_app_list` VALUES ('118', '1', '每天赚点', '每天赚点', '', '1533869194', '', '', '', '/upload/img/2018/06/19/5b2861e4d64ff.png', '每天赚点是一个手机赚钱的应用，让用户在玩手机的同时还能赚到钱，用户可以通过试玩应用、每日抽奖、邀请好友和签到等赚取积分，还可以把积分变现成充值卡、Q币、支付宝充值等。关注每天赚点，每日赚钱最新任务，让你的钱包涨起来吧。 【快速赚钱】每天赚点快速赚钱每天更新新任务，单价高，建议每天早上，中午，晚上三个时间段登陆每天赚点刷新快速赚钱，尤其是一些限量任务奖励很高，先到先得。 【分享赚钱】每天赚点专门开辟了微信朋友圈赚钱的分享频道，用户只需简单点击分享，朋友圈好友点击就能获取0.05元的收入，秒赚2元。超简单，每天更新分享内容，搞笑，幽默，理财知识，养生，心灵鸡汤，内容丰富。 【提现简单快捷】每天赚点提现只需要绑定支付宝，申请提现，坐等24小时现金就到账。', '', '', '每天赚点', '1533869194', '0', '8', '1', 'qq1023992553', '0', '107', '0', '0', '0', '0', '', '', '', '');
INSERT INTO `appcms_app_list` VALUES ('119', '2', '酷划', '酷划', '3.2', '1533869203', '10M', 'Android', '', '/upload/img/2018/06/19/5b2871ecdc755.png', '<div style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, &quot;?????��&quot;, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;\">\n	<span style=\"color: rgb(105, 105, 105);\"><span style=\"font-size: 14px;\">注册时填写邀请码</span></span><span style=\"color:#ff0000;\"><span style=\"font-size:14px;\"><strong>894771108</strong></span></span><span style=\"color: rgb(105, 105, 105);\"><span style=\"font-size: 14px;\">&nbsp;&nbsp;&nbsp; 5元现金立马到手！<br />\n	<br />\n	酷划App锁屏是一款解锁屏幕就能赚钱的App，是全球最大赚钱锁屏应用Cashslide的中国版。您安装后只需滑动锁屏界面，就能探索手机锁屏上呈现的精彩内容。向右滑动， 解锁进入桌面；向左滑动，点击广告或者下载推荐软件。酷币右滑解锁和左滑点击或下载均能获得现金奖励。全球最火锁屏APP正式登陆中国，解锁就送你钱哦，可随时提现，也可兑换成话费、流量包、京东卡等。全球用户累计返现超过3亿元。<br />\n	<br />\n	全球超火赚钱锁屏酷划已来到小伙伴身边了，每天解锁50次，一年可赚上千块，不用太可惜了<br />\n	<br />\n	拥有酷划您可以：<br />\n	1.上下划屏，海量壁纸新鲜资讯一手掌握<br />\n	2.左右划动，手到钱来,收益多多<br />\n	3.邀请好友，立赚2元, 分享快乐<br />\n	4.帐户积累金额商城购物，充值，提现任你挑选<br />\n	5.本地化服务增加，便利生活从开启锁屏那一刻起<br />\n	6.搜索侧边栏惊喜开启，查天气用搜索划划就搞定<br />\n	7.APP内有趣活动，周周都有,惊喜奖励从天而降<br />\n	还等什么，一起加入吧。赚钱锁屏伴你智慧生活<br />\n	我们致力为您提供更丰厚的收益与更好的用户体验！</span></span></div>\n', '', '', '酷划', '1533869203', '0', '8', '1', 'qq1023992553', '0', '142', '20', '0', '0', '0', '', '酷划', '酷划', '酷划');
INSERT INTO `appcms_app_list` VALUES ('120', '2', '惠头条', '惠头条', '5.3', '1533869210', '10M', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28835a4e864.png', '<span style=\"font-size:14px;\">下载填写我的邀请码<span style=\"color:#ff0000;\"><strong>80407085</strong></span>&nbsp; （送3元）<br />\n最低1元钱就可以提现哦；<br />\n<br />\n惠头条赚钱app，一款既可以让你在这里阅读最新的资讯，又可以赚取零花钱的手机软件。软件功能十分强大，只要阅读时间达到就可以免费领红包，需要的快来下载吧！最低1元起提现，<br />\n<br />\n每天的最新资讯，各种优质读本，搞笑段子，热点视频，在软件中都可以搜索到，流量需求少还可以快速跟上新奇的事物！<br />\n<br />\n1、做更有价值的头条。<br />\n2、边阅读边赚钱，红包拿到手软。<br />\n3、集有趣、有料、有品内容于一体；智能推荐，你的资讯头条专门为你定制。<br />\n4、精彩评论互动，趣味视频，海量内容，人生漫漫精彩从这里开始。<br />\n5、邀请好友有惊喜，万元金币享不停，有趣更有钱，邀请一个下线赚3元，加上30%的收入提成。<br />\n6、头条帐户金额随时提现，还有商城好礼任你挑选。</span>', '', '', '惠头条', '1533869210', '0', '9', '1', 'qq1023992553', '0', '102', '13', '0', '0', '0', '', '惠头条', '惠头条', '惠头条');
INSERT INTO `appcms_app_list` VALUES ('121', '2', '柚钱赚', '柚钱赚', '6.25', '1533869219', '4.58M', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28b635aa4fb.jpg', '柚钱赚通过试玩应用来奖励用户佣金的一款会赚钱应用。邀请码：133827，只要你是安卓手机，简单的下载几个应用，试玩一会儿，就能获得奖励。奖励可直接提现至微信账户里，安全快捷。<br />\n<br />\n邀请朋友作为你的徒弟，还能获得额外奖励，徒弟做任务，还能额外给你带来提成收益，提成可达50%！徒弟玩应用，你还能收钱！高质量徒弟，还能带给你额外现金奖励红包！&nbsp;', '', '', '柚钱赚', '1533869219', '0', '6', '1', 'qq1023992553', '0', '109', '16', '0', '0', '0', '', '柚钱赚', '柚钱赚', '柚钱赚');
INSERT INTO `appcms_app_list` VALUES ('135', '2', '快头条', '快头条', '3.2.1', '1533869312', '20MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28e6ebe2ebc.jpg', '快头条是凤凰新闻旗下看新闻赚钱的软件，凤凰新闻的权威相信大家都知道，新闻快，挣钱更快！注册就送1元，看新闻、评论新闻、分享新闻都能赚钱哦。<br />\n<br />\n1、软件特色：注册送2元，阅读新闻赚钱，每篇单价10金币，上限50篇<br />\n2、提现规则：15元提现支付宝，三个工作日到账', '', '', '快头条', '1533869312', '0', '8', '1', 'qq1023992553', '0', '19', '20', '0', '0', '0', '', '快头条', '快头条', '快头条');
INSERT INTO `appcms_app_list` VALUES ('136', '2', '火锅浏览器', '火锅浏览器', '6.3.3', '1533869324', '8.7MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b28eb6ee3f92.png', '火锅浏览器，使用浏览器就能赚钱的app，边上网边赚钱，贴心的网页浏览体验！<br />\n<br />\n【赚钱特点】<br />\n1、新人红包：现在注册，随机获得2~200元现金，可提现<br />\n2、极速提现：10元就能微信提现，无限库存<br />\n3、阅读红包：上网看新闻都能赚金币，每天40次阅读金币，每小时3个新闻红包<br />\n4、收徒奖励：邀请好友用火锅，你和他都能获得红包<br />\n5、网址访问：智能压缩省流量，网址秒开，给你飞一般的上网体验<br />\n6、智能搜索：强大的搜索引擎，海量内容，为你找到想要的答案', '', '', '火锅浏览器', '1533869324', '0', '9', '1', 'qq1023992553', '0', '108', '6', '0', '0', '0', '', '火锅浏览器', '火锅浏览器', '火锅浏览器');
INSERT INTO `appcms_app_list` VALUES ('137', '2', '趣头条', '趣头条', '1.1.5', '1533869365', '2.90 MB', 'Android 3.3以上', '', '/upload/img/2018/06/19/5b28ffb6b765a.png', '趣头条app，一款看新闻资讯也能赚钱的app，提现多次，放心体验，创新模式的生活资讯阅读应用，集合最新的生活、娱乐、社会、养生、时尚等海量新闻看点呈现给用户。在阅读资讯的同时，还有丰富的活动、宝箱、福利、等奖励帮助用户在养成良好阅读习惯的同时获取丰厚的现金奖励<br />\n奖励制度：<br />\n1.活动期间，收徒最高奖励7元，时常有收徒活动。<br />\n2.多种赚钱方式，赚取点点滴滴，一个月也能积累几十元哦<br />\n3.满30元就能提现到微信。<br />\n4.答题赚钱，每天几十万答题奖金等你拿。', '', '', '趣头条', '1533869365', '0', '9', '1', 'qq1023992553', '0', '119', '24', '0', '0', '0', '', '趣头条', '趣头条', '趣头条');
INSERT INTO `appcms_app_list` VALUES ('138', '2', '全民头条', '全民头条', '1.2.9', '1533869359', '8.73MB', '不限', '', '/upload/img/2018/06/19/5b2901aab348e.jpg', '全民头条是一款有价值的新闻资讯应用软件，每天都会更新佣金任务，在线阅读资讯就能轻松赚零花。使用全民头条app，看新闻、赢好礼，每天活动送不停，宝箱、福利等奖励让阅读变得更有价值，邀请好友一起看，有趣还有钱，目前兑换汇率极高，1000金币=1.7元，无上限转发收益，无上限阅读收益。<br />\n<div>\n	立即下载&gt;&gt;<img src=\"file:///C:UsersyanAppDataLocalTemp[5UQ[BL(6~BS2JV6W}N6[%S.png\" />http://url.cn/5tBxo0N &nbsp;&nbsp;邀请码：<span style=\"color:#ff0000;\">O4lYnRa9Kj</span> &nbsp;（填送2元）</div>\n<br />\n【赚钱介绍】<br />\n1、注册送1元以上红包，自阅10金币，无上限，单次转发被点击30金币，同样无上限<br />\n2、收徒享受1-8元随机奖励+无上限金币进贡，徒弟徒孙越多，向您进贡收益也越多<br />\n3、金币会在凌晨自动兑换零钱，零钱满30元可申请支付宝提现，3-5个工作日到账', '', '', '全民头条', '1533869359', '0', '8', '1', 'qq1023992553', '0', '109', '23', '0', '0', '0', '', '全民头条', '全民头条', '全民头条');
INSERT INTO `appcms_app_list` VALUES ('139', '2', '今日视点', '今日视点', '3.68', '1533869353', '8MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b29066c95418.png', '今日视点，每天看新闻看资讯，收获知识还能赚零花钱，在家兼职赚钱神器，一款自阅资讯赚钱平台，注册奖励1元，每日签到送100金币递增， 连续7天签到送100金币大礼包，每天邀请好友最高赚105元，自阅、分享、评论 、晒收入、分享收徒都有金币奖励!<br />\n<br />\n【赚钱特点】<br />\n1、徒弟每次有效阅读都会奖励师傅30%的收益提成<br />\n2、邀请好友每天最高领105元，邀请徒弟奖励3元分批发放<br />\n3、首次成功收徒奖励2元现金红包<br />\n4、每天签到，开宝箱，阅读新闻，发表评论，转发分享等等都能拿金币', '', '', '今日视点', '1533869353', '0', '9', '1', 'qq1023992553', '0', '107', '24', '0', '0', '0', '', '今日视点', '今日视点', '今日视点');
INSERT INTO `appcms_app_list` VALUES ('140', '2', '百姓头条', '百姓头条', '1.5', '1533869346', '3.9MB', 'Android2.0以上', '', '/upload/img/2018/06/19/5b29083daec8b.png', '百姓头条是一款自阅看新闻赚钱的软件，阅读资讯每次1分，5元就可提现，连续30天每天阅读8篇以上奖励100元。新用户注册领1-200元随机红包，大多是1元左右。<br />\n<br />\n阅读奖励：<br />\n首次登陆当天阅读3篇以上奖励0.5元<br />\n连续3天每天阅读3篇以上奖励0.5元<br />\n连续6天每天阅读3篇以上奖励1元<br />\n连续9天每天阅读4篇以上奖励2元<br />\n连续12天每天阅读4篇以上奖励4元<br />\n连续15天每天阅读5篇以上奖励8元<br />\n连续18天每天阅读5篇以上奖励10元<br />\n连续21天每天阅读8篇以上奖励24元<br />\n连续30天每天阅读8篇以上奖励50元，同时还有其他更多奖励敬请体验。', '', '', '百姓头条', '1533869346', '0', '9', '1', 'qq1023992553', '0', '109', '23', '0', '0', '0', '', '百姓头条', '百姓头条', '百姓头条');

-- ----------------------------
-- Table structure for `appcms_cate_relation`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_cate_relation`;
CREATE TABLE `appcms_cate_relation` (
  `relation_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '关系ID',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '类型 0=应用 1=资讯',
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '资讯ID，应用ID',
  `id_down` int(11) NOT NULL DEFAULT '0' COMMENT '下载量',
  `id_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `id_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `id_create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `id_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '访问量',
  PRIMARY KEY (`relation_id`),
  KEY `cate_id` (`cate_id`),
  KEY `id_update_time` (`cate_id`,`id_update_time`),
  KEY `id_down` (`cate_id`,`id_down`),
  KEY `id_order` (`cate_id`,`id_order`),
  KEY `order_id_update` (`cate_id`,`id_order`,`id_update_time`),
  KEY `order_id_down` (`cate_id`,`id_order`,`id_down`),
  KEY `id_visitors` (`cate_id`,`id_visitors`),
  KEY `id_create_time` (`cate_id`,`id_create_time`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COMMENT='分类关系表';

-- ----------------------------
-- Records of appcms_cate_relation
-- ----------------------------
INSERT INTO `appcms_cate_relation` VALUES ('233', '1', '0', '180', '16', '0', '1533869570', '1529465671', '609');
INSERT INTO `appcms_cate_relation` VALUES ('158', '19', '1', '5', '0', '0', '1528903430', '1528900074', '5');
INSERT INTO `appcms_cate_relation` VALUES ('196', '2', '0', '143', '21', '0', '1533869330', '1529417765', '119');
INSERT INTO `appcms_cate_relation` VALUES ('243', '1', '0', '190', '2', '0', '1533869626', '1531664481', '509');
INSERT INTO `appcms_cate_relation` VALUES ('242', '1', '0', '189', '2', '0', '1533869632', '1531660461', '509');
INSERT INTO `appcms_cate_relation` VALUES ('238', '2', '0', '185', '2', '0', '1533869657', '1531627774', '109');
INSERT INTO `appcms_cate_relation` VALUES ('244', '1', '0', '191', '0', '0', '1533869620', '1531665103', '509');
INSERT INTO `appcms_cate_relation` VALUES ('219', '1', '0', '166', '12', '0', '1533869542', '1529457617', '609');
INSERT INTO `appcms_cate_relation` VALUES ('229', '1', '0', '176', '10', '0', '1533869592', '1529463333', '609');
INSERT INTO `appcms_cate_relation` VALUES ('239', '1', '0', '186', '0', '0', '1533869651', '1531646645', '509');
INSERT INTO `appcms_cate_relation` VALUES ('185', '2', '0', '132', '8', '0', '1533869290', '1529405771', '129');
INSERT INTO `appcms_cate_relation` VALUES ('218', '1', '0', '165', '16', '0', '1533869508', '1529457029', '619');
INSERT INTO `appcms_cate_relation` VALUES ('226', '1', '0', '173', '4', '0', '1533869495', '1529461458', '619');
INSERT INTO `appcms_cate_relation` VALUES ('240', '1', '0', '187', '0', '0', '1533869645', '1531648692', '509');
INSERT INTO `appcms_cate_relation` VALUES ('241', '1', '0', '188', '0', '0', '1533869637', '1531659000', '509');
INSERT INTO `appcms_cate_relation` VALUES ('214', '1', '0', '161', '4', '0', '1533869449', '1529455679', '609');
INSERT INTO `appcms_cate_relation` VALUES ('245', '1', '0', '192', '2', '0', '1533869615', '1531668648', '509');
INSERT INTO `appcms_cate_relation` VALUES ('211', '1', '0', '158', '4', '0', '1533869467', '1529454012', '609');
INSERT INTO `appcms_cate_relation` VALUES ('247', '1', '0', '194', '5', '0', '1533869605', '1531669694', '519');
INSERT INTO `appcms_cate_relation` VALUES ('246', '1', '0', '193', '5', '0', '1533869610', '1531669125', '509');
INSERT INTO `appcms_cate_relation` VALUES ('197', '2', '0', '144', '15', '0', '1533869375', '1529418847', '109');
INSERT INTO `appcms_cate_relation` VALUES ('237', '1', '0', '184', '0', '0', '1533869551', '1531626762', '109');
INSERT INTO `appcms_cate_relation` VALUES ('177', '1', '0', '124', '12', '0', '1533869242', '1529399582', '109');
INSERT INTO `appcms_cate_relation` VALUES ('159', '19', '1', '6', '0', '0', '1528903687', '1528900167', '21');
INSERT INTO `appcms_cate_relation` VALUES ('161', '19', '1', '8', '0', '0', '1528903552', '1528900277', '6');
INSERT INTO `appcms_cate_relation` VALUES ('160', '19', '1', '7', '0', '0', '1528903698', '1528900213', '39');
INSERT INTO `appcms_cate_relation` VALUES ('162', '19', '1', '9', '0', '0', '1528903671', '1528900327', '7');
INSERT INTO `appcms_cate_relation` VALUES ('194', '2', '0', '141', '11', '0', '1533869340', '1529416066', '109');
INSERT INTO `appcms_cate_relation` VALUES ('163', '19', '1', '10', '0', '0', '1528903462', '1528900373', '5');
INSERT INTO `appcms_cate_relation` VALUES ('164', '19', '1', '11', '0', '0', '1528903488', '1528900418', '3');
INSERT INTO `appcms_cate_relation` VALUES ('96', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('97', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('98', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('99', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('100', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('101', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('102', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('103', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('176', '2', '0', '123', '4', '0', '1533869233', '1529397380', '109');
INSERT INTO `appcms_cate_relation` VALUES ('105', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('106', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('107', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('108', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('109', '19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `appcms_cate_relation` VALUES ('157', '19', '1', '4', '0', '0', '1528903410', '1528899889', '7');
INSERT INTO `appcms_cate_relation` VALUES ('115', '19', '1', '3', '0', '0', '1528903565', '1528780760', '9');
INSERT INTO `appcms_cate_relation` VALUES ('165', '19', '1', '12', '0', '0', '1528903660', '1528900461', '9');
INSERT INTO `appcms_cate_relation` VALUES ('222', '1', '0', '169', '14', '0', '1533869523', '1529458425', '609');
INSERT INTO `appcms_cate_relation` VALUES ('167', '19', '1', '14', '0', '0', '1528903637', '1528900547', '9');
INSERT INTO `appcms_cate_relation` VALUES ('168', '19', '1', '15', '0', '0', '1528903651', '1528900584', '12');
INSERT INTO `appcms_cate_relation` VALUES ('175', '2', '0', '122', '37', '0', '1533869226', '1529396235', '169');
INSERT INTO `appcms_cate_relation` VALUES ('171', '1', '0', '118', '0', '0', '1533869194', '1529373210', '107');
INSERT INTO `appcms_cate_relation` VALUES ('172', '2', '0', '119', '20', '0', '1533869203', '1529379016', '142');
INSERT INTO `appcms_cate_relation` VALUES ('173', '2', '0', '120', '13', '0', '1533869210', '1529381915', '102');
INSERT INTO `appcms_cate_relation` VALUES ('174', '2', '0', '121', '16', '0', '1533869219', '1529394811', '109');
INSERT INTO `appcms_cate_relation` VALUES ('178', '2', '0', '125', '4', '0', '1533869247', '1529400535', '109');
INSERT INTO `appcms_cate_relation` VALUES ('179', '2', '0', '126', '26', '0', '1533869254', '1529401002', '120');
INSERT INTO `appcms_cate_relation` VALUES ('180', '2', '0', '127', '6', '0', '1533869260', '1529401504', '109');
INSERT INTO `appcms_cate_relation` VALUES ('181', '2', '0', '128', '20', '0', '1533869265', '1529402444', '109');
INSERT INTO `appcms_cate_relation` VALUES ('182', '2', '0', '129', '20', '0', '1533869272', '1529402929', '109');
INSERT INTO `appcms_cate_relation` VALUES ('183', '2', '0', '130', '12', '0', '1533869278', '1529403489', '109');
INSERT INTO `appcms_cate_relation` VALUES ('184', '2', '0', '131', '12', '0', '1533869284', '1529405146', '130');
INSERT INTO `appcms_cate_relation` VALUES ('186', '2', '0', '133', '12', '0', '1533869296', '1529406257', '109');
INSERT INTO `appcms_cate_relation` VALUES ('187', '2', '0', '134', '14', '0', '1533869306', '1529406564', '109');
INSERT INTO `appcms_cate_relation` VALUES ('188', '2', '0', '135', '20', '0', '1533869312', '1529407220', '19');
INSERT INTO `appcms_cate_relation` VALUES ('189', '2', '0', '136', '6', '0', '1533869324', '1529408473', '108');
INSERT INTO `appcms_cate_relation` VALUES ('190', '2', '0', '137', '24', '0', '1533869365', '1529413625', '119');
INSERT INTO `appcms_cate_relation` VALUES ('191', '2', '0', '138', '23', '0', '1533869359', '1529414090', '109');
INSERT INTO `appcms_cate_relation` VALUES ('192', '2', '0', '139', '24', '0', '1533869353', '1529415306', '107');
INSERT INTO `appcms_cate_relation` VALUES ('193', '1', '0', '140', '23', '0', '1533869346', '1529415800', '109');
INSERT INTO `appcms_cate_relation` VALUES ('195', '2', '0', '142', '5', '0', '1533869335', '1529417575', '130');
INSERT INTO `appcms_cate_relation` VALUES ('199', '2', '0', '146', '32', '0', '1533869424', '1529419446', '129');
INSERT INTO `appcms_cate_relation` VALUES ('200', '1', '0', '147', '27', '0', '1533869418', '1529420028', '617');
INSERT INTO `appcms_cate_relation` VALUES ('201', '1', '0', '148', '27', '0', '1533869412', '1529420675', '619');
INSERT INTO `appcms_cate_relation` VALUES ('202', '1', '0', '149', '12', '0', '1533869407', '1529421378', '609');
INSERT INTO `appcms_cate_relation` VALUES ('203', '1', '0', '150', '24', '0', '1533869402', '1529422040', '609');
INSERT INTO `appcms_cate_relation` VALUES ('204', '1', '0', '151', '4', '0', '1533869396', '1529422530', '609');
INSERT INTO `appcms_cate_relation` VALUES ('205', '1', '0', '152', '15', '0', '1533869391', '1529423184', '609');
INSERT INTO `appcms_cate_relation` VALUES ('206', '1', '0', '153', '14', '0', '1533869385', '1529423975', '609');
INSERT INTO `appcms_cate_relation` VALUES ('207', '1', '0', '154', '26', '0', '1533869380', '1529424820', '619');
INSERT INTO `appcms_cate_relation` VALUES ('208', '1', '0', '155', '4', '0', '1533869482', '1529451028', '609');
INSERT INTO `appcms_cate_relation` VALUES ('209', '1', '0', '156', '25', '0', '1533869477', '1529451727', '620');
INSERT INTO `appcms_cate_relation` VALUES ('210', '1', '0', '157', '4', '0', '1533869472', '1529452902', '609');
INSERT INTO `appcms_cate_relation` VALUES ('212', '1', '0', '159', '16', '0', '1533869461', '1529454595', '619');
INSERT INTO `appcms_cate_relation` VALUES ('213', '1', '0', '160', '24', '0', '1533869455', '1529455359', '609');
INSERT INTO `appcms_cate_relation` VALUES ('215', '1', '0', '162', '10', '0', '1533869443', '1529456098', '619');
INSERT INTO `appcms_cate_relation` VALUES ('216', '1', '0', '163', '5', '0', '1533869437', '1529456292', '620');
INSERT INTO `appcms_cate_relation` VALUES ('217', '1', '0', '164', '4', '0', '1533869433', '1529456644', '609');
INSERT INTO `appcms_cate_relation` VALUES ('220', '1', '0', '167', '12', '0', '1533869536', '1529457894', '609');
INSERT INTO `appcms_cate_relation` VALUES ('221', '1', '0', '168', '24', '0', '1533869530', '1529458286', '619');
INSERT INTO `appcms_cate_relation` VALUES ('223', '1', '0', '170', '24', '0', '1533869518', '1529458886', '609');
INSERT INTO `appcms_cate_relation` VALUES ('224', '1', '0', '171', '8', '0', '1533869513', '1529459001', '609');
INSERT INTO `appcms_cate_relation` VALUES ('225', '1', '0', '172', '6', '0', '1533869500', '1529460021', '609');
INSERT INTO `appcms_cate_relation` VALUES ('227', '1', '0', '174', '6', '0', '1533869489', '1529462354', '609');
INSERT INTO `appcms_cate_relation` VALUES ('228', '1', '0', '175', '20', '0', '1533869597', '1529462693', '619');
INSERT INTO `appcms_cate_relation` VALUES ('230', '1', '0', '177', '14', '0', '1533869586', '1529463863', '609');
INSERT INTO `appcms_cate_relation` VALUES ('231', '1', '0', '178', '8', '0', '1533869581', '1529464450', '609');
INSERT INTO `appcms_cate_relation` VALUES ('232', '1', '0', '179', '14', '0', '1533869576', '1529465266', '609');
INSERT INTO `appcms_cate_relation` VALUES ('234', '1', '0', '181', '18', '0', '1533869565', '1529466075', '629');
INSERT INTO `appcms_cate_relation` VALUES ('235', '1', '0', '182', '37', '0', '1533869560', '1529479193', '649');
INSERT INTO `appcms_cate_relation` VALUES ('236', '1', '0', '183', '36', '0', '1533869555', '1529480071', '649');

-- ----------------------------
-- Table structure for `appcms_category`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_category`;
CREATE TABLE `appcms_category` (
  `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父类id',
  `cname` varchar(100) NOT NULL DEFAULT '' COMMENT '分类名称',
  `cname_py` varchar(100) NOT NULL DEFAULT '' COMMENT '分类字母别名',
  `ctitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `ckey` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `cdesc` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `corder` int(11) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `cimg` varchar(100) NOT NULL DEFAULT '' COMMENT '分类图片',
  `cat_show` int(2) NOT NULL DEFAULT '1' COMMENT '是否显示分类',
  `tpl_index` varchar(500) NOT NULL DEFAULT '' COMMENT '封面模板',
  `tpl_listvar` varchar(500) NOT NULL DEFAULT '' COMMENT '列表变量模板',
  `tpl_content` varchar(500) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '分类类型：应用=0，资讯=1',
  `cdata` int(11) NOT NULL DEFAULT '0' COMMENT '分类下的数据',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of appcms_category
-- ----------------------------
INSERT INTO `appcms_category` VALUES ('1', '0', '苹果赚钱', '﻿pingguozuanqian', '', '', '', '1', '', '1', '', '', '', '0', '50');
INSERT INTO `appcms_category` VALUES ('2', '0', '安卓赚钱', '﻿anzhuozuanqian', '', '', '', '2', '', '1', '', '', '', '0', '26');
INSERT INTO `appcms_category` VALUES ('19', '0', '手赚资讯', '﻿shouzuanzixun', '', '', '', '5', '', '1', '', '', '', '1', '25');

-- ----------------------------
-- Table structure for `appcms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_comment`;
CREATE TABLE `appcms_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '应用id，资讯id',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '评论类型：应用=0，资讯=1',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '评论内容',
  `date_add` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `uname` varchar(500) NOT NULL DEFAULT '' COMMENT '昵称',
  `ip` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ip地址',
  `ip_addr` varchar(200) NOT NULL DEFAULT '' COMMENT '地理位置',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级id',
  `is_check` int(1) NOT NULL DEFAULT '1' COMMENT '是否审核',
  `son` int(11) NOT NULL DEFAULT '0' COMMENT '子评论数',
  `good` int(11) NOT NULL DEFAULT '0' COMMENT '赞',
  `bad` int(11) NOT NULL DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`comment_id`),
  KEY `id_type` (`id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of appcms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `appcms_flink`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_flink`;
CREATE TABLE `appcms_flink` (
  `flink_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情ID',
  `flink_name` varchar(100) NOT NULL DEFAULT '' COMMENT '链接文字',
  `flink_img` varchar(500) NOT NULL DEFAULT '' COMMENT '链接图片',
  `flink_url` varchar(500) NOT NULL DEFAULT '' COMMENT '链接地址',
  `flink_is_site` int(2) DEFAULT '0' COMMENT '0=首页，1代表全站',
  `flink_order` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`flink_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of appcms_flink
-- ----------------------------
INSERT INTO `appcms_flink` VALUES ('1', '微信赚钱', '', 'http://sz.xinqyi.com/', '1', '1');
INSERT INTO `appcms_flink` VALUES ('2', '奇酷手赚网', '', 'http://sz.xinqyi.com/', '1', '3');
INSERT INTO `appcms_flink` VALUES ('3', '手机赚钱', '', 'http://sz.xinqyi.com/', '1', '2');

-- ----------------------------
-- Table structure for `appcms_info_list`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_info_list`;
CREATE TABLE `appcms_info_list` (
  `info_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '资讯id',
  `last_cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '终极分类ID',
  `info_title` varchar(500) NOT NULL DEFAULT '' COMMENT '标题',
  `info_stitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `info_img` varchar(500) NOT NULL DEFAULT '' COMMENT '缩略图',
  `info_desc` varchar(500) NOT NULL DEFAULT '' COMMENT '摘要',
  `info_body` text COMMENT '详情',
  `info_tags` varchar(1000) NOT NULL DEFAULT '' COMMENT '标签',
  `info_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `info_from` varchar(500) NOT NULL DEFAULT '' COMMENT '来源',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发布人ID',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '发布人',
  `info_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论量',
  `info_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `info_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `info_url` varchar(500) NOT NULL DEFAULT '' COMMENT '外部URL',
  PRIMARY KEY (`info_id`),
  KEY `cate_update_time` (`last_cate_id`,`info_update_time`),
  KEY `cate_order` (`last_cate_id`,`info_order`),
  KEY `cate_visitor` (`last_cate_id`,`info_visitors`),
  KEY `cate_create_time` (`last_cate_id`,`create_time`),
  KEY `info_update_time` (`info_update_time`),
  KEY `info_order` (`info_order`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='资讯表';

-- ----------------------------
-- Records of appcms_info_list
-- ----------------------------
INSERT INTO `appcms_info_list` VALUES ('4', '19', '银联旗下云闪付签到天天领红包', '银联旗下云闪付签到天天领红包', '/upload/img/2018/06/13/5b212913d5ede.jpg', '', '<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\"><img src=\"/upload/img/2018/06/13/5b212982a1a02.jpg\" /><br />\n同时新用户注册并实名绑卡，可获得最高88元新人红包，活动即日起至2018年6月30日。新用户在活动期间注册云闪付APP，绑定本人银行卡并进行实名认证、银行卡开通在线支付，且注册后7天内使用云闪付APP完成1笔二维码交易，即可获得随机最高88元的银联红包奖励。</span><br />\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	活动形式</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	1、活动期间登录云闪付APP，每天均可点击首 页签到动态图进入活动页面，点击&ldquo;签到&rdquo;领取红 包，红包金额随机，最高88元。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	2、同一用户每天可签到领取1个红包。如当天未 参与签到，则无法领取当天的签到红包。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	3、用户须先注册云闪付APP，绑定本人银行卡 并进行实名认证、银行卡开通在线支付，否则无 法领取红包。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	4、账户实名认证：在云闪付APP中，通过&ldquo;我的 卡包立即添加您的银行卡&rdquo;，或通过&ldquo;我的身 份信息&rdquo;等入口，成功绑定本人银行卡，完成账 户实名认证。&ldquo;我的身份信息&rdquo;显示&ldquo;已认证&rdquo;， 即成功完成账户实名认证。</div>\n', '可领取,云闪付,最高88元,领取红包,88元,最高,,最高88元,银联旗下,领取红包,,签到领红包,银联云闪付,可以领红包,可签到领红包', '1528903410', '1528899889', '', '1', 'qq1023992553', '0', '7', '0', '');
INSERT INTO `appcms_info_list` VALUES ('3', '19', '云闪付送您最高2018元红包', '', '/upload/img/2018/06/12/5b1f57c7a6c5a.jpg', '', '云闪付APP和大家共同度过的第一个新年，当然为大家准备了红红火火的红包！即日起至3月2日，开门大吉红包、天天签到红包、邀请亲友红包、发起转帐红包等云闪付APP四大新春红包，最高2018元等你领，福气一整年！更有12306购票立减最高2018元优惠！<br />\n<img src=\"/upload/img/2018/06/12/5b1f57beb68af.jpg\" />', '', '1528903565', '1528780760', '', '1', 'qq1023992553', '0', '9', '0', '');
INSERT INTO `appcms_info_list` VALUES ('5', '19', '指尖宝扫描二维码微信辅助赚钱平台', '指尖宝扫描二维码微信辅助赚钱平台', '/upload/img/2018/06/13/5b2129acb4e4e.jpg', '', '<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">幸运果，微信辅助任务单价1.88元，1元即可提现，秒到账。任务很简单，5秒即可搞定，只要识别二维码点确认即可，3级提成。<br />\n<img src=\"/upload/img/2018/06/13/5b2129ce5b7e4.jpg\" /><br />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">码云，微信辅助任务单价1.88元，1元即可提现，秒到账。任务很简单，5秒即可搞定，只要识别二维码点确认即可，2级提成。<br />\n<img src=\"/upload/img/2018/06/13/5b2129d57ea1d.jpg\" /><br />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">指尖宝，微信辅助任务单价1.6元，1元即可提现，秒到账。任务很简单，5秒即可搞定，只要识别二维码点确认即可，3级提成。<br />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">以上平台每个号24小时只能做 一次任务，可连续做三天，每月重置。</span></span></span></span><br />\n', '指尖宝,微信扫,二维码,辅助扫,幸运果,,指尖宝,扫码辅助,微信辅助,赚钱平台,赚钱,指尖宝', '1528903430', '1528900074', '', '1', 'qq1023992553', '0', '5', '0', '');
INSERT INTO `appcms_info_list` VALUES ('6', '19', '苏宁金融集花生财最高4180元！', '', '/upload/img/2018/06/13/5b212a1d70748.jpg', '', '<a href=\"http://www.shouzhuanapp.com/app/9391.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">苏宁金融</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">集花生财，集花瓣兑现金，最高4180元，同时支付最高立减4999元！只要登录苏宁金融APP，并完成实名绑卡活动页，就可以通过完成各项任务，积累&ldquo;花瓣&rdquo;。其中，登录、实名认证、邀请好友等简单任务，即可积累&ldquo;花瓣&rdquo;;而完成缴水电费、充话费等生活服务，也有各种&ldquo;花瓣&rdquo;等着你;购买理财、保险，更有更多惊喜等值&ldquo;花瓣&rdquo;收入囊中。<br />\n<img src=\"/upload/img/2018/06/13/5b212a3134577.jpg\" /></span><br />\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	<div>\n		活动期间所有任务&ldquo;花瓣&rdquo;均可累计，从4月18日开始，用户可以根据积累的&ldquo;花瓣&rdquo;，通过苏宁支付账户提现，或兑换支付券，最高可获得4180元现金红包。</div>\n	<br />\n	<div>\n		参与条件 ：<a href=\"http://go.shouzhuanapp.com/go/4.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer;\" target=\"_blank\"><strong>点击这里立即注册并绑定银行卡</strong></a></div>\n	<div>\n		登录苏宁金融APP，并完成实名绑卡（初级实名用户及以上）；&nbsp;<br />\n		&nbsp;</div>\n	参与方式&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	步骤1: 04月08日 10:00 &mdash; 04月17日 23:59，进入活动页，完成任务积累花瓣；&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	步骤2: 04月18日 00:00 &mdash; 04月19日 20:00，进入活动页，提现或兑换支付券。花瓣数量不同，则可提现或兑换支付券的金额也不同，具体对应关系如下：<br />\n	<img src=\"/upload/img/2018/06/13/5b212a3d2aa73.png\" /></div>\n<br />\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	除了&ldquo;集花生财&rdquo;活动之外，苏宁金融418另一个重头戏，就是优惠幅度到令人惊讶的随机立减活动。作为苏宁支付品牌活动，立减4999元已经有不少用户在苏宁门店购买电器时享受到了，有的甚至千元就买到了价值6000多元的电视机。而在今年418，苏宁支付随机立减辐射的品类更多，范围更广。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	据了解，除了在苏宁门店购物使用苏宁支付最高立减4999元之外，4月17日至4月19日，苏宁金融实名会员在苏宁易购线上购买实物类商品，选择苏宁支付，也可享受随机立减，最高可达4999元。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	另值得一提的是，苏宁理财零钱宝也加入到立减活动中。用户在苏宁易购APP下单，支付方式选择零钱宝，支付完成后订单金额可享随机立减，最高同样可达4999元。只要你来，苏宁支付就可以帮你清空购物车，助力消费升级。</div>\n', '兑花瓣,集花瓣,苏宁金融,集花生财,兑换苏宁,苏宁现金,4180元现金,集花·生财,苏宁集花瓣,,苏宁集花瓣', '1528903687', '1528900167', '', '1', 'qq1023992553', '0', '21', '0', '');
INSERT INTO `appcms_info_list` VALUES ('7', '19', '宝信微信小号托管挂机赚钱平台', '宝信微信小号托管挂机赚钱平台', '/upload/img/2018/06/13/5b212a722c112.png', '', '<a href=\"http://www.shouzhuanapp.com/app/9400.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\"><br class=\"Apple-interchange-newline\" />\n宝信挂机</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">是一个最新的</span><a href=\"http://www.shouzhuanapp.com/app/9398.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">微信托管</a><a href=\"http://www.shouzhuanapp.com/yy/\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">挂机赚钱</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">平台，</span><a href=\"http://www.shouzhuanapp.com/app/9398.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">微信挂机</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">平台很多了，一个微信号每天可以赚2-5元，平台满1元起提现，1元提现秒到支付宝。如果有很多微信小号，可同时托管多个微信，挂机无需其他操作。类似的还有号外挂机、</span><a href=\"http://www.shouzhuanapp.com/app/9397.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">小微挂机</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">、</span><a href=\"http://www.shouzhuanapp.com/app/9398.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">聚宝鹏</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">挂机等。</span><br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">宝信挂机注册入口：</span><a href=\"http://vip.baoxin888.com/?key=9286991\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\"><strong>点击这里免费注册宝信微信小号托管挂机平台</strong></a><br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">挂机赚钱方法：</span><br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	1、通过扫码方式把您的微信号托管到平台，平台使用您的小号干活获取收益，期间不会影响您微信号的正常交流使用，也不会消耗您的流量。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	2、我们不会索取您的登录密码、支付密码以及身份信息，所以无需担心账号安全问题。您的小号仅用于做网赚，比如文章浏览，关注公众号等，不从事任何非法活动。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	3、您的直接下线做任务，您会有10%的提成。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	4、系统会定期结算，满1元即可提现，方便快捷。<br />\n	<img src=\"/upload/img/2018/06/13/5b212a6dba782.png\" /></div>\n', '提现到,1元提现,挂机赚钱,微信挂机,宝信微信,挂机平台,微信小号,托管微信,托管挂机,宝信挂机,赚钱平台,,赚托管平台,,,1元提现秒到,微信挂机赚钱', '1528903698', '1528900213', '', '1', 'qq1023992553', '0', '39', '0', '');
INSERT INTO `appcms_info_list` VALUES ('8', '19', '每晚8点半公布赛果，瓜分百万奖金。', '', '/upload/img/2018/06/13/5b212a91cbd07.jpg', '', '<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">重庆时报旗下</span><a href=\"http://www.shouzhuanapp.com/app/9315.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">实况</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">新闻APP继全民植树活动之后，又一新活动&mdash;&mdash;全民拔河，每晚八点半公布赛果，瓜分百万现金！将阅读赚钱进行到底！只要参与就可以在每晚八点半获得分钱哦！拔河分为红队和蓝队，获胜方瓜分80万现金，失败方瓜分20万现金，只要参与，就有钱分哦！</span><br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">参与方式：</span><br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	1、<a href=\"http://www.shouzhuanapp.com/app/9315.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer;\">点击这里进行助力，并下载</a>，并<strong>填写邀请码：<span style=\"color: rgb(255, 0, 0);\">3216536<span class=\"Apple-converted-space\">&nbsp;</span></span></strong>，立即提现1元微信红包！</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	2、长摁下图扫码，进行助力，并下载，填写<a href=\"http://www.shouzhuanapp.com/app/9315.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer;\" target=\"_blank\">实况新闻</a><strong>邀请码：<span style=\"color: rgb(255, 0, 0);\">3216536</span></strong>，立即提现1元微信红包！<br />\n	<img src=\"/upload/img/2018/06/13/5b212aa364548.jpg\" /><br />\n	<br />\n	<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n		活动规则：</div>\n	<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n		1.截止到5月10日，每晚8:30公布比赛结果并发放奖励，邀请人数多的战队为获胜方。</div>\n	<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n		2.报名就有奖，邀请人数越多瓜分得金额就越多。</div>\n	<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n		3.当场比赛截止时，战队人数即瓜分奖励的人数。</div>\n	<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n		4.报名后，裁判会自动将您分配至当前邀请人数落后的战队，以维持比赛的公平竞争。</div>\n</div>\n', '百万奖金,全民瓜分,全民拔河,实况新闻,瓜分百万,实况新闻,,,实况新闻,全民拔河大赛', '1528903552', '1528900277', '', '1', 'qq1023992553', '0', '6', '0', '');
INSERT INTO `appcms_info_list` VALUES ('9', '19', '麦子赚一款能够赚钱的app上线了', '', '/upload/img/2018/06/13/5b212ad04031b.jpg', '', '<a href=\"http://www.shouzhuanapp.com/app/9407.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">麦子赚</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">是一款能够赚钱的app。0元投入，在闲暇时刻，轻轻松松完成各种任务，简简单单赚取</span><a href=\"http://www.shouzhuanapp.com/app/9322.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">零花钱</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">，收益高提现快。让麦小兜带你们飞，从此再也不用担心每天的早饭钱了。<br />\n<img src=\"/upload/img/2018/06/13/5b212ad97747d.jpg\" /></span><br />\n', '一款能,麦子赚,赚钱的,赚取零,提现快,,,麦子赚,,收益高,麦子赚APP,麦子赚app,麦子赚赚钱,,麦子赚赚钱', '1528903671', '1528900327', '', '1', 'qq1023992553', '0', '7', '0', '');
INSERT INTO `appcms_info_list` VALUES ('10', '19', '聚合头条看新闻领红包，阅读文章就能赚钱', '聚合头条看新闻领红包，阅读文章就能赚钱', '/upload/img/2018/06/13/5b212af9cc1c0.jpg', '', '<a href=\"http://www.shouzhuanapp.com/app/9412.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">聚合头条</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">看新闻还有钱赚，聚合头条是一款新推出的个性化新闻资讯类阅读软件，我们除了能为你提供最新最热的资讯外，你在我们APP每天看文章、每次邀请好友或做好玩的任务都能获取奖励收益。接下来让小编带你快速了解如何玩赚聚合头条吧，看得越多玩得越多，奖励也越多哦~<br />\n<img src=\"/upload/img/2018/06/13/5b212b0523563.jpg\" /><br />\n<img src=\"/upload/img/2018/06/13/5b212b12050c2.jpg\" /></span><br />\n', '看新闻,领红包,看文章,头条app,头条APP,能赚取,赚钱快,文章阅读,观看赚钱,阅读文章,头条赚钱,就能赚钱,红包头条,阅读新闻,聚合头条,聚合头条,,红包头条1,聚合头条app,看文章赚钱,聚合头条APP,红包头条app,红包头条app,,聚合头条赚钱,阅读文章赚钱', '1528903462', '1528900373', '', '1', 'qq1023992553', '0', '5', '0', '');
INSERT INTO `appcms_info_list` VALUES ('11', '19', '首款可以听歌赚钱的APP，每天边听歌边赚钱。', '首款可以听歌赚钱的APP，每天边听歌边赚钱。', '/upload/img/2018/06/13/5b212b2886f60.png', '', '<a href=\"http://www.shouzhuanapp.com/app/9413.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">酷我音乐</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">，是目前首款可以</span><a href=\"http://www.shouzhuanapp.com/app/9413.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">听歌赚钱</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">的APP，</span><span style=\"font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); color: rgb(255, 0, 0);\">下载酷我音乐填写邀请码【<span style=\"font-size: 16px;\"><strong>CREBDSZD</strong></span>】立得1元现金，每天边听歌边赚钱</span><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">，15元就能提现。金币可以通过播放歌曲、邀请好友获得，当天获得金币会在晚上自动换算成现金存入您的账户，攒到一定额度后就可以申请提现。<br />\n<img src=\"/upload/img/2018/06/13/5b212b36540af.png\" /><br />\n<br />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">来酷我音乐听歌拿金币兑现金，金币是一种代币，您可以通过播放歌曲、邀请好友获得。当天获得金币会在晚上自动换算成现金存入您的账户。攒到一定额度后就可以申请提现。</span></span><br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	如何获得金币/现金?</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	您可以通过以下的方式获得金币/现金</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	1、每天完成有效听歌(单曲播放30秒以上)奖励金币，第1天奖励50金币，第2天奖励60金币，第3天奖励200金币，第4天奖励80金币，第5天奖励150金币，第6天奖励160金币，第7天奖励400金币</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	2、首次邀请徒弟，奖励1元现金；</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	3、每邀请一位徒弟，奖励3500金币；</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	4、被邀请成为徒弟，奖励1元现金；</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	5、徒弟进贡，您的徒弟获得的听歌奖励翻倍进贡给师傅</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	金币如何兑换成现金?汇率是多少?</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	现金收益=金币*昨日汇率，每天的汇率会受酷我音乐当日整体收益影响有浮动。当天获得金币会在晚上自动换算成现金存入您的账户。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	去哪里查看我的收益?</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	您可以在【我的】页面，点击【任务中心】按钮，进入任务中心页面，点击【听歌赚钱】任务，进入活动页面，点【我的收益】查看。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	酷我音乐邀请码怎么用?</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	进入酷我音乐【我的】页面，点击【任务中心】按钮，进入活动页，点击【输入邀请码】，确定后即可立得1元现金奖励。</div>\n<br />\n', '听歌赚钱,赚钱软件,酷我音乐,音乐听歌,酷我音乐,,酷我音乐APP,酷我音乐app,酷我音乐app,,,酷我音乐的', '1528903488', '1528900418', '', '1', 'qq1023992553', '0', '3', '0', '');
INSERT INTO `appcms_info_list` VALUES ('12', '19', '发表文章被阅读被转发就能躺赚获取收益。', '', '/upload/img/2018/06/13/5b212b5cc94ab.jpg', '', '<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	<br class=\"Apple-interchange-newline\" />\n	&ldquo;<a href=\"http://www.shouzhuanapp.com/app/9410.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer;\" target=\"_blank\">资讯宝</a>&rdquo;有哪些赚钱的方式？包括自阅1分，10秒钟一篇一分钱，没有数量限制。分享被阅读单价0.1元，创作收益就是发表文章，还有评论 点赞收益，收徒二级提成30%等方式。</div>\n<div style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\n	<br />\n	其中创作收益最快，最简单，只要发表文章有人阅读转发即可坐等收益。文章大家可以到今日头条等大平台去复制来发表即可。<br />\n	<br />\n	文章在哪里发？<br />\n	1、进入App，点击&ldquo;首页&rdquo;，点&ldquo;右上角&rdquo;图标，如下图。<br />\n	<img src=\"/upload/img/2018/06/13/5b212b6c0112c.jpg\" /></div>\n', '资讯宝,赚资讯,就能赚,,资讯宝,读文章,,阅读收益,转发收益,阅读转发,阅读文章,转发赚钱', '1528903660', '1528900461', '', '1', 'qq1023992553', '0', '9', '0', '');
INSERT INTO `appcms_info_list` VALUES ('14', '19', '爱上头条有看头更有赚头', '', '/upload/img/2018/06/13/5b212ba8982d4.png', '', '<a href=\"http://www.shouzhuanapp.com/app/9436.html\" style=\"color: rgb(23, 155, 193); text-decoration: none; display: inline; cursor: pointer; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">爱上头条</a><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">有看头更有赚头，注册填邀请码9b8o7l送1-8元，10元提现。业界良心，隶属杭州阿拉丁信息科技股份有限公司，爱上头条，创新模式利润平分，你的娱乐有价值，让你的零碎时间有价值。大<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">数据计算动态汇率，不设上限。在这里你的一举一动都有收益，让阅读受益，让知识赚钱。各种红包各种补贴各种送，收益奇高，终身有效，分秒提现!你真的不来试试吗？话费不用愁，零食乐无忧哦。<br />\n<img src=\"/upload/img/2018/06/13/5b212bc1cdc0b.png\" /></span></span><br />\n', '阿拉丁,爱上头条,旗下项目,旗下项目,,杭州阿拉丁,爱上头条看', '1528903637', '1528900547', '', '1', 'qq1023992553', '0', '9', '0', '');
INSERT INTO `appcms_info_list` VALUES ('15', '19', '拉小宠物进微信群自动帮你赚钱', '', '/upload/img/2018/06/13/5b212bd55e2fa.jpg', '', '<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">微信群赚钱能赚钱啦，栗子妈妈小宠物，拉小宠物进微信群自动帮你赚钱。利用微信群躺着赚钱，不用你操作任何东西。<br />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">①把机器人拉大于50人的微信群，等机器人进群了，在群内回复一个表情激活，可以获得9元，分30天发放。</span><br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">②机器人会在微信群发送笑话、鸡汤等，每次有人点击你就有0.08元。</span><br style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\n<span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">③收徒赚钱，徒弟3元和0.02点击分成，徒孙0.9和0.02分成。<br />\n<img src=\"/upload/img/2018/06/13/5b212be60486d.jpg\" /></span></span><br />\n', '拉进群,拉微信,宠物群,微信群,拉进去,小宠物,微信群,,宠物微信,帮你赚钱,可以赚钱,微信群宠物,宠物微信群,微信小宠物,群自动赚钱,利用微信宠物,可以帮你赚钱', '1528903651', '1528900584', '', '1', 'qq1023992553', '0', '12', '0', '');

-- ----------------------------
-- Table structure for `appcms_nlink`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_nlink`;
CREATE TABLE `appcms_nlink` (
  `nlink_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '内链ID',
  `nlink_txt` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `nlink_url` varchar(500) NOT NULL DEFAULT '' COMMENT '网址',
  PRIMARY KEY (`nlink_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='正文內链词表';

-- ----------------------------
-- Records of appcms_nlink
-- ----------------------------

-- ----------------------------
-- Table structure for `appcms_recommend_area`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_recommend_area`;
CREATE TABLE `appcms_recommend_area` (
  `area_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '位置标题',
  `area_type` int(2) NOT NULL DEFAULT '0' COMMENT '位置类型：推荐位（应用）=0，推荐位（资讯）=1，广告=2，专题（应用）=3，专题（资讯）=4',
  `area_html` text COMMENT '广告HTML或者描述文本',
  `area_remarks` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `area_logo` varchar(200) NOT NULL DEFAULT '' COMMENT '位置LOGO图',
  `area_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `id_list` varchar(2000) NOT NULL DEFAULT '' COMMENT '应用或者资讯ID列表，用逗号分割',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='推荐位置（广告，推荐位，专题）';

-- ----------------------------
-- Records of appcms_recommend_area
-- ----------------------------
INSERT INTO `appcms_recommend_area` VALUES ('1', '每日推荐', '0', '', '首页右边推荐位，每天一个推荐', '', '0', '182');
INSERT INTO `appcms_recommend_area` VALUES ('2', '精品推荐', '0', '', '首页左边的精品推荐位，一般15条数据', '', '0', '122,119,132,131,126,142,137,136,134,133,163,162,161,159,156,154,171,169,165');
INSERT INTO `appcms_recommend_area` VALUES ('3', '最新手赚', '0', '', '首页的游戏排行推荐位，一般10条数据', '', '0', '183,182,181,175,173,171,169,165,163,161');
INSERT INTO `appcms_recommend_area` VALUES ('4', '站长推荐', '0', '', '首页的应用排行推荐位，一般10条数据', '', '0', '182,181,171,165,163,156,146,143,142,134');
INSERT INTO `appcms_recommend_area` VALUES ('5', '热门推荐', '0', '', '首页的下载排行推荐位，一般10条数据', '', '0', '142,146,134,163,182,175,168,165,136,131');
INSERT INTO `appcms_recommend_area` VALUES ('6', '上升最快', '0', '', '首页靠近右边的推荐位，一般10条数据', '', '0', '182,171,181,146,142,119,122,143,156,165');
INSERT INTO `appcms_recommend_area` VALUES ('14', '安卓精品推荐', '3', '<span style=\"font-size:14px;\"><b>管理整理出一些精品的安卓APP应用，都是不错的。</b></span>', '', '/upload/img/2018/06/20/5b2a09f164700.png', '0', '142,146,143,119,144,122,126,132,134');
INSERT INTO `appcms_recommend_area` VALUES ('16', '首页第一屏幻灯广告', '2', 'a:2:{s:4:\"type\";s:1:\"2\";s:9:\"area_html\";a:3:{i:0;a:4:{s:5:\"title\";s:1:\"1\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:32:\"index.php?tpl=content_app&id=163\";s:12:\"resource_url\";s:40:\"/upload/img/2018/06/20/5b2a0e959f5e0.png\";}i:1;a:4:{s:5:\"title\";s:1:\"2\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:32:\"index.php?tpl=content_app&id=163\";s:12:\"resource_url\";s:40:\"/upload/img/2018/06/20/5b2a0e9b47788.jpg\";}i:2;a:4:{s:5:\"title\";s:1:\"3\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:32:\"index.php?tpl=content_app&id=171\";s:12:\"resource_url\";s:40:\"/upload/img/2018/06/20/5b2a0e9ea6fa4.jpg\";}}}', '宽高720*200', '', '0', '');
INSERT INTO `appcms_recommend_area` VALUES ('17', '一元赚一元就能提现', '2', 'a:2:{s:4:\"type\";s:1:\"2\";s:9:\"area_html\";a:1:{i:0;a:4:{s:5:\"title\";s:9:\"关注我\";s:4:\"desc\";s:9:\"关注我\";s:3:\"url\";s:21:\"http://sz.xinqyi.com/\";s:12:\"resource_url\";s:40:\"/upload/img/2018/06/12/5b1f509c967dd.png\";}}}', '宽高230*200', '', '0', '');
INSERT INTO `appcms_recommend_area` VALUES ('24', '苹果精选APP，认真做100%能轻松每天100左右', '3', '<span style=\"font-size:16px;\"><span style=\"color:#0000ff;\">苹果APP精选，认真做100%能轻松每天100左右，管理都在经常使用的，推荐给大家；</span><br />\n希望各位老铁也能挣到钱，钱，钱，钱！<br />\n<span style=\"color:#ff0000;\">这些平台每天都做，收入是非常乐观的。</span></span>', '', '/upload/img/2018/06/20/5b2a0b2162fed.png', '1', '182,171,181,183,169,168,165,163,156');

-- ----------------------------
-- Table structure for `appcms_resource_list`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_resource_list`;
CREATE TABLE `appcms_resource_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源',
  `info_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '应用 或资讯ID',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '关联的类型，应用=0，资讯=1',
  `resource_url` varchar(300) NOT NULL DEFAULT '' COMMENT '资源地址',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '资源宽度',
  `height` int(11) NOT NULL DEFAULT '0' COMMENT '资源高度',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '资源大小',
  PRIMARY KEY (`id`),
  KEY `id_type` (`info_app_id`,`type`),
  KEY `resource_url` (`resource_url`)
) ENGINE=MyISAM AUTO_INCREMENT=667 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of appcms_resource_list
-- ----------------------------
INSERT INTO `appcms_resource_list` VALUES ('643', '189', '0', '/upload/img/2018/07/15/5b4b4883445cc.jpg', '300', '533', '29317');
INSERT INTO `appcms_resource_list` VALUES ('644', '189', '0', '/upload/img/2018/07/15/5b4b4885dbe02.jpg', '300', '533', '21659');
INSERT INTO `appcms_resource_list` VALUES ('175', '0', '0', '/upload/img/2015/12/10/5669990f1ed38.png', '467', '646', '202565');
INSERT INTO `appcms_resource_list` VALUES ('370', '123', '0', '/upload/img/2018/06/19/5b28bd3c0c88e.jpg', '1080', '1920', '236358');
INSERT INTO `appcms_resource_list` VALUES ('371', '123', '0', '/upload/img/2018/06/19/5b28bd3e2b84d.jpg', '1080', '1920', '161391');
INSERT INTO `appcms_resource_list` VALUES ('626', '186', '0', '/upload/img/2018/07/15/5b4b12b2e262d.jpg', '300', '533', '22545');
INSERT INTO `appcms_resource_list` VALUES ('93', '0', '0', '/upload/img/2015/12/10/56693d2800546.png', '733', '558', '65253');
INSERT INTO `appcms_resource_list` VALUES ('94', '0', '0', '/upload/img/2015/12/10/56693da131dfa.png', '956', '548', '46453');
INSERT INTO `appcms_resource_list` VALUES ('96', '0', '0', '/upload/img/2015/12/10/56693e3e172fd.png', '701', '501', '30703');
INSERT INTO `appcms_resource_list` VALUES ('627', '0', '0', '/upload/img/2018/07/15/5b4b1a8d3ed76.png', '205', '205', '10206');
INSERT INTO `appcms_resource_list` VALUES ('98', '0', '0', '/upload/img/2015/12/10/56693eeaecd3a.png', '677', '577', '16821');
INSERT INTO `appcms_resource_list` VALUES ('628', '187', '0', '/upload/img/2018/07/15/5b4b1aa00ce0a.jpg', '300', '533', '31879');
INSERT INTO `appcms_resource_list` VALUES ('100', '0', '0', '/upload/img/2015/12/10/56693ff4afcba.png', '771', '392', '18440');
INSERT INTO `appcms_resource_list` VALUES ('629', '187', '0', '/upload/img/2018/07/15/5b4b1aa1b4b5a.jpg', '300', '533', '20580');
INSERT INTO `appcms_resource_list` VALUES ('102', '0', '0', '/upload/img/2015/12/10/5669412c5bddf.png', '675', '468', '25812');
INSERT INTO `appcms_resource_list` VALUES ('104', '0', '0', '/upload/img/2015/12/10/566942545fb12.png', '808', '754', '136793');
INSERT INTO `appcms_resource_list` VALUES ('630', '0', '0', '/upload/img/2018/07/15/5b4b40b3bd68f.png', '225', '225', '62870');
INSERT INTO `appcms_resource_list` VALUES ('106', '0', '0', '/upload/img/2015/12/10/56694315637e5.png', '640', '708', '35377');
INSERT INTO `appcms_resource_list` VALUES ('631', '0', '0', '/upload/img/2018/07/15/5b4b40ecafbcf.jpg', '300', '533', '19493');
INSERT INTO `appcms_resource_list` VALUES ('108', '0', '0', '/upload/img/2015/12/10/56694424abfa7.png', '654', '668', '69678');
INSERT INTO `appcms_resource_list` VALUES ('632', '0', '0', '/upload/img/2018/07/15/5b4b40eec29d6.jpg', '300', '533', '27518');
INSERT INTO `appcms_resource_list` VALUES ('110', '0', '0', '/upload/img/2015/12/10/56694d2131eba.png', '945', '621', '181740');
INSERT INTO `appcms_resource_list` VALUES ('445', '141', '0', '/upload/img/2018/06/19/5b29097f57e9e.png', '280', '467', '152103');
INSERT INTO `appcms_resource_list` VALUES ('112', '0', '0', '/upload/img/2015/12/10/56694e8e0f8c9.png', '685', '395', '26960');
INSERT INTO `appcms_resource_list` VALUES ('116', '0', '0', '/upload/img/2015/12/10/566950a31b249.png', '549', '772', '199016');
INSERT INTO `appcms_resource_list` VALUES ('114', '0', '0', '/upload/img/2015/12/10/56694f946b1ea.png', '527', '543', '19474');
INSERT INTO `appcms_resource_list` VALUES ('115', '0', '0', '/upload/img/2015/12/10/56694fa45f2e4.png', '287', '156', '10773');
INSERT INTO `appcms_resource_list` VALUES ('368', '0', '0', '/upload/img/2018/06/19/5b28bd349dbe0.png', '96', '96', '3753');
INSERT INTO `appcms_resource_list` VALUES ('118', '0', '0', '/upload/img/2015/12/10/566951805086c.png', '537', '576', '44316');
INSERT INTO `appcms_resource_list` VALUES ('443', '141', '0', '/upload/img/2018/06/19/5b29097bafadd.png', '280', '467', '98787');
INSERT INTO `appcms_resource_list` VALUES ('639', '188', '0', '/upload/img/2018/07/15/5b4b42f4cac3e.jpg', '300', '533', '20161');
INSERT INTO `appcms_resource_list` VALUES ('121', '0', '0', '/upload/img/2015/12/10/566952849516e.png', '927', '664', '301804');
INSERT INTO `appcms_resource_list` VALUES ('122', '0', '0', '/upload/img/2015/12/10/56695e37dd94b.png', '1033', '429', '177412');
INSERT INTO `appcms_resource_list` VALUES ('638', '188', '0', '/upload/img/2018/07/15/5b4b42f33d39d.jpg', '300', '533', '26636');
INSERT INTO `appcms_resource_list` VALUES ('124', '0', '0', '/upload/img/2015/12/10/56695f82f0a71.png', '364', '393', '101627');
INSERT INTO `appcms_resource_list` VALUES ('642', '189', '0', '/upload/img/2018/07/15/5b4b4880ed706.jpg', '300', '533', '28422');
INSERT INTO `appcms_resource_list` VALUES ('126', '0', '0', '/upload/img/2015/12/10/5669605000553.png', '356', '490', '110314');
INSERT INTO `appcms_resource_list` VALUES ('127', '0', '0', '/upload/img/2015/12/10/56696087e9003.png', '351', '469', '86814');
INSERT INTO `appcms_resource_list` VALUES ('128', '0', '0', '/upload/img/2015/12/10/56696ead76974.png', '645', '721', '197339');
INSERT INTO `appcms_resource_list` VALUES ('641', '189', '0', '/upload/img/2018/07/15/5b4b487f2a98b.jpg', '300', '533', '22068');
INSERT INTO `appcms_resource_list` VALUES ('130', '0', '0', '/upload/img/2015/12/10/56696f6bd5f14.png', '615', '697', '160136');
INSERT INTO `appcms_resource_list` VALUES ('131', '0', '0', '/upload/img/2015/12/10/56696f8b89a6e.png', '415', '419', '143765');
INSERT INTO `appcms_resource_list` VALUES ('640', '0', '0', '/upload/img/2018/07/15/5b4b487ac737f.png', '200', '200', '26147');
INSERT INTO `appcms_resource_list` VALUES ('134', '0', '0', '/upload/img/2015/12/10/566971883e5c1.png', '72', '72', '6920');
INSERT INTO `appcms_resource_list` VALUES ('369', '123', '0', '/upload/img/2018/06/19/5b28bd3a7f5b2.png', '1080', '1920', '169920');
INSERT INTO `appcms_resource_list` VALUES ('136', '0', '0', '/upload/img/2015/12/10/566971c322a1e.png', '946', '520', '363773');
INSERT INTO `appcms_resource_list` VALUES ('633', '0', '0', '/upload/img/2018/07/15/5b4b40f19c5c5.jpg', '300', '533', '19282');
INSERT INTO `appcms_resource_list` VALUES ('634', '0', '0', '/upload/img/2018/07/15/5b4b40f4c6bb6.jpg', '300', '533', '33490');
INSERT INTO `appcms_resource_list` VALUES ('140', '0', '0', '/upload/img/2015/12/10/566974bfabf82.png', '687', '758', '153588');
INSERT INTO `appcms_resource_list` VALUES ('141', '0', '0', '/upload/img/2015/12/10/566974efbb44c.png', '256', '256', '7577');
INSERT INTO `appcms_resource_list` VALUES ('635', '0', '0', '/upload/img/2018/07/15/5b4b42c8a100c.png', '1024', '1024', '19654');
INSERT INTO `appcms_resource_list` VALUES ('143', '0', '0', '/upload/img/2015/12/10/5669770f4dec3.png', '993', '777', '754459');
INSERT INTO `appcms_resource_list` VALUES ('637', '188', '0', '/upload/img/2018/07/15/5b4b42f067702.jpg', '300', '533', '28872');
INSERT INTO `appcms_resource_list` VALUES ('146', '0', '0', '/upload/img/2015/12/10/56697ba5ca80b.png', '72', '72', '5984');
INSERT INTO `appcms_resource_list` VALUES ('147', '0', '0', '/upload/img/2015/12/10/56697c2b506de.png', '692', '734', '289575');
INSERT INTO `appcms_resource_list` VALUES ('148', '0', '0', '/upload/img/2015/12/10/56697cff8205b.png', '701', '751', '307741');
INSERT INTO `appcms_resource_list` VALUES ('636', '188', '0', '/upload/img/2018/07/15/5b4b42edc30f5.jpg', '300', '533', '27180');
INSERT INTO `appcms_resource_list` VALUES ('442', '0', '0', '/upload/img/2018/06/19/5b29095fb05f9.png', '256', '256', '66334');
INSERT INTO `appcms_resource_list` VALUES ('151', '0', '0', '/upload/img/2015/12/10/56697fd185d74.png', '72', '72', '2905');
INSERT INTO `appcms_resource_list` VALUES ('152', '0', '0', '/upload/img/2015/12/10/56697fe207f27.png', '450', '383', '19117');
INSERT INTO `appcms_resource_list` VALUES ('154', '0', '0', '/upload/img/2015/12/10/566982e2afec3.png', '1052', '574', '289509');
INSERT INTO `appcms_resource_list` VALUES ('444', '141', '0', '/upload/img/2018/06/19/5b29097d8d47f.png', '280', '467', '139798');
INSERT INTO `appcms_resource_list` VALUES ('156', '0', '0', '/upload/img/2015/12/10/5669839f7e373.png', '1058', '510', '262652');
INSERT INTO `appcms_resource_list` VALUES ('161', '0', '0', '/upload/img/2015/12/10/5669851be17b7.png', '981', '554', '166934');
INSERT INTO `appcms_resource_list` VALUES ('158', '0', '0', '/upload/img/2015/12/10/566984572a471.png', '937', '418', '329574');
INSERT INTO `appcms_resource_list` VALUES ('159', '0', '0', '/upload/img/2015/12/10/566984654c9fb.png', '937', '418', '329574');
INSERT INTO `appcms_resource_list` VALUES ('657', '192', '0', '/upload/img/2018/07/15/5b4b688d8c1da.jpg', '300', '533', '19173');
INSERT INTO `appcms_resource_list` VALUES ('163', '0', '0', '/upload/img/2015/12/10/566985b79cce1.png', '1058', '524', '261667');
INSERT INTO `appcms_resource_list` VALUES ('659', '193', '0', '/upload/img/2018/07/15/5b4b6a64c9cc2.jpg', '300', '533', '41299');
INSERT INTO `appcms_resource_list` VALUES ('658', '0', '0', '/upload/img/2018/07/15/5b4b6a5f34c2f.png', '192', '192', '36067');
INSERT INTO `appcms_resource_list` VALUES ('166', '0', '0', '/upload/img/2015/12/10/5669877835ba9.png', '470', '359', '27055');
INSERT INTO `appcms_resource_list` VALUES ('652', '191', '0', '/upload/img/2018/07/15/5b4b5a3f4d6e0.jpg', '300', '533', '22754');
INSERT INTO `appcms_resource_list` VALUES ('653', '0', '0', '/upload/img/2018/07/15/5b4b68730e6e6.png', '512', '512', '86904');
INSERT INTO `appcms_resource_list` VALUES ('654', '192', '0', '/upload/img/2018/07/15/5b4b6886cca4b.jpg', '300', '533', '36713');
INSERT INTO `appcms_resource_list` VALUES ('170', '0', '0', '/upload/img/2015/12/10/566993ddc2e00.png', '104', '107', '13326');
INSERT INTO `appcms_resource_list` VALUES ('171', '0', '0', '/upload/img/2015/12/10/56699661a7ceb.png', '427', '762', '188435');
INSERT INTO `appcms_resource_list` VALUES ('661', '193', '0', '/upload/img/2018/07/15/5b4b6a684059d.jpg', '300', '533', '21621');
INSERT INTO `appcms_resource_list` VALUES ('173', '0', '0', '/upload/img/2015/12/10/5669977b2a46a.png', '929', '618', '244011');
INSERT INTO `appcms_resource_list` VALUES ('660', '193', '0', '/upload/img/2018/07/15/5b4b6a66b6927.jpg', '300', '533', '32619');
INSERT INTO `appcms_resource_list` VALUES ('88', '0', '0', '/upload/img/2015/12/10/56692f454c904.png', '477', '70', '17027');
INSERT INTO `appcms_resource_list` VALUES ('178', '0', '0', '/upload/img/2015/12/10/56699a1e72baa.png', '711', '496', '25443');
INSERT INTO `appcms_resource_list` VALUES ('656', '192', '0', '/upload/img/2018/07/15/5b4b688a437ce.jpg', '300', '533', '23657');
INSERT INTO `appcms_resource_list` VALUES ('655', '192', '0', '/upload/img/2018/07/15/5b4b68889783e.jpg', '300', '533', '35016');
INSERT INTO `appcms_resource_list` VALUES ('181', '0', '0', '/upload/img/2015/12/10/56699cc6d9c61.png', '323', '329', '2391');
INSERT INTO `appcms_resource_list` VALUES ('182', '0', '0', '/upload/img/2015/12/11/566a2c6e91957.jpg', '200', '96', '14157');
INSERT INTO `appcms_resource_list` VALUES ('183', '0', '0', '/upload/img/2015/12/11/566a2d7307f6f.png', '477', '70', '17027');
INSERT INTO `appcms_resource_list` VALUES ('184', '0', '0', '/upload/img/2015/12/11/566a2dbd44fa3.png', '477', '70', '17027');
INSERT INTO `appcms_resource_list` VALUES ('185', '0', '0', '/upload/img/2015/12/11/566a2ec9abf8d.jpg', '200', '96', '14157');
INSERT INTO `appcms_resource_list` VALUES ('186', '0', '0', '/upload/img/2015/12/11/566a410ec2e66.jpg', '960', '300', '53830');
INSERT INTO `appcms_resource_list` VALUES ('187', '0', '0', '/upload/img/2015/12/11/566a42bad2259.jpg', '720', '200', '37658');
INSERT INTO `appcms_resource_list` VALUES ('188', '0', '0', '/upload/img/2015/12/11/566a43d29154b.jpg', '660', '300', '41023');
INSERT INTO `appcms_resource_list` VALUES ('189', '0', '0', '/upload/img/2015/12/11/566a44e94142e.jpg', '660', '300', '41023');
INSERT INTO `appcms_resource_list` VALUES ('190', '0', '0', '/upload/img/2015/12/11/566a45e026720.jpg', '660', '300', '41023');
INSERT INTO `appcms_resource_list` VALUES ('191', '0', '0', '/upload/img/2015/12/11/566a480903c7b.png', '144', '144', '13710');
INSERT INTO `appcms_resource_list` VALUES ('193', '0', '0', '/upload/img/2015/12/11/566a4889ecdc2.png', '912', '371', '300995');
INSERT INTO `appcms_resource_list` VALUES ('318', '0', '0', '/upload/img/2018/06/13/5b212913d5ede.jpg', '666', '942', '65163');
INSERT INTO `appcms_resource_list` VALUES ('195', '0', '0', '/upload/img/2015/12/11/566a5186820a0.png', '72', '72', '4734');
INSERT INTO `appcms_resource_list` VALUES ('196', '0', '0', '/upload/img/2015/12/11/566a51b84125b.png', '72', '72', '4734');
INSERT INTO `appcms_resource_list` VALUES ('197', '0', '0', '/upload/img/2015/12/11/566a53727e385.png', '256', '256', '7577');
INSERT INTO `appcms_resource_list` VALUES ('199', '0', '0', '/upload/img/2015/12/11/566a5b5eb76e4.png', '861', '448', '90997');
INSERT INTO `appcms_resource_list` VALUES ('200', '0', '0', '/upload/img/2015/12/11/566a5c5c8207b.png', '256', '256', '7577');
INSERT INTO `appcms_resource_list` VALUES ('201', '0', '0', '/upload/img/2015/12/11/566a791aecd9d.jpg', '288', '145', '14257');
INSERT INTO `appcms_resource_list` VALUES ('202', '0', '0', '/upload/img/2015/12/11/566a7b6c4cc34.jpg', '288', '145', '11212');
INSERT INTO `appcms_resource_list` VALUES ('203', '0', '0', '/upload/img/2015/12/11/566a7fa822ab1.jpg', '418', '645', '173390');
INSERT INTO `appcms_resource_list` VALUES ('204', '0', '0', '/upload/img/2015/12/11/566a7fc59cce3.jpg', '288', '145', '13632');
INSERT INTO `appcms_resource_list` VALUES ('205', '0', '0', '/upload/img/2015/12/11/566a80b357905.jpg', '288', '145', '11621');
INSERT INTO `appcms_resource_list` VALUES ('206', '0', '0', '/upload/img/2015/12/11/566a83165fb3a.jpg', '288', '145', '11761');
INSERT INTO `appcms_resource_list` VALUES ('207', '0', '0', '/upload/img/2015/12/11/566a8889a8297.jpg', '288', '145', '14454');
INSERT INTO `appcms_resource_list` VALUES ('208', '0', '0', '/upload/img/2015/12/11/566a8b665fb7d.jpg', '288', '145', '12088');
INSERT INTO `appcms_resource_list` VALUES ('209', '0', '0', '/upload/img/2018/06/12/5b1f29d1e281e.png', '640', '240', '13023');
INSERT INTO `appcms_resource_list` VALUES ('223', '0', '0', '/upload/img/2018/06/12/5b1f57beb68af.jpg', '640', '487', '48545');
INSERT INTO `appcms_resource_list` VALUES ('224', '0', '0', '/upload/img/2018/06/12/5b1f57c7a6c5a.jpg', '640', '487', '48545');
INSERT INTO `appcms_resource_list` VALUES ('225', '0', '0', '/upload/img/2018/06/12/5b1f5d0357cf5.png', '477', '70', '7597');
INSERT INTO `appcms_resource_list` VALUES ('215', '0', '0', '/upload/img/2018/06/12/5b1f4750a0668.png', '477', '70', '7597');
INSERT INTO `appcms_resource_list` VALUES ('216', '0', '0', '/upload/img/2018/06/12/5b1f4d4b08651.jpg', '600', '218', '39142');
INSERT INTO `appcms_resource_list` VALUES ('217', '0', '0', '/upload/img/2018/06/12/5b1f4d4decd6f.png', '720', '200', '80723');
INSERT INTO `appcms_resource_list` VALUES ('218', '0', '0', '/upload/img/2018/06/12/5b1f4d505f5d3.jpg', '750', '300', '47787');
INSERT INTO `appcms_resource_list` VALUES ('219', '0', '0', '/upload/img/2018/06/12/5b1f4d557b877.jpg', '720', '230', '44734');
INSERT INTO `appcms_resource_list` VALUES ('220', '0', '0', '/upload/img/2018/06/12/5b1f4d575eeea.jpg', '750', '300', '34819');
INSERT INTO `appcms_resource_list` VALUES ('221', '0', '0', '/upload/img/2018/06/12/5b1f4e985b500.png', '720', '200', '80723');
INSERT INTO `appcms_resource_list` VALUES ('222', '0', '0', '/upload/img/2018/06/12/5b1f509c967dd.png', '230', '200', '24935');
INSERT INTO `appcms_resource_list` VALUES ('226', '0', '0', '/upload/img/2018/06/13/5b20d81414ab5.png', '334', '50', '5920');
INSERT INTO `appcms_resource_list` VALUES ('646', '190', '0', '/upload/img/2018/07/15/5b4b585c21dbd.jpg', '300', '533', '30898');
INSERT INTO `appcms_resource_list` VALUES ('645', '0', '0', '/upload/img/2018/07/15/5b4b5839becdc.png', '120', '120', '16239');
INSERT INTO `appcms_resource_list` VALUES ('450', '0', '0', '/upload/img/2018/06/19/5b290ff3338c6.png', '256', '256', '19177');
INSERT INTO `appcms_resource_list` VALUES ('451', '143', '0', '/upload/img/2018/06/19/5b291001c40d3.jpeg', '320', '569', '20715');
INSERT INTO `appcms_resource_list` VALUES ('452', '143', '0', '/upload/img/2018/06/19/5b2910038ebaf.jpeg', '320', '569', '22560');
INSERT INTO `appcms_resource_list` VALUES ('453', '143', '0', '/upload/img/2018/06/19/5b29100534fa1.jpeg', '320', '569', '22527');
INSERT INTO `appcms_resource_list` VALUES ('647', '190', '0', '/upload/img/2018/07/15/5b4b585da74da.jpg', '300', '533', '21561');
INSERT INTO `appcms_resource_list` VALUES ('648', '0', '0', '/upload/img/2018/07/15/5b4b5a26bb280.png', '120', '120', '9424');
INSERT INTO `appcms_resource_list` VALUES ('649', '191', '0', '/upload/img/2018/07/15/5b4b5a3a052ff.jpg', '300', '533', '26194');
INSERT INTO `appcms_resource_list` VALUES ('650', '191', '0', '/upload/img/2018/07/15/5b4b5a3bdeb14.jpg', '300', '533', '24553');
INSERT INTO `appcms_resource_list` VALUES ('651', '191', '0', '/upload/img/2018/07/15/5b4b5a3db0a33.jpg', '300', '533', '26688');
INSERT INTO `appcms_resource_list` VALUES ('617', '184', '0', '/upload/img/2018/07/15/5b4ac4f827689.jpg', '300', '533', '34225');
INSERT INTO `appcms_resource_list` VALUES ('618', '0', '0', '/upload/img/2018/07/15/5b4ac8c61b724.png', '96', '96', '7592');
INSERT INTO `appcms_resource_list` VALUES ('619', '185', '0', '/upload/img/2018/07/15/5b4ac8f63801f.jpg', '330', '550', '45636');
INSERT INTO `appcms_resource_list` VALUES ('620', '185', '0', '/upload/img/2018/07/15/5b4ac8f82c741.jpg', '330', '550', '20918');
INSERT INTO `appcms_resource_list` VALUES ('621', '185', '0', '/upload/img/2018/07/15/5b4ac8f9d1bc0.jpg', '330', '550', '34962');
INSERT INTO `appcms_resource_list` VALUES ('622', '185', '0', '/upload/img/2018/07/15/5b4ac8fb93908.jpg', '330', '550', '54665');
INSERT INTO `appcms_resource_list` VALUES ('623', '0', '0', '/upload/img/2018/07/15/5b4b1263e59b2.png', '96', '96', '5057');
INSERT INTO `appcms_resource_list` VALUES ('454', '0', '0', '/upload/img/2018/06/19/5b2913c95f45c.png', '46', '46', '697');
INSERT INTO `appcms_resource_list` VALUES ('455', '144', '0', '/upload/img/2018/06/19/5b2913ce9b16d.png', '1080', '1920', '204307');
INSERT INTO `appcms_resource_list` VALUES ('456', '144', '0', '/upload/img/2018/06/19/5b2913d065c20.png', '1080', '1920', '324787');
INSERT INTO `appcms_resource_list` VALUES ('457', '144', '0', '/upload/img/2018/06/19/5b2913d41f9e0.png', '1080', '1920', '116939');
INSERT INTO `appcms_resource_list` VALUES ('624', '186', '0', '/upload/img/2018/07/15/5b4b12ad03b82.jpg', '300', '533', '35831');
INSERT INTO `appcms_resource_list` VALUES ('625', '186', '0', '/upload/img/2018/07/15/5b4b12b087138.jpg', '300', '533', '22633');
INSERT INTO `appcms_resource_list` VALUES ('365', '122', '0', '/upload/img/2018/06/19/5b28bb47f17d9.jpg', '1080', '1920', '120435');
INSERT INTO `appcms_resource_list` VALUES ('608', '0', '0', '/upload/img/2018/06/20/5b2a09f164700.png', '185', '183', '19021');
INSERT INTO `appcms_resource_list` VALUES ('609', '0', '0', '/upload/img/2018/06/20/5b2a0b2162fed.png', '1024', '1024', '893849');
INSERT INTO `appcms_resource_list` VALUES ('539', '0', '0', '/upload/img/2018/06/20/5b29abb7340ed.jpg', '100', '100', '13782');
INSERT INTO `appcms_resource_list` VALUES ('407', '132', '0', '/upload/img/2018/06/19/5b28e0d489c1b.jpg', '1080', '1920', '51808');
INSERT INTO `appcms_resource_list` VALUES ('564', '0', '0', '/upload/img/2018/06/20/5b29ba67c0af8.jpg', '120', '120', '2166');
INSERT INTO `appcms_resource_list` VALUES ('565', '0', '0', '/upload/img/2018/06/20/5b29bab0a5c86.jpg', '120', '120', '2166');
INSERT INTO `appcms_resource_list` VALUES ('536', '0', '0', '/upload/img/2018/06/20/5b29a8b75509d.png', '170', '170', '11133');
INSERT INTO `appcms_resource_list` VALUES ('537', '165', '0', '/upload/img/2018/06/20/5b29a8c1600fb.jpg', '640', '1136', '70086');
INSERT INTO `appcms_resource_list` VALUES ('538', '165', '0', '/upload/img/2018/06/20/5b29a8c30468e.jpg', '640', '1136', '74284');
INSERT INTO `appcms_resource_list` VALUES ('542', '0', '0', '/upload/img/2018/06/20/5b29acd289da8.jpg', '120', '120', '9766');
INSERT INTO `appcms_resource_list` VALUES ('610', '0', '0', '/upload/img/2018/06/20/5b2a0e959f5e0.png', '720', '200', '80723');
INSERT INTO `appcms_resource_list` VALUES ('611', '0', '0', '/upload/img/2018/06/20/5b2a0e9b47788.jpg', '750', '300', '47787');
INSERT INTO `appcms_resource_list` VALUES ('612', '0', '0', '/upload/img/2018/06/20/5b2a0e9ea6fa4.jpg', '750', '300', '34819');
INSERT INTO `appcms_resource_list` VALUES ('613', '0', '0', '/upload/img/2018/07/15/5b4ac4b926544.png', '512', '512', '179926');
INSERT INTO `appcms_resource_list` VALUES ('614', '184', '0', '/upload/img/2018/07/15/5b4ac4f00c387.jpg', '300', '533', '36781');
INSERT INTO `appcms_resource_list` VALUES ('520', '0', '0', '/upload/img/2018/06/20/5b29a42a10dd1.png', '120', '120', '4930');
INSERT INTO `appcms_resource_list` VALUES ('521', '161', '0', '/upload/img/2018/06/20/5b29a42fbf9b4.jpg', '480', '852', '51118');
INSERT INTO `appcms_resource_list` VALUES ('522', '161', '0', '/upload/img/2018/06/20/5b29a43141b84.jpg', '480', '852', '39469');
INSERT INTO `appcms_resource_list` VALUES ('615', '184', '0', '/upload/img/2018/07/15/5b4ac4f1ed33b.jpg', '300', '533', '29599');
INSERT INTO `appcms_resource_list` VALUES ('616', '184', '0', '/upload/img/2018/07/15/5b4ac4f6418b0.jpg', '300', '533', '30383');
INSERT INTO `appcms_resource_list` VALUES ('508', '158', '0', '/upload/img/2018/06/20/5b299dae357eb.jpg', '719', '1280', '75443');
INSERT INTO `appcms_resource_list` VALUES ('577', '0', '0', '/upload/img/2018/06/20/5b29c20653a33.png', '180', '180', '11734');
INSERT INTO `appcms_resource_list` VALUES ('578', '176', '0', '/upload/img/2018/06/20/5b29c21b605e6.jpg', '256', '454', '39202');
INSERT INTO `appcms_resource_list` VALUES ('579', '176', '0', '/upload/img/2018/06/20/5b29c21d10282.jpg', '256', '454', '38770');
INSERT INTO `appcms_resource_list` VALUES ('593', '0', '0', '/upload/img/2018/06/20/5b29cb3371978.png', '225', '225', '62870');
INSERT INTO `appcms_resource_list` VALUES ('594', '180', '0', '/upload/img/2018/06/20/5b29cb379f638.jpg', '256', '454', '33324');
INSERT INTO `appcms_resource_list` VALUES ('595', '180', '0', '/upload/img/2018/06/20/5b29cb396def7.jpg', '256', '454', '41034');
INSERT INTO `appcms_resource_list` VALUES ('319', '0', '0', '/upload/img/2018/06/13/5b212982a1a02.jpg', '666', '942', '65163');
INSERT INTO `appcms_resource_list` VALUES ('320', '0', '0', '/upload/img/2018/06/13/5b2129acb4e4e.jpg', '480', '720', '70254');
INSERT INTO `appcms_resource_list` VALUES ('321', '0', '0', '/upload/img/2018/06/13/5b2129ce5b7e4.jpg', '480', '720', '70254');
INSERT INTO `appcms_resource_list` VALUES ('322', '0', '0', '/upload/img/2018/06/13/5b2129d57ea1d.jpg', '480', '714', '71326');
INSERT INTO `appcms_resource_list` VALUES ('323', '0', '0', '/upload/img/2018/06/13/5b212a1d70748.jpg', '1080', '1714', '75416');
INSERT INTO `appcms_resource_list` VALUES ('324', '0', '0', '/upload/img/2018/06/13/5b212a3134577.jpg', '1080', '1714', '75416');
INSERT INTO `appcms_resource_list` VALUES ('325', '0', '0', '/upload/img/2018/06/13/5b212a3d2aa73.png', '727', '477', '44001');
INSERT INTO `appcms_resource_list` VALUES ('326', '0', '0', '/upload/img/2018/06/13/5b212a6dba782.png', '573', '515', '48350');
INSERT INTO `appcms_resource_list` VALUES ('327', '0', '0', '/upload/img/2018/06/13/5b212a722c112.png', '573', '515', '48350');
INSERT INTO `appcms_resource_list` VALUES ('328', '0', '0', '/upload/img/2018/06/13/5b212a91cbd07.jpg', '750', '1142', '191145');
INSERT INTO `appcms_resource_list` VALUES ('329', '0', '0', '/upload/img/2018/06/13/5b212aa364548.jpg', '750', '1142', '191145');
INSERT INTO `appcms_resource_list` VALUES ('330', '0', '0', '/upload/img/2018/06/13/5b212ad04031b.jpg', '690', '459', '71108');
INSERT INTO `appcms_resource_list` VALUES ('331', '0', '0', '/upload/img/2018/06/13/5b212ad97747d.jpg', '690', '459', '71108');
INSERT INTO `appcms_resource_list` VALUES ('332', '0', '0', '/upload/img/2018/06/13/5b212af9cc1c0.jpg', '602', '533', '62239');
INSERT INTO `appcms_resource_list` VALUES ('333', '0', '0', '/upload/img/2018/06/13/5b212b0523563.jpg', '602', '533', '62239');
INSERT INTO `appcms_resource_list` VALUES ('334', '0', '0', '/upload/img/2018/06/13/5b212b12050c2.jpg', '750', '2478', '426411');
INSERT INTO `appcms_resource_list` VALUES ('335', '0', '0', '/upload/img/2018/06/13/5b212b2886f60.png', '1080', '474', '567306');
INSERT INTO `appcms_resource_list` VALUES ('336', '0', '0', '/upload/img/2018/06/13/5b212b36540af.png', '1080', '474', '567306');
INSERT INTO `appcms_resource_list` VALUES ('337', '0', '0', '/upload/img/2018/06/13/5b212b5cc94ab.jpg', '448', '718', '62026');
INSERT INTO `appcms_resource_list` VALUES ('338', '0', '0', '/upload/img/2018/06/13/5b212b6c0112c.jpg', '448', '718', '62026');
INSERT INTO `appcms_resource_list` VALUES ('339', '0', '0', '/upload/img/2018/06/13/5b212b8513af0.jpg', '640', '1009', '143615');
INSERT INTO `appcms_resource_list` VALUES ('340', '0', '0', '/upload/img/2018/06/13/5b212ba8982d4.png', '481', '937', '446954');
INSERT INTO `appcms_resource_list` VALUES ('341', '0', '0', '/upload/img/2018/06/13/5b212bc1cdc0b.png', '481', '937', '446954');
INSERT INTO `appcms_resource_list` VALUES ('342', '0', '0', '/upload/img/2018/06/13/5b212bd55e2fa.jpg', '750', '1334', '221068');
INSERT INTO `appcms_resource_list` VALUES ('343', '0', '0', '/upload/img/2018/06/13/5b212be60486d.jpg', '750', '1334', '221068');
INSERT INTO `appcms_resource_list` VALUES ('344', '0', '0', '/upload/img/2018/06/13/5b21391adde27.png', '115', '37', '2939');
INSERT INTO `appcms_resource_list` VALUES ('345', '0', '0', '/upload/img/2018/06/13/5b213a6017d70.png', '300', '43', '11328');
INSERT INTO `appcms_resource_list` VALUES ('549', '169', '0', '/upload/img/2018/06/20/5b29aedd0a082.jpg', '640', '1136', '64458');
INSERT INTO `appcms_resource_list` VALUES ('364', '0', '0', '/upload/img/2018/06/19/5b28bb2c69ded.png', '96', '96', '4281');
INSERT INTO `appcms_resource_list` VALUES ('348', '0', '0', '/upload/img/2018/06/19/5b2861e4d64ff.png', '256', '256', '13739');
INSERT INTO `appcms_resource_list` VALUES ('349', '118', '0', '/upload/img/2018/06/19/5b28620ebf6f4.jpg', '1080', '1920', '362324');
INSERT INTO `appcms_resource_list` VALUES ('350', '118', '0', '/upload/img/2018/06/19/5b286213bfb22.jpg', '1080', '1920', '319120');
INSERT INTO `appcms_resource_list` VALUES ('351', '118', '0', '/upload/img/2018/06/19/5b2862148accc.jpg', '1080', '1920', '268647');
INSERT INTO `appcms_resource_list` VALUES ('352', '0', '0', '/upload/img/2018/06/19/5b2871ecdc755.png', '72', '72', '5984');
INSERT INTO `appcms_resource_list` VALUES ('353', '119', '0', '/upload/img/2018/06/19/5b2878b72971c.jpg', '1080', '1920', '248399');
INSERT INTO `appcms_resource_list` VALUES ('354', '119', '0', '/upload/img/2018/06/19/5b2878bae7ccb.jpg', '1080', '1920', '334949');
INSERT INTO `appcms_resource_list` VALUES ('355', '119', '0', '/upload/img/2018/06/19/5b2878bb68bfe.jpg', '1080', '1920', '455657');
INSERT INTO `appcms_resource_list` VALUES ('356', '0', '0', '/upload/img/2018/06/19/5b28835a4e864.png', '256', '256', '11741');
INSERT INTO `appcms_resource_list` VALUES ('357', '120', '0', '/upload/img/2018/06/19/5b2884143cd0f.jpg', '198', '330', '16210');
INSERT INTO `appcms_resource_list` VALUES ('358', '120', '0', '/upload/img/2018/06/19/5b288415e4ad8.jpg', '198', '330', '17374');
INSERT INTO `appcms_resource_list` VALUES ('359', '120', '0', '/upload/img/2018/06/19/5b2884178cfe2.jpg', '198', '330', '15259');
INSERT INTO `appcms_resource_list` VALUES ('360', '0', '0', '/upload/img/2018/06/19/5b28b635aa4fb.jpg', '96', '96', '3339');
INSERT INTO `appcms_resource_list` VALUES ('361', '121', '0', '/upload/img/2018/06/19/5b28b664db278.jpg', '309', '550', '39077');
INSERT INTO `appcms_resource_list` VALUES ('362', '121', '0', '/upload/img/2018/06/19/5b28b666950c7.jpg', '309', '550', '29704');
INSERT INTO `appcms_resource_list` VALUES ('363', '121', '0', '/upload/img/2018/06/19/5b28b66867390.jpg', '309', '550', '40358');
INSERT INTO `appcms_resource_list` VALUES ('366', '122', '0', '/upload/img/2018/06/19/5b28bb4b2b4e0.jpg', '1080', '1920', '97655');
INSERT INTO `appcms_resource_list` VALUES ('367', '122', '0', '/upload/img/2018/06/19/5b28bb4c3a8b3.jpg', '1080', '1920', '116004');
INSERT INTO `appcms_resource_list` VALUES ('372', '0', '0', '/upload/img/2018/06/19/5b28c899b5532.jpg', '120', '120', '8854');
INSERT INTO `appcms_resource_list` VALUES ('373', '124', '0', '/upload/img/2018/06/19/5b28c89ebd1b1.jpg', '1080', '1920', '184349');
INSERT INTO `appcms_resource_list` VALUES ('374', '124', '0', '/upload/img/2018/06/19/5b28c8a068f35.jpg', '1080', '1920', '131222');
INSERT INTO `appcms_resource_list` VALUES ('375', '124', '0', '/upload/img/2018/06/19/5b28c8a2a9b12.jpg', '1080', '1920', '208550');
INSERT INTO `appcms_resource_list` VALUES ('376', '0', '0', '/upload/img/2018/06/19/5b28cc7111dc4.jpg', '120', '120', '4870');
INSERT INTO `appcms_resource_list` VALUES ('377', '125', '0', '/upload/img/2018/06/19/5b28ccc666e41.jpg', '1080', '1920', '69244');
INSERT INTO `appcms_resource_list` VALUES ('378', '125', '0', '/upload/img/2018/06/19/5b28ccc6b7e31.jpg', '1080', '1920', '56031');
INSERT INTO `appcms_resource_list` VALUES ('379', '0', '0', '/upload/img/2018/06/19/5b28ce69de468.jpg', '120', '120', '8042');
INSERT INTO `appcms_resource_list` VALUES ('380', '126', '0', '/upload/img/2018/06/19/5b28ce70232bb.jpg', '432', '912', '53865');
INSERT INTO `appcms_resource_list` VALUES ('381', '126', '0', '/upload/img/2018/06/19/5b28ce731400d.jpg', '432', '912', '156353');
INSERT INTO `appcms_resource_list` VALUES ('382', '126', '0', '/upload/img/2018/06/19/5b28ce7469587.jpg', '432', '912', '125250');
INSERT INTO `appcms_resource_list` VALUES ('383', '0', '0', '/upload/img/2018/06/19/5b28d076e017f.png', '512', '512', '41736');
INSERT INTO `appcms_resource_list` VALUES ('384', '127', '0', '/upload/img/2018/06/19/5b28d07be6754.png', '1080', '1920', '208957');
INSERT INTO `appcms_resource_list` VALUES ('385', '127', '0', '/upload/img/2018/06/19/5b28d07de5cf1.png', '1080', '1920', '139974');
INSERT INTO `appcms_resource_list` VALUES ('386', '127', '0', '/upload/img/2018/06/19/5b28d07fd3a62.png', '1080', '1920', '137822');
INSERT INTO `appcms_resource_list` VALUES ('387', '0', '0', '/upload/img/2018/06/19/5b28d3e745cd7.png', '96', '96', '5509');
INSERT INTO `appcms_resource_list` VALUES ('388', '128', '0', '/upload/img/2018/06/19/5b28d3ef91387.jpg', '1080', '1920', '113287');
INSERT INTO `appcms_resource_list` VALUES ('389', '128', '0', '/upload/img/2018/06/19/5b28d3f144a7f.jpg', '1080', '1920', '75422');
INSERT INTO `appcms_resource_list` VALUES ('390', '128', '0', '/upload/img/2018/06/19/5b28d3f30025a.jpg', '1080', '1920', '98743');
INSERT INTO `appcms_resource_list` VALUES ('391', '0', '0', '/upload/img/2018/06/19/5b28d5f63e207.png', '192', '192', '12923');
INSERT INTO `appcms_resource_list` VALUES ('392', '129', '0', '/upload/img/2018/06/19/5b28d5fd68d92.jpg', '300', '533', '23210');
INSERT INTO `appcms_resource_list` VALUES ('393', '129', '0', '/upload/img/2018/06/19/5b28d5ff6cc7f.jpg', '300', '533', '22424');
INSERT INTO `appcms_resource_list` VALUES ('394', '129', '0', '/upload/img/2018/06/19/5b28d60172f4f.jpg', '300', '533', '17921');
INSERT INTO `appcms_resource_list` VALUES ('395', '0', '0', '/upload/img/2018/06/19/5b28d7f85f206.png', '512', '512', '33216');
INSERT INTO `appcms_resource_list` VALUES ('396', '130', '0', '/upload/img/2018/06/19/5b28d7ffb7ec6.jpg', '1080', '1920', '97188');
INSERT INTO `appcms_resource_list` VALUES ('397', '130', '0', '/upload/img/2018/06/19/5b28d801a8951.jpg', '1080', '1920', '71379');
INSERT INTO `appcms_resource_list` VALUES ('398', '130', '0', '/upload/img/2018/06/19/5b28d803c3425.jpg', '1080', '1920', '79156');
INSERT INTO `appcms_resource_list` VALUES ('399', '0', '0', '/upload/img/2018/06/19/5b28db05ba07c.jpg', '120', '120', '6728');
INSERT INTO `appcms_resource_list` VALUES ('400', '0', '0', '/upload/img/2018/06/19/5b28db126603c.jpg', '1080', '1920', '78410');
INSERT INTO `appcms_resource_list` VALUES ('401', '0', '0', '/upload/img/2018/06/19/5b28db144b784.jpg', '1080', '1920', '147632');
INSERT INTO `appcms_resource_list` VALUES ('402', '0', '0', '/upload/img/2018/06/19/5b28db162cd9d.jpg', '1080', '1920', '79392');
INSERT INTO `appcms_resource_list` VALUES ('403', '0', '0', '/upload/img/2018/06/19/5b28de4b10d2c.png', '96', '96', '4584');
INSERT INTO `appcms_resource_list` VALUES ('404', '131', '0', '/upload/img/2018/06/19/5b28de51a7d6c.jpg', '1080', '1920', '59468');
INSERT INTO `appcms_resource_list` VALUES ('405', '131', '0', '/upload/img/2018/06/19/5b28de537e115.jpg', '1080', '1920', '104579');
INSERT INTO `appcms_resource_list` VALUES ('406', '131', '0', '/upload/img/2018/06/19/5b28de55da8cd.jpg', '1080', '1920', '123479');
INSERT INTO `appcms_resource_list` VALUES ('408', '132', '0', '/upload/img/2018/06/19/5b28e0d6c6821.jpg', '1080', '1920', '130800');
INSERT INTO `appcms_resource_list` VALUES ('409', '132', '0', '/upload/img/2018/06/19/5b28e0d8c95d6.jpg', '1080', '1920', '97996');
INSERT INTO `appcms_resource_list` VALUES ('410', '0', '0', '/upload/img/2018/06/19/5b28e0df2e2cd.jpg', '120', '120', '4447');
INSERT INTO `appcms_resource_list` VALUES ('411', '0', '0', '/upload/img/2018/06/19/5b28e312bfd5c.png', '72', '72', '7293');
INSERT INTO `appcms_resource_list` VALUES ('412', '133', '0', '/upload/img/2018/06/19/5b28e315b4c9b.jpg', '720', '1280', '124021');
INSERT INTO `appcms_resource_list` VALUES ('413', '133', '0', '/upload/img/2018/06/19/5b28e31768a41.jpg', '720', '1280', '78093');
INSERT INTO `appcms_resource_list` VALUES ('414', '133', '0', '/upload/img/2018/06/19/5b28e31a10cbe.jpg', '720', '1280', '130969');
INSERT INTO `appcms_resource_list` VALUES ('415', '0', '0', '/upload/img/2018/06/19/5b28e430324d8.jpg', '120', '120', '3213');
INSERT INTO `appcms_resource_list` VALUES ('416', '134', '0', '/upload/img/2018/06/19/5b28e43491e21.jpg', '1080', '2280', '103220');
INSERT INTO `appcms_resource_list` VALUES ('417', '134', '0', '/upload/img/2018/06/19/5b28e4397aa7a.jpg', '1080', '2280', '121681');
INSERT INTO `appcms_resource_list` VALUES ('418', '135', '0', '/upload/img/2018/06/19/5b28e6e26a867.jpg', '1080', '1920', '103302');
INSERT INTO `appcms_resource_list` VALUES ('419', '135', '0', '/upload/img/2018/06/19/5b28e6e478e1e.jpg', '1080', '1920', '126248');
INSERT INTO `appcms_resource_list` VALUES ('420', '135', '0', '/upload/img/2018/06/19/5b28e6e68804e.jpg', '1080', '1920', '71040');
INSERT INTO `appcms_resource_list` VALUES ('421', '0', '0', '/upload/img/2018/06/19/5b28e6ebe2ebc.jpg', '120', '120', '5051');
INSERT INTO `appcms_resource_list` VALUES ('422', '0', '0', '/upload/img/2018/06/19/5b28eb6ee3f92.png', '96', '96', '1674');
INSERT INTO `appcms_resource_list` VALUES ('423', '136', '0', '/upload/img/2018/06/19/5b28ebd2353d1.jpg', '432', '912', '63035');
INSERT INTO `appcms_resource_list` VALUES ('424', '136', '0', '/upload/img/2018/06/19/5b28ebd3f0056.jpg', '432', '912', '79106');
INSERT INTO `appcms_resource_list` VALUES ('425', '136', '0', '/upload/img/2018/06/19/5b28ebd67f18e.jpg', '432', '912', '128966');
INSERT INTO `appcms_resource_list` VALUES ('426', '137', '0', '/upload/img/2018/06/19/5b28ff9d4adba.png', '1080', '1920', '599373');
INSERT INTO `appcms_resource_list` VALUES ('427', '137', '0', '/upload/img/2018/06/19/5b28ff9f761a1.png', '1080', '1920', '256614');
INSERT INTO `appcms_resource_list` VALUES ('428', '137', '0', '/upload/img/2018/06/19/5b28ffa327a32.png', '1080', '1920', '199704');
INSERT INTO `appcms_resource_list` VALUES ('429', '0', '0', '/upload/img/2018/06/19/5b28ffb6b765a.png', '120', '120', '5764');
INSERT INTO `appcms_resource_list` VALUES ('430', '0', '0', '/upload/img/2018/06/19/5b2901aab348e.jpg', '120', '120', '5292');
INSERT INTO `appcms_resource_list` VALUES ('431', '138', '0', '/upload/img/2018/06/19/5b2901b40f3f0.jpg', '432', '912', '67267');
INSERT INTO `appcms_resource_list` VALUES ('432', '138', '0', '/upload/img/2018/06/19/5b2901b615211.jpg', '432', '912', '127791');
INSERT INTO `appcms_resource_list` VALUES ('433', '138', '0', '/upload/img/2018/06/19/5b2901b7ce01e.jpg', '432', '912', '133204');
INSERT INTO `appcms_resource_list` VALUES ('434', '0', '0', '/upload/img/2018/06/19/5b29066c95418.png', '96', '96', '5128');
INSERT INTO `appcms_resource_list` VALUES ('435', '139', '0', '/upload/img/2018/06/19/5b290670a7a4c.jpg', '432', '912', '87762');
INSERT INTO `appcms_resource_list` VALUES ('436', '139', '0', '/upload/img/2018/06/19/5b2906724c345.jpg', '432', '912', '101381');
INSERT INTO `appcms_resource_list` VALUES ('437', '139', '0', '/upload/img/2018/06/19/5b2906757529a.jpg', '432', '912', '135977');
INSERT INTO `appcms_resource_list` VALUES ('438', '0', '0', '/upload/img/2018/06/19/5b29083daec8b.png', '130', '130', '6432');
INSERT INTO `appcms_resource_list` VALUES ('439', '140', '0', '/upload/img/2018/06/19/5b290842417b5.jpg', '1080', '1920', '119472');
INSERT INTO `appcms_resource_list` VALUES ('440', '140', '0', '/upload/img/2018/06/19/5b290848ca497.jpg', '1080', '1920', '110004');
INSERT INTO `appcms_resource_list` VALUES ('441', '140', '0', '/upload/img/2018/06/19/5b29085c93851.jpg', '1080', '1920', '105177');
INSERT INTO `appcms_resource_list` VALUES ('446', '0', '0', '/upload/img/2018/06/19/5b290e98059dd.png', '144', '144', '5283');
INSERT INTO `appcms_resource_list` VALUES ('447', '142', '0', '/upload/img/2018/06/19/5b290e9fea1cb.jpg', '300', '533', '22726');
INSERT INTO `appcms_resource_list` VALUES ('448', '142', '0', '/upload/img/2018/06/19/5b290ea1b132b.jpg', '300', '533', '14048');
INSERT INTO `appcms_resource_list` VALUES ('449', '142', '0', '/upload/img/2018/06/19/5b290ea38e763.jpg', '300', '533', '12998');
INSERT INTO `appcms_resource_list` VALUES ('541', '166', '0', '/upload/img/2018/06/20/5b29abc4c6139.jpg', '300', '533', '20947');
INSERT INTO `appcms_resource_list` VALUES ('540', '166', '0', '/upload/img/2018/06/20/5b29abc331762.jpg', '300', '533', '29352');
INSERT INTO `appcms_resource_list` VALUES ('461', '146', '0', '/upload/img/2018/06/19/5b2916a3196ac.png', '640', '1136', '265265');
INSERT INTO `appcms_resource_list` VALUES ('462', '146', '0', '/upload/img/2018/06/19/5b2916a634f86.png', '640', '1136', '417358');
INSERT INTO `appcms_resource_list` VALUES ('463', '0', '0', '/upload/img/2018/06/19/5b2916ad554e3.png', '192', '192', '11319');
INSERT INTO `appcms_resource_list` VALUES ('464', '0', '0', '/upload/img/2018/06/19/5b2918d0324e4.png', '96', '96', '5354');
INSERT INTO `appcms_resource_list` VALUES ('465', '147', '0', '/upload/img/2018/06/19/5b2918d3eea93.PNG', '640', '1136', '91597');
INSERT INTO `appcms_resource_list` VALUES ('466', '147', '0', '/upload/img/2018/06/19/5b2918d5dbd4a.PNG', '640', '1136', '151130');
INSERT INTO `appcms_resource_list` VALUES ('467', '0', '0', '/upload/img/2018/06/19/5b291b499f9bf.png', '100', '100', '5020');
INSERT INTO `appcms_resource_list` VALUES ('468', '148', '0', '/upload/img/2018/06/19/5b291b523bf33.PNG', '640', '1136', '81541');
INSERT INTO `appcms_resource_list` VALUES ('469', '148', '0', '/upload/img/2018/06/19/5b291b5428923.PNG', '640', '1136', '136379');
INSERT INTO `appcms_resource_list` VALUES ('470', '148', '0', '/upload/img/2018/06/19/5b291b561d555.PNG', '640', '1136', '146778');
INSERT INTO `appcms_resource_list` VALUES ('471', '149', '0', '/upload/img/2018/06/19/5b291e167a5d3.PNG', '640', '1136', '176905');
INSERT INTO `appcms_resource_list` VALUES ('472', '149', '0', '/upload/img/2018/06/19/5b291e1807d06.PNG', '640', '1136', '118917');
INSERT INTO `appcms_resource_list` VALUES ('473', '149', '0', '/upload/img/2018/06/19/5b291e1950511.PNG', '640', '1136', '172469');
INSERT INTO `appcms_resource_list` VALUES ('474', '0', '0', '/upload/img/2018/06/19/5b291e1f44a09.jpg', '1024', '1024', '893849');
INSERT INTO `appcms_resource_list` VALUES ('475', '0', '0', '/upload/img/2018/06/19/5b2920aab660d.png', '168', '168', '8001');
INSERT INTO `appcms_resource_list` VALUES ('476', '150', '0', '/upload/img/2018/06/19/5b2920b947b60.PNG', '640', '1136', '84525');
INSERT INTO `appcms_resource_list` VALUES ('477', '150', '0', '/upload/img/2018/06/19/5b2920bb08a82.PNG', '640', '1136', '141988');
INSERT INTO `appcms_resource_list` VALUES ('478', '150', '0', '/upload/img/2018/06/19/5b2920bced80a.PNG', '640', '1136', '85779');
INSERT INTO `appcms_resource_list` VALUES ('479', '151', '0', '/upload/img/2018/06/19/5b29228fcc9e6.png', '1080', '1920', '143923');
INSERT INTO `appcms_resource_list` VALUES ('480', '151', '0', '/upload/img/2018/06/19/5b292291bd681.png', '1080', '1920', '463501');
INSERT INTO `appcms_resource_list` VALUES ('481', '151', '0', '/upload/img/2018/06/19/5b2922941998c.png', '1080', '1920', '241714');
INSERT INTO `appcms_resource_list` VALUES ('482', '0', '0', '/upload/img/2018/06/19/5b2922c929b3a.jpg', '120', '120', '10266');
INSERT INTO `appcms_resource_list` VALUES ('483', '0', '0', '/upload/img/2018/06/19/5b29251eb2b0a.png', '75', '75', '7091');
INSERT INTO `appcms_resource_list` VALUES ('484', '152', '0', '/upload/img/2018/06/19/5b292525b4a5a.PNG', '640', '1136', '146742');
INSERT INTO `appcms_resource_list` VALUES ('485', '152', '0', '/upload/img/2018/06/19/5b292527c463a.PNG', '640', '1136', '82526');
INSERT INTO `appcms_resource_list` VALUES ('486', '152', '0', '/upload/img/2018/06/19/5b292529b4d26.PNG', '640', '1136', '135608');
INSERT INTO `appcms_resource_list` VALUES ('487', '0', '0', '/upload/img/2018/06/19/5b292851ae46a.png', '108', '108', '28158');
INSERT INTO `appcms_resource_list` VALUES ('488', '153', '0', '/upload/img/2018/06/19/5b29285882f17.PNG', '640', '1136', '106796');
INSERT INTO `appcms_resource_list` VALUES ('489', '153', '0', '/upload/img/2018/06/19/5b29285af1fcc.PNG', '640', '1136', '89494');
INSERT INTO `appcms_resource_list` VALUES ('490', '153', '0', '/upload/img/2018/06/19/5b29285c69428.PNG', '640', '1136', '75943');
INSERT INTO `appcms_resource_list` VALUES ('491', '153', '0', '/upload/img/2018/06/19/5b2928614bd80.PNG', '640', '1136', '88356');
INSERT INTO `appcms_resource_list` VALUES ('492', '0', '0', '/upload/img/2018/06/20/5b292b8d1f2d8.png', '100', '100', '9311');
INSERT INTO `appcms_resource_list` VALUES ('493', '154', '0', '/upload/img/2018/06/20/5b292b9490bd0.png', '640', '1136', '217581');
INSERT INTO `appcms_resource_list` VALUES ('494', '154', '0', '/upload/img/2018/06/20/5b292b96e90b8.png', '640', '1136', '578789');
INSERT INTO `appcms_resource_list` VALUES ('495', '154', '0', '/upload/img/2018/06/20/5b292b988589b.png', '640', '1136', '112743');
INSERT INTO `appcms_resource_list` VALUES ('496', '0', '0', '/upload/img/2018/06/20/5b2991f23a459.png', '256', '256', '7933');
INSERT INTO `appcms_resource_list` VALUES ('497', '155', '0', '/upload/img/2018/06/20/5b2991fe96939.PNG', '640', '1136', '111252');
INSERT INTO `appcms_resource_list` VALUES ('498', '155', '0', '/upload/img/2018/06/20/5b2992005975e.PNG', '640', '1136', '124872');
INSERT INTO `appcms_resource_list` VALUES ('499', '0', '0', '/upload/img/2018/06/20/5b2994b035cf7.png', '120', '120', '5571');
INSERT INTO `appcms_resource_list` VALUES ('500', '156', '0', '/upload/img/2018/06/20/5b2994bc91804.PNG', '640', '1136', '124872');
INSERT INTO `appcms_resource_list` VALUES ('501', '156', '0', '/upload/img/2018/06/20/5b2994be6b6d3.PNG', '640', '1136', '111252');
INSERT INTO `appcms_resource_list` VALUES ('502', '0', '0', '/upload/img/2018/06/20/5b2998d60e231.png', '512', '512', '33191');
INSERT INTO `appcms_resource_list` VALUES ('503', '0', '0', '/upload/img/2018/06/20/5b2998e3e371c.png', '1242', '2208', '239830');
INSERT INTO `appcms_resource_list` VALUES ('504', '0', '0', '/upload/img/2018/06/20/5b2998e72ca50.jpeg', '750', '1334', '83584');
INSERT INTO `appcms_resource_list` VALUES ('505', '157', '0', '/upload/img/2018/06/20/5b29995189938.png', '1242', '2208', '249500');
INSERT INTO `appcms_resource_list` VALUES ('506', '157', '0', '/upload/img/2018/06/20/5b2999554ccaf.png', '750', '1334', '114275');
INSERT INTO `appcms_resource_list` VALUES ('507', '157', '0', '/upload/img/2018/06/20/5b2999562e3d2.jpeg', '750', '1334', '83584');
INSERT INTO `appcms_resource_list` VALUES ('509', '158', '0', '/upload/img/2018/06/20/5b299dafd589c.jpg', '719', '1280', '81680');
INSERT INTO `appcms_resource_list` VALUES ('510', '158', '0', '/upload/img/2018/06/20/5b299db1dd209.jpg', '719', '1280', '39849');
INSERT INTO `appcms_resource_list` VALUES ('511', '0', '0', '/upload/img/2018/06/20/5b299dc283a1a.png', '512', '512', '159124');
INSERT INTO `appcms_resource_list` VALUES ('512', '0', '0', '/upload/img/2018/06/20/5b299fe383afa.png', '120', '120', '13776');
INSERT INTO `appcms_resource_list` VALUES ('513', '159', '0', '/upload/img/2018/06/20/5b299fe83e755.jpg', '640', '1136', '68775');
INSERT INTO `appcms_resource_list` VALUES ('514', '159', '0', '/upload/img/2018/06/20/5b299fea08bf2.jpg', '719', '1280', '75443');
INSERT INTO `appcms_resource_list` VALUES ('515', '159', '0', '/upload/img/2018/06/20/5b299fec182ae.jpg', '719', '1280', '81680');
INSERT INTO `appcms_resource_list` VALUES ('516', '0', '0', '/upload/img/2018/06/20/5b29a2d7dbfb3.png', '350', '350', '117740');
INSERT INTO `appcms_resource_list` VALUES ('517', '160', '0', '/upload/img/2018/06/20/5b29a2e47ab00.jpg', '300', '533', '31762');
INSERT INTO `appcms_resource_list` VALUES ('518', '160', '0', '/upload/img/2018/06/20/5b29a2e62e9d4.jpg', '300', '533', '28689');
INSERT INTO `appcms_resource_list` VALUES ('519', '160', '0', '/upload/img/2018/06/20/5b29a2e822537.jpg', '300', '533', '19319');
INSERT INTO `appcms_resource_list` VALUES ('523', '161', '0', '/upload/img/2018/06/20/5b29a4334d484.jpg', '480', '852', '56095');
INSERT INTO `appcms_resource_list` VALUES ('524', '0', '0', '/upload/img/2018/06/20/5b29a5cd20d58.jpg', '400', '400', '143338');
INSERT INTO `appcms_resource_list` VALUES ('525', '162', '0', '/upload/img/2018/06/20/5b29a5d571e37.jpg', '300', '534', '30731');
INSERT INTO `appcms_resource_list` VALUES ('526', '162', '0', '/upload/img/2018/06/20/5b29a5d7be184.jpg', '300', '533', '20251');
INSERT INTO `appcms_resource_list` VALUES ('527', '162', '0', '/upload/img/2018/06/20/5b29a5d9d1568.jpg', '300', '533', '15018');
INSERT INTO `appcms_resource_list` VALUES ('528', '0', '0', '/upload/img/2018/06/20/5b29a691df029.png', '345', '345', '13767');
INSERT INTO `appcms_resource_list` VALUES ('529', '163', '0', '/upload/img/2018/06/20/5b29a69878e67.jpg', '300', '533', '28306');
INSERT INTO `appcms_resource_list` VALUES ('530', '163', '0', '/upload/img/2018/06/20/5b29a69bb3d0e.jpg', '300', '533', '28845');
INSERT INTO `appcms_resource_list` VALUES ('531', '163', '0', '/upload/img/2018/06/20/5b29a69d9cd54.jpg', '300', '533', '20251');
INSERT INTO `appcms_resource_list` VALUES ('532', '0', '0', '/upload/img/2018/06/20/5b29a7e8b807b.jpg', '120', '120', '2489');
INSERT INTO `appcms_resource_list` VALUES ('533', '164', '0', '/upload/img/2018/06/20/5b29a7ec8db51.jpg', '540', '960', '41942');
INSERT INTO `appcms_resource_list` VALUES ('534', '164', '0', '/upload/img/2018/06/20/5b29a7eea8574.PNG', '640', '1136', '148640');
INSERT INTO `appcms_resource_list` VALUES ('535', '164', '0', '/upload/img/2018/06/20/5b29a7f0b02d8.PNG', '640', '1136', '254396');
INSERT INTO `appcms_resource_list` VALUES ('543', '167', '0', '/upload/img/2018/06/20/5b29acdd27aea.jpg', '640', '1136', '57224');
INSERT INTO `appcms_resource_list` VALUES ('544', '167', '0', '/upload/img/2018/06/20/5b29acdee21cb.jpg', '640', '1136', '54704');
INSERT INTO `appcms_resource_list` VALUES ('545', '0', '0', '/upload/img/2018/06/20/5b29ae2495eb2.jpg', '120', '120', '6931');
INSERT INTO `appcms_resource_list` VALUES ('546', '168', '0', '/upload/img/2018/06/20/5b29ae6288dfe.jpg', '640', '1136', '46220');
INSERT INTO `appcms_resource_list` VALUES ('547', '168', '0', '/upload/img/2018/06/20/5b29ae647604e.jpg', '640', '1136', '60276');
INSERT INTO `appcms_resource_list` VALUES ('548', '168', '0', '/upload/img/2018/06/20/5b29ae677fb6f.jpg', '640', '1136', '64458');
INSERT INTO `appcms_resource_list` VALUES ('550', '169', '0', '/upload/img/2018/06/20/5b29aee2a727a.jpg', '640', '1136', '61168');
INSERT INTO `appcms_resource_list` VALUES ('551', '169', '0', '/upload/img/2018/06/20/5b29aee480e24.jpg', '640', '1136', '66183');
INSERT INTO `appcms_resource_list` VALUES ('552', '0', '0', '/upload/img/2018/06/20/5b29aee86a89b.jpg', '200', '200', '6864');
INSERT INTO `appcms_resource_list` VALUES ('553', '0', '0', '/upload/img/2018/06/20/5b29b0b1b7d17.jpg', '120', '120', '6497');
INSERT INTO `appcms_resource_list` VALUES ('554', '170', '0', '/upload/img/2018/06/20/5b29b0b945a85.jpg', '300', '533', '14922');
INSERT INTO `appcms_resource_list` VALUES ('555', '170', '0', '/upload/img/2018/06/20/5b29b0bb2ef63.jpg', '300', '533', '12991');
INSERT INTO `appcms_resource_list` VALUES ('556', '0', '0', '/upload/img/2018/06/20/5b29b128d4f4f.png', '96', '96', '6523');
INSERT INTO `appcms_resource_list` VALUES ('557', '171', '0', '/upload/img/2018/06/20/5b29b1326ad33.PNG', '640', '1136', '170176');
INSERT INTO `appcms_resource_list` VALUES ('558', '171', '0', '/upload/img/2018/06/20/5b29b13466a4d.PNG', '640', '1136', '142691');
INSERT INTO `appcms_resource_list` VALUES ('559', '0', '0', '/upload/img/2018/06/20/5b29b51b19ed0.jpg', '620', '620', '21439');
INSERT INTO `appcms_resource_list` VALUES ('560', '172', '0', '/upload/img/2018/06/20/5b29b52193211.png', '480', '854', '95777');
INSERT INTO `appcms_resource_list` VALUES ('561', '172', '0', '/upload/img/2018/06/20/5b29b524a6859.png', '480', '854', '111360');
INSERT INTO `appcms_resource_list` VALUES ('562', '172', '0', '/upload/img/2018/06/20/5b29b5287f256.png', '480', '854', '127219');
INSERT INTO `appcms_resource_list` VALUES ('563', '172', '0', '/upload/img/2018/06/20/5b29b59345921.jpg', '639', '1136', '76354');
INSERT INTO `appcms_resource_list` VALUES ('566', '173', '0', '/upload/img/2018/06/20/5b29bab7f208e.jpg', '640', '1136', '56829');
INSERT INTO `appcms_resource_list` VALUES ('567', '173', '0', '/upload/img/2018/06/20/5b29bac1a99b8.jpg', '640', '1136', '71018');
INSERT INTO `appcms_resource_list` VALUES ('568', '173', '0', '/upload/img/2018/06/20/5b29bac4578b6.jpg', '640', '1136', '57139');
INSERT INTO `appcms_resource_list` VALUES ('569', '0', '0', '/upload/img/2018/06/20/5b29be4040789.jpg', '120', '120', '9911');
INSERT INTO `appcms_resource_list` VALUES ('570', '174', '0', '/upload/img/2018/06/20/5b29be4531f3c.png', '300', '532', '20308');
INSERT INTO `appcms_resource_list` VALUES ('571', '174', '0', '/upload/img/2018/06/20/5b29be4713a4e.png', '300', '532', '18236');
INSERT INTO `appcms_resource_list` VALUES ('572', '174', '0', '/upload/img/2018/06/20/5b29be48f0ec6.png', '300', '532', '12269');
INSERT INTO `appcms_resource_list` VALUES ('573', '0', '0', '/upload/img/2018/06/20/5b29bf88469a3.png', '120', '120', '5168');
INSERT INTO `appcms_resource_list` VALUES ('574', '175', '0', '/upload/img/2018/06/20/5b29bf8f841fe.PNG', '640', '1136', '80120');
INSERT INTO `appcms_resource_list` VALUES ('575', '175', '0', '/upload/img/2018/06/20/5b29bf9173044.PNG', '640', '1136', '143482');
INSERT INTO `appcms_resource_list` VALUES ('576', '175', '0', '/upload/img/2018/06/20/5b29bf93588a5.PNG', '640', '1136', '130680');
INSERT INTO `appcms_resource_list` VALUES ('580', '176', '0', '/upload/img/2018/06/20/5b29c21edca2d.jpg', '256', '454', '41786');
INSERT INTO `appcms_resource_list` VALUES ('581', '0', '0', '/upload/img/2018/06/20/5b29c4286c9e9.jpg', '256', '256', '15422');
INSERT INTO `appcms_resource_list` VALUES ('582', '177', '0', '/upload/img/2018/06/20/5b29c42b2fc65.jpg', '256', '454', '35735');
INSERT INTO `appcms_resource_list` VALUES ('583', '177', '0', '/upload/img/2018/06/20/5b29c42d9daad.jpg', '256', '454', '34626');
INSERT INTO `appcms_resource_list` VALUES ('584', '177', '0', '/upload/img/2018/06/20/5b29c42fad046.jpg', '256', '454', '30601');
INSERT INTO `appcms_resource_list` VALUES ('585', '0', '0', '/upload/img/2018/06/20/5b29c663907b4.png', '256', '256', '66334');
INSERT INTO `appcms_resource_list` VALUES ('586', '178', '0', '/upload/img/2018/06/20/5b29c67b75be8.png', '280', '467', '152103');
INSERT INTO `appcms_resource_list` VALUES ('587', '178', '0', '/upload/img/2018/06/20/5b29c67d4c78c.png', '280', '467', '139798');
INSERT INTO `appcms_resource_list` VALUES ('588', '178', '0', '/upload/img/2018/06/20/5b29c67eaf684.png', '280', '467', '98787');
INSERT INTO `appcms_resource_list` VALUES ('589', '0', '0', '/upload/img/2018/06/20/5b29c99c913c4.png', '286', '286', '15490');
INSERT INTO `appcms_resource_list` VALUES ('590', '179', '0', '/upload/img/2018/06/20/5b29c9a698f09.jpg', '256', '454', '43876');
INSERT INTO `appcms_resource_list` VALUES ('591', '179', '0', '/upload/img/2018/06/20/5b29c9a83d667.jpg', '256', '454', '40334');
INSERT INTO `appcms_resource_list` VALUES ('592', '179', '0', '/upload/img/2018/06/20/5b29c9aa13c0d.jpg', '256', '454', '33477');
INSERT INTO `appcms_resource_list` VALUES ('596', '180', '0', '/upload/img/2018/06/20/5b29cb3b100f8.jpg', '256', '454', '36363');
INSERT INTO `appcms_resource_list` VALUES ('597', '0', '0', '/upload/img/2018/06/20/5b29ccc3dbfbc.PNG', '128', '128', '16990');
INSERT INTO `appcms_resource_list` VALUES ('598', '181', '0', '/upload/img/2018/06/20/5b29cccd7c94a.PNG', '640', '1136', '157973');
INSERT INTO `appcms_resource_list` VALUES ('599', '181', '0', '/upload/img/2018/06/20/5b29cccf435c9.PNG', '640', '1136', '132814');
INSERT INTO `appcms_resource_list` VALUES ('600', '181', '0', '/upload/img/2018/06/20/5b29ccd3523fd.PNG', '640', '1136', '111779');
INSERT INTO `appcms_resource_list` VALUES ('601', '0', '0', '/upload/img/2018/06/20/5b2a0005eabbe.jpg', '150', '150', '17299');
INSERT INTO `appcms_resource_list` VALUES ('602', '182', '0', '/upload/img/2018/06/20/5b2a0009493d1.PNG', '640', '1136', '144929');
INSERT INTO `appcms_resource_list` VALUES ('603', '182', '0', '/upload/img/2018/06/20/5b2a000b68522.PNG', '640', '1136', '129764');
INSERT INTO `appcms_resource_list` VALUES ('604', '182', '0', '/upload/img/2018/06/20/5b2a000dbbadc.PNG', '640', '1136', '133876');
INSERT INTO `appcms_resource_list` VALUES ('605', '0', '0', '/upload/img/2018/06/20/5b2a036c85112.png', '185', '183', '19021');
INSERT INTO `appcms_resource_list` VALUES ('606', '183', '0', '/upload/img/2018/06/20/5b2a03713702c.PNG', '640', '1136', '92723');
INSERT INTO `appcms_resource_list` VALUES ('607', '183', '0', '/upload/img/2018/06/20/5b2a0373a221b.PNG', '640', '1136', '166230');
INSERT INTO `appcms_resource_list` VALUES ('662', '0', '0', '/upload/img/2018/07/15/5b4b6c9b96805.png', '120', '120', '4896');
INSERT INTO `appcms_resource_list` VALUES ('663', '194', '0', '/upload/img/2018/07/15/5b4b6ca00d75b.jpg', '300', '533', '27576');
INSERT INTO `appcms_resource_list` VALUES ('664', '194', '0', '/upload/img/2018/07/15/5b4b6ca1b19e3.jpg', '300', '533', '23786');
INSERT INTO `appcms_resource_list` VALUES ('665', '194', '0', '/upload/img/2018/07/15/5b4b6ca351f3a.jpg', '300', '533', '20691');
INSERT INTO `appcms_resource_list` VALUES ('666', '194', '0', '/upload/img/2018/07/15/5b4b6ca60d57e.jpg', '300', '533', '20036');

-- ----------------------------
-- Table structure for `appcms_search_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_search_keyword`;
CREATE TABLE `appcms_search_keyword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `q` varchar(200) NOT NULL DEFAULT '' COMMENT '搜索关键字',
  `qnum` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '搜索次数',
  `qorder` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关键字排序',
  PRIMARY KEY (`id`),
  KEY `qorder` (`qorder`),
  KEY `q` (`q`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='搜索关键字记录表';

-- ----------------------------
-- Records of appcms_search_keyword
-- ----------------------------
INSERT INTO `appcms_search_keyword` VALUES ('21', '红包', '1', '0');
INSERT INTO `appcms_search_keyword` VALUES ('20', '沙发视频', '15', '0');
INSERT INTO `appcms_search_keyword` VALUES ('19', '东方', '3', '0');
INSERT INTO `appcms_search_keyword` VALUES ('9', '乐享看 ', '9', '0');
INSERT INTO `appcms_search_keyword` VALUES ('11', '闪电盒子', '11', '0');
INSERT INTO `appcms_search_keyword` VALUES ('12', '秒赚大钱', '9', '0');
INSERT INTO `appcms_search_keyword` VALUES ('13', '知聊', '8', '0');
INSERT INTO `appcms_search_keyword` VALUES ('14', '试客小兵', '2', '0');
INSERT INTO `appcms_search_keyword` VALUES ('15', '红包达人', '2', '0');
INSERT INTO `appcms_search_keyword` VALUES ('16', ' 财迷猫', '1', '0');
INSERT INTO `appcms_search_keyword` VALUES ('17', '嘀嗒赚', '1', '0');
INSERT INTO `appcms_search_keyword` VALUES ('18', '钱咖', '9', '0');
INSERT INTO `appcms_search_keyword` VALUES ('22', '快视频', '2', '0');

-- ----------------------------
-- Table structure for `appcms_url_rewrite`
-- ----------------------------
DROP TABLE IF EXISTS `appcms_url_rewrite`;
CREATE TABLE `appcms_url_rewrite` (
  `url_id` int(11) NOT NULL AUTO_INCREMENT,
  `url_title` varchar(400) NOT NULL DEFAULT '' COMMENT '地址名称',
  `url_true` varchar(400) NOT NULL DEFAULT '' COMMENT '真实地址',
  `url_rule` varchar(400) NOT NULL DEFAULT '' COMMENT '伪静态规则',
  PRIMARY KEY (`url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='伪静态规则表';

-- ----------------------------
-- Records of appcms_url_rewrite
-- ----------------------------
INSERT INTO `appcms_url_rewrite` VALUES ('1', 'list_app', 'index.php?tpl=list_app&cid={cid}&p={p}', 'app/list_{cid}_{p}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('2', 'list_app_index', 'index.php?tpl=list_app&cid={cid}&p=1', 'app/list_{cid}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('3', 'cpy_list_app', 'index.php?tpl=list_app&cpy={cpy}&p={p}', 'app/{cpy}/{p}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('4', 'cpy_list_app_index', 'index.php?tpl=list_app&cpy={cpy}&p=1', 'app/{cpy}/');
INSERT INTO `appcms_url_rewrite` VALUES ('5', 'search', 'index.php?tpl=search&q={q}&p={p}', 'index.php?tpl=search&q={q}&p={p}');
INSERT INTO `appcms_url_rewrite` VALUES ('6', 'special_list', 'index.php?tpl=special_list&p={p}', 'sepcial/list_{p}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('7', 'special_list_index', 'index.php?tpl=special_list&p=1', 'sepcial/');
INSERT INTO `appcms_url_rewrite` VALUES ('8', 'special_content', 'index.php?tpl=special_content&id={id}', 'special/{id}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('9', 'list_info', 'index.php?tpl=list_info&cid={cid}&p={p}', 'info/list_{cid}_{p}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('10', 'list_info_index', 'index.php?tpl=list_info&cid={cid}&p=1', 'info/list_{cid}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('11', 'cpy_list_info', 'index.php?tpl=list_info&cpy={cpy}&p={p}', 'info/{cpy}/{p}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('12', 'cpy_list_info_index', 'index.php?tpl=list_info&cpy={cpy}&p=1', 'info/{cpy}/');
INSERT INTO `appcms_url_rewrite` VALUES ('13', 'content_info', 'index.php?tpl=content_info&id={id}', 'info/{id}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('14', 'content_app', 'index.php?tpl=content_app&id={id}', 'app/{id}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('15', 'content_app_history', 'index.php?tpl=content_app_history&id={id}&hid={hid}', 'app/{id}_{hid}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('16', 'search_index', 'index.php?tpl=search&q={q}', 'index.php?tpl=search&q={q}');
INSERT INTO `appcms_url_rewrite` VALUES ('17', 'lastupdate', 'index.php?tpl=lastupdate&p={p}', 'lastupdate/{p}.html');
INSERT INTO `appcms_url_rewrite` VALUES ('18', 'lastupdate_index', 'index.php?tpl=lastupdate&p=1', 'lastupdate/');
INSERT INTO `appcms_url_rewrite` VALUES ('19', 'img', 'pic.php?url={url}&type={type}', 'image/{url}.{type}');
INSERT INTO `appcms_url_rewrite` VALUES ('20', 'content_info_list', 'index.php?tpl=content_info&id={id}&p={p}', 'info/{id}_{p}.html');
