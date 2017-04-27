-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-03-02 01:42:53
-- 服务器版本： 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shangcheng`
--

-- --------------------------------------------------------

--
-- 表的结构 `cat`
--

CREATE TABLE `cat` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(20) NOT NULL DEFAULT ' ',
  `intro` varchar(100) NOT NULL DEFAULT ' ',
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cat`
--

INSERT INTO `cat` (`cat_id`, `cat_name`, `intro`, `parent_id`) VALUES
(1, '手机类型', '手机类型', 0),
(2, 'CDMA手机', 'CDMA手机', 1),
(3, 'GSM手机', 'GSM手机', 1),
(4, '3G手机', '3G手机', 1),
(5, '双模手机', '双模手机', 1),
(6, '手机配件', '手机配件', 0),
(7, '充电器', '充电器', 6),
(8, '耳机', '耳机', 6),
(9, '电池', '电池', 6),
(11, '读卡器和内存卡', '读卡器和内存卡', 6),
(12, '充值卡', '充值卡', 0),
(13, '小灵通/固话充值卡', '小灵通/固话充值卡', 12),
(14, '移动手机充值卡', '移动手机充值卡', 12),
(15, '联通手机充值卡', '联通手机充值卡', 12),
(16, '锤子手机', '锤子手机老罗的发布会就是将相声', 4);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` char(30) NOT NULL DEFAULT '',
  `content` varchar(140) NOT NULL DEFAULT '',
  `pubtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`comment_id`, `goods_id`, `user_id`, `email`, `content`, `pubtime`) VALUES
(1, 30, 4, 'world', 'hello         ', 1487160281),
(2, 30, 0, '123456@qq.com', '德玛西亚', 1487160322),
(3, 30, 4, 'admin888@qq.com', '剑圣', 1487161374),
(4, 32, 1, '1119204194@qq.com', '                        ', 1488394344),
(5, 32, 1, '333@qq.com', '                        hhhhhh', 1488394365);

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `goods_id` int(10) UNSIGNED NOT NULL,
  `goods_sn` char(15) NOT NULL DEFAULT '',
  `cat_id` smallint(6) NOT NULL DEFAULT '0',
  `brand_id` smallint(6) NOT NULL DEFAULT '0',
  `goods_name` varchar(60) NOT NULL DEFAULT '',
  `shop_price` decimal(9,2) NOT NULL DEFAULT '0.00',
  `market_price` decimal(9,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(6) NOT NULL DEFAULT '11',
  `click_count` mediumint(9) NOT NULL DEFAULT '0',
  `goods_weight` decimal(6,3) NOT NULL DEFAULT '0.000',
  `goods_brief` varchar(100) NOT NULL DEFAULT ' ',
  `goods_desc` text NOT NULL,
  `thumb_img` varchar(100) NOT NULL DEFAULT '',
  `goods_img` varchar(100) NOT NULL DEFAULT '',
  `ori_img` varchar(100) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(4) NOT NULL DEFAULT '1',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `is_best` tinyint(4) NOT NULL DEFAULT '0',
  `is_new` tinyint(4) NOT NULL DEFAULT '0',
  `is_hot` tinyint(4) NOT NULL DEFAULT '0',
  `add_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_update` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`goods_id`, `goods_sn`, `cat_id`, `brand_id`, `goods_name`, `shop_price`, `market_price`, `goods_number`, `click_count`, `goods_weight`, `goods_brief`, `goods_desc`, `thumb_img`, `goods_img`, `ori_img`, `is_on_sale`, `is_delete`, `is_best`, `is_new`, `is_hot`, `add_time`, `last_update`) VALUES
(1, 'ECS000000', 4, 8, 'KD876', '1388.00', '1665.60', 1, 10, '0.110', '', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 很多朋友都已经抢先体验了3G网络的可视通话、高速上网等功能。LG KD876手机<span style="font-size: x-large;"><span style="color: rgb(255, 0, 0);"><strong>支持TD-SCDMA/GSM双模单待</strong></span></span>，便于测试初期GSM网络和TD网络之间的切换和共享。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LG KD876手机整体采用银色塑料材质，<strong><span style="font-size: x-large;"><span style="color: rgb(255, 0, 0);">特殊的旋转屏设计是本机的亮点</span></span></strong>，而机身背部的300万像素摄像头也是首发的六款TD-SCDMA手机中配置最高的。LG KD876手机屏幕下方设置有外键盘，该键盘由左/右软键、通话/挂机键、返回键、五维摇杆组成，摇杆灵敏度很高，定位准确。KD876的内键盘由标准12个电话键和三个功能键、一个内置摄像头组成。三个功能键分别为视频通话、MP3、和菜单键，所有按键的手感都比较一般，键程适中，当由于按键排列过于紧密，快速发短信时很容易误按，用户在使用时一定要多加注意。LG KD876手机机身周边的接口设计非常简洁，手机的厚度主要来自屏幕旋转轴的长度，如果舍弃旋屏设计的话，估计<span style="font-size: x-large;"><strong><span style="color: rgb(255, 0, 0);">厚度可以做到10mm以下</span></strong></span>。</p>', 'images/200905/thumb_img/1_thumb_G_1240902890710.jpg', 'images/200905/goods_img/1_G_1240902890755.jpg', 'images/200905/source_img/1_G_1240902890895.gif', 1, 0, 1, 1, 1, 1240902890, 1269589545),
(4, 'ECS000004', 8, 1, '诺基亚N85原装充电器', '58.00', '69.60', 17, 1, '0.000', '', '', 'images/200905/thumb_img/4_thumb_G_1241422402467.jpg', 'images/200905/goods_img/4_G_1241422402722.jpg', 'images/200905/source_img/4_G_1241422402919.jpg', 1, 0, 0, 0, 0, 1241422402, 1242110662),
(3, 'ECS000002', 8, 1, '诺基亚原装5800耳机', '68.00', '81.60', 24, 3, '0.000', '', '', 'images/200905/thumb_img/3_thumb_G_1241422082679.jpg', 'images/200905/goods_img/3_G_1241422082168.jpg', 'images/200905/source_img/3_G_1241422082367.jpg', 1, 0, 0, 0, 0, 1241422082, 1241972255),
(5, 'ECS000005', 11, 7, '索爱原装M2卡读卡器', '20.00', '24.00', 8, 3, '0.000', '', '', 'images/200905/thumb_img/5_thumb_G_1241422518886.jpg', 'images/200905/goods_img/5_G_1241422518773.jpg', 'images/200905/source_img/5_G_1241422518470.jpg', 1, 0, 1, 1, 0, 1241422518, 1241972241),
(6, 'ECS000006', 11, 0, '胜创KINGMAX内存卡', '42.00', '50.40', 15, 0, '0.000', '', '', '', '', '', 1, 0, 0, 0, 0, 1241422573, 1241972238),
(7, 'ECS000007', 8, 1, '诺基亚N85原装立体声耳机HS-82', '100.00', '120.00', 20, 0, '0.000', '', '', 'images/200905/thumb_img/7_thumb_G_1241422785492.jpg', 'images/200905/goods_img/7_G_1241422785856.jpg', 'images/200905/source_img/7_G_1241422785657.jpg', 1, 0, 0, 0, 0, 1241422785, 1241972232),
(8, 'ECS000008', 3, 4, '飞利浦9@9v', '399.00', '478.79', 1, 9, '0.075', '', '<p align="left">作为一款性价比极高的入门级<font size="3" color="#ff0000"><strong>商务手机</strong></font>，飞利浦<a href="mailto:9@9v">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size="3" color="#ff0000">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size="3"><strong><font color="#ff0000">别</font><font color="#ff0000">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">此款手机采用<strong><font size="3" color="#ff0000">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size="3" color="#ff0000">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">&nbsp;作为入门级为数不多支持<strong><font size="3" color="#ff0000">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href="mailto:9@9V">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align="left">&nbsp;</p>\r\n<p align="left">&nbsp;</p>', 'images/200905/thumb_img/8_thumb_G_1241425513488.jpg', 'images/200905/goods_img/8_G_1241425513055.jpg', 'images/200905/source_img/8_G_1241425513518.jpg', 1, 0, 1, 1, 1, 1241425512, 1269589533),
(9, 'ECS000009', 3, 1, '诺基亚E66', '2298.00', '2757.60', 4, 29, '0.121', '', '<p>在机身材质方面，诺基亚E66大量采用金属材质，刨光的金属表面光泽动人，背面的点状效果规则却又不失变化，时尚感总是在不经意间诠释出来，并被人们所感知。E66机身尺寸为<span style="color: rgb(255, 0, 0);"><span style="font-size: larger;"><strong>107.5&times;49.5&times;13.6毫米，重量为121克</strong></span></span>，滑盖的造型竟然比E71还要轻一些。</p>\r\n<p>&nbsp;</p>\r\n<div>诺基亚E66机身正面是<span style="color: rgb(255, 0, 0);"><span style="font-size: larger;"><strong>一块2.4英寸1600万色QVGA分辨率（240&times;320像素）液晶显示屏</strong></span></span>。屏幕上方拥有光线感应元件，能够自适应周 围环境光调节屏幕亮度；屏幕下方是方向功能键区。打开滑盖，可以看到传统的数字键盘，按键的大小、手感、间隔以及键程适中，手感非常舒适。</div>\r\n<div>&nbsp;</div>\r\n<div>诺基亚为E66配备了一颗320万像素自动对焦摄像头，带有LED 闪光灯，支持多种拍照尺寸选择。</div>\r\n<p>&nbsp;</p>', 'images/200905/thumb_img/9_thumb_G_1241511871555.jpg', 'images/200905/goods_img/9_G_1241511871574.jpg', 'images/200905/source_img/9_G_1241511871550.jpg', 1, 0, 1, 1, 1, 1241511871, 1421103809),
(10, 'ECS000010', 3, 7, '索爱C702c', '1328.00', '1593.60', 7, 11, '1.000', '', '<p>C702可以说是一种在外观上复古的产物，不仅延续T系列早期的直板造型，而且在屏幕和键盘的组合分布上都继承了前辈的精髓。C702的机身尺寸为106×48×15.5毫米，重量为105克。此外索尼爱立信为C702融入了<font size="3" color="#ff0000"><strong>三防特性，即防尘、防滑和防水溅</strong></font>，这款新的C702搭载了索尼爱立信经典A200平台，界面布局与W908c、K858c一致，典型的特征就是配备左右软键、中央确定键和通话/挂机键。</p>\r\n<p>索尼爱立信C702配备一块<strong><font size="3" color="#ff0000">2.2英寸26万色TFT液晶显示屏</font></strong>，分辨率为240×320像素(QVGA)，显示效果属于目前主流水准。C702可以说是索尼爱立信首批<strong><font size="3" color="#ff0000">内置GPS模块</font></strong>的 手机产品之一，C702的搜星、定位一气呵成，十分精准，误差大约在10米之内。基本上定位后可以将有效卫星数量控制在4—6颗，可以说可以满足我们的需 要了。C702还提供了“影像定位”功能，配合内置的AGPS全球定位辅助系统，只须启动Geo-Tagging智能影像定位功能，便可将拍摄地点记录在 照片内，方便用户随时查询。</p>\r\n<p> </p>\r\n<p>作为一款Cyber-shot系列影像手机，索尼爱立信C702在拍照功能方面同样有不俗的表现。并且手机内置的<strong><font size="3" color="#ff0000">320万像素摄像头</font></strong>也 同样在拍照功能上也不错的表现。不仅支持自动聚焦和双LED闪光功能，而且还拥有2倍数码变焦、防红眼、Photo fix优画及场景模式等功能。索尼爱立信C702除了配备的是最大光圈为F3.2的4.2毫米镜头之外，该机也如同门中的旗舰C902一样增加了对脸部有 先自动聚焦功能的支持。</p>\r\n<p> </p>', 'images/200905/thumb_img/10_thumb_G_1242973436403.jpg', 'images/200905/goods_img/10_G_1242973436141.jpg', 'images/200905/source_img/10_G_1242973436172.jpg', 1, 0, 0, 0, 1, 1241965622, 1245290333),
(11, 'ECS000011', 3, 7, '索爱c438', '1300.00', '0.00', 1, 0, '1.000', '', '', '', '', '', 1, 1, 0, 0, 0, 1241966951, 1241966960),
(12, 'ECS000012', 3, 2, '摩托罗拉A810', '983.00', '1179.60', 8, 13, '0.000', '', '<p>全机使用的材质除去电池盖部分采用了金属以外，其它均使用了ABS工程塑料作为主材，这款手机的三围是105&times;51&times;14毫米，有着100克的轻量级重量，拿在手中的感觉还是非常不错的。A810手机作为一款<strong><font size="3" color="#ff0000">PDA手机</font></strong>在设计的时候取消了键盘配置，一切数字键都要依靠手机内提供的虚拟键盘进行操作，在手机的左上侧是一个<strong><font size="3" color="#ff0000">3.5mm的标准耳机插口</font></strong>，这种设计可以让用户使用自己习惯或者喜欢的耳机去欣赏音乐。</p>\r\n<p>&nbsp;</p>\r\n<p>这款摩托罗拉A810手机配置了一块<font size="3" color="#ff0000"><strong>26万色的2.2英寸TFT全触摸屏幕</strong></font>，其分辨率达到了主流的QVGA水平（240&times;320像素），摩托罗拉A810采用了内部核心为2.6.10的<strong><font size="3" color="#ff0000">LINUX操作系统</font></strong>，菜单上依然采用传统的9宫格的显示方式，一般手机的名片式电话本只能支持诸如电话、邮件、传真、公司等一些基本信息，而A810手机的电话本除了这些还支持公司地址，配偶信息、子女姓名、上司名称、助手等等，对于一款手机来说，电话本不可谓不强大。A810的<strong><font size="3" color="#ff0000">手写识别能力相当的惊人</font></strong>，对连笔、草书和倒插笔的识别率都相当的高，同时还为左右手设置了不同的书写习惯选择，并支持手写速度的调节。</p>\r\n<p>这款A810手机<strong><font size="3" color="#ff0000">内置的音乐播放功能</font></strong>可以支持MP3、WAV、AMR、AAC等格式的音乐播放，<font size="3" color="#ff0000"><strong>支持后台播放</strong></font>。视频方面，这款A810支持MP4、3GP、H.263格式的播放，视频播放器同样简约，操作方便，这款摩托罗拉A810还内置了6款游戏，每一款都有很高的耐玩性，而且都是支持触摸屏操作的，同时这款手机还内置了<strong><font size="3" color="#ff0000">FM收音机</font></strong>，支持自动搜索，并提供了20个频道供用户存储，不过收音机并不支持后台播放。</p>\r\n<p>&nbsp;</p>', 'images/200905/thumb_img/12_thumb_G_1241965978410.jpg', 'images/200905/goods_img/12_G_1241965978209.jpg', 'images/200905/source_img/12_G_1241965978878.jpg', 1, 0, 0, 1, 0, 1245297652, 1245297670),
(13, 'ECS000013', 3, 1, '诺基亚5320 XpressMusic', '1311.00', '1573.20', 8, 13, '0.000', '', '<p>诺基亚5320XpressMusic音乐手机采用XpressMusic系列常见的黑红、黑蓝配色方案，而材质方便则选用的是经过<strong><font size="3" color="#ff0000">抛光处理</font></strong>的工程塑料；三围/体重为，为108&times;46&times;15mm/<strong><font size="3" color="#ff0000">90g</font></strong>，手感舒适。</p>\r\n<p>&nbsp;</p>\r\n<p>诺基亚5320采用的是一块可视面积为2.0英寸的<font size="3" color="#ff0000"><strong>1600万色</strong></font>屏幕，分辨率是常见的240&times;320像素（QVGA）。虽然屏幕不是特别大，但效果非常精细，色彩还原不错。</p>\r\n<p>&nbsp;</p>\r\n<p>手机背面，诺基亚为5320XM配备一颗<strong><font size="3" color="#ff0000">200W像素</font></strong>的摄像头，并且带有<strong><font size="3" color="#ff0000">两个LED的补光灯</font></strong>，可以实现拍照、摄像功能，并能通过彩信、邮件方式发送给朋友。</p>\r\n<p>&nbsp;</p>', 'images/200905/thumb_img/13_thumb_G_1241968002527.jpg', 'images/200905/goods_img/13_G_1241968002233.jpg', 'images/200905/source_img/13_G_1241968002732.jpg', 1, 0, 0, 0, 1, 1241967762, 1269589198),
(14, 'ECS000014', 4, 1, '诺基亚5800XM', '2625.00', '3150.00', 1, 6, '0.000', '', '', 'images/200905/thumb_img/14_thumb_G_1241968492116.jpg', 'images/200905/goods_img/14_G_1241968492932.jpg', 'images/200905/source_img/14_G_1241968492305.jpg', 1, 0, 0, 0, 1, 1241968492, 1269589186),
(15, 'ECS000015', 3, 2, '摩托罗拉A810', '788.00', '945.60', 3, 8, '0.000', '', '', 'images/200905/thumb_img/15_thumb_G_1242973362970.jpg', 'images/200905/goods_img/15_G_1242973362318.jpg', 'images/200905/source_img/15_G_1242973362751.jpg', 1, 1, 0, 1, 1, 1241968703, 1245297631),
(16, 'ECS000016', 2, 11, '恒基伟业G101', '823.33', '988.00', 0, 3, '0.000', '', '', 'images/200905/thumb_img/16_thumb_G_1241968949103.jpg', 'images/200905/goods_img/16_G_1241968949002.jpg', 'images/200905/source_img/16_G_1241968949402.jpg', 0, 0, 0, 0, 0, 1241968949, 1245290562),
(17, 'ECS000017', 3, 5, '夏新N7', '2300.00', '2760.00', 1, 10, '0.000', '', '', 'images/200905/thumb_img/17_thumb_G_1241969394587.jpg', 'images/200905/goods_img/17_G_1241969394677.jpg', 'images/200905/source_img/17_G_1241969394844.jpg', 1, 0, 1, 0, 1, 1241969394, 1269589169),
(18, 'ECS000018', 4, 5, '夏新T5', '2878.00', '3453.60', 1, 0, '0.000', '', '<p>&nbsp;  TD-SCDMA/GSM两种模式任意切换，中国3G手机先驱，支持大陆特有3G网络，轻松实现可视电话、视频留言、视频会议功能，2.6英寸Q屏，手写、键盘双输入，内置移动证券，支持手机邮箱、手机地图、无驱U盘</p>', '', '', '', 1, 1, 0, 0, 0, 1241969533, 1241969533),
(19, 'ECS000019', 3, 6, '三星SGH-F258', '858.00', '1029.60', 12, 7, '0.000', '从整体来看，三星SGH-F258比较时尚可爱，三围尺寸为94×46×17.5mm，重量为96克，曲线柔和具有玲珑美感\r\n', '<p>从整体来看，三星SGH-F258比较<font size="3" color="#ff0000"><strong>时尚</strong></font>可爱，三围尺寸为94&times;46&times;17.5mm，重量为96克，曲线柔和具有玲珑美感。</p>\r\n<p>&nbsp;</p>\r\n<p>三星F258的前面板整体应用<strong><font size="3" color="#ff0000">镜面效果</font></strong>，2.0英寸显示屏幕略显窄小，导航键与功能键在滑盖滑开之前是前面板的全部控制键，没有挂断和接听键，不过，五向键有<font size="3"><strong><font color="#ff0000">音乐操</font><font color="#ff0000">作</font></strong></font>功能，明确显示了F258音乐手机的定位。</p>\r\n<p>&nbsp;</p>\r\n<p>F258的数字键键区采用了极具金属质感的平板式设计，每颗按键的面积足够大，按键与按键之间的间隔明显，操作起来手感舒适。</p>', 'images/200905/thumb_img/19_thumb_G_1241970175208.jpg', 'images/200905/goods_img/19_G_1241970175091.jpg', 'images/200905/source_img/19_G_1241970175549.jpg', 1, 0, 1, 1, 1, 1241970139, 1269589154),
(20, 'ECS000020', 3, 6, '三星BC01', '280.00', '336.00', 12, 14, '0.000', '', '', 'images/200905/thumb_img/20_thumb_G_1242106490058.jpg', 'images/200905/goods_img/20_G_1242106490663.jpg', 'images/200905/source_img/20_G_1242106490922.jpg', 1, 0, 1, 1, 1, 1241970417, 1269589110),
(21, 'ECS000021', 3, 10, '金立 A30', '2000.00', '2400.00', 40, 4, '0.000', '', '<p>&nbsp;</p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">标准配置: 标准锂电池两块,充电器两个,立体声耳机一个,数据线,说明书送256TF</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">通讯功能&nbsp; 输入法 短信功能 话机通讯录 通话记录</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">输入法: 中文输入法</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">短信功能: 支持短信300条和彩信100条</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">话机通讯录: 1000组名片式电话存储 来电防火墙功能&nbsp; 来电大头贴及来电铃声识别</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">通话记录：支持电话录音,恢复/静音,双音多频,免提</font></span></p>\r\n<p>&nbsp;</p>\r\n<p><font size="3">高级功能</font></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">多媒体娱乐: 200万像素，最大支持10240*960，11级数码变焦,多种效果设置,连拍可全屏查看拍摄或下载的图片.支持有声MP4短片拍摄，录像时间根据内存 大小而定，拍摄录像,TV电视可跟朋友家人一起分享。支持网络摄像头功能 支持MPEG4、3GP(H.263)等视频格式 支持MP3等音频格式播放， 支持歌词播放</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">内置游戏:智能拼图</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">扩展存储功能:支持TF扩展,支持U盘功能,本机内置1M,随机赠送256TF卡</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">高级功能:直板/智能PDA手写/键盘输入 超长待机 WAP上网&nbsp; 录音 蓝牙 FM收音机 电子书 Java扩展 TV电视输出 声控语音拨号 免费电视 来电防火墙&nbsp;&nbsp;&nbsp;</font></span></p>\r\n<p align="left"><span style="font-size: medium;"><font size="3">附加功能: 日历 计算器 闹钟 记事本 日程表 秒表 单位换算</font></span></p>\r\n<p><span style="font-size: medium;"><font size="3">提醒 以上性能均为本公司员工试机后所写,产品资料仅供参考,请以收到实物为准</font></span></p>', 'images/200905/thumb_img/21_thumb_G_1242109298150.jpg', 'images/200905/goods_img/21_G_1242109298873.jpg', 'images/200905/source_img/21_G_1242109298831.jpg', 1, 0, 0, 0, 0, 1241970634, 1269589102),
(22, 'ECS000022', 3, 3, '多普达Touch HD', '5999.00', '7198.80', 1, 15, '0.000', '', '<p><img src="http://xgone.xgou.com/xgoumanage/upload/20090325/2009032502045081100887.jpg" alt="" /></p>\r\n<p>&nbsp;</p>\r\n<p><img src="http://www.ouku.com/upimg/ouku/Image/002(1).jpg" alt="" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'images/200905/thumb_img/22_thumb_G_1241971076803.jpg', 'images/200905/goods_img/22_G_1241971076358.jpg', 'images/200905/source_img/22_G_1241971076130.jpg', 1, 0, 1, 1, 0, 1241971076, 1269589090),
(23, 'ECS000023', 5, 1, '诺基亚N96', '3700.00', '4440.00', 8, 17, '0.000', '', '<p>诺基亚N96采用了<strong><font size="3" color="#ff0000">双向滑盖</font></strong>设计，机身整体呈灰黑色，沉稳、大气，机身材质采用了高强度的塑料材质，手机背面采用了抛光面板的设计风格。N96三维体积103*55*20mm，重量为125g。屏幕方面，诺基亚N96配备一块<strong><font size="3" color="#ff0000">2.8英寸</font></strong>的屏幕，支持<strong><font size="3" color="#ff0000">1670万色</font></strong>显示，分辨率达到QVGA（320&times;240）水准。</p>\r\n<p><img alt="" src="file:///C:/DOCUME~1/user/LOCALS~1/Temp/moz-screenshot.jpg" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<img src="http://img2.zol.com.cn/product/21/896/ceN6LBMCid3X6.jpg" alt="" /></p>\r\n<p>诺基亚N96设置有专门的<strong><font size="3" color="#ff0000">音乐播放键</font></strong>和标准的3.5毫米音频插口，支持多格式音乐播放。内置了<strong><font size="3" color="#ff0000">多媒体播放器</font></strong>，支持FM调频收音机等娱乐功能。N96手机支持<strong><font size="3" color="#ff0000">N-Gage游戏平台</font></strong>，内置包括<font size="3" color="#ff0000"><strong>《PinBall》完整版</strong></font>在内的四款N-Gage游戏，除了手机本身内置的游戏，还可以从N-Gage的网站下载或者购买最新的游戏，而且可以在论坛里和其他玩家一起讨论。</p>\r\n<p><img src="http://img2.zol.com.cn/product/21/898/cekkw57qJjSI.jpg" alt="" /></p>\r\n<p>&nbsp;</p>', 'images/200905/thumb_img/23_thumb_G_1241971556399.jpg', 'images/200905/goods_img/23_G_1241971556855.jpg', 'images/200905/source_img/23_G_1241971556256.jpg', 1, 0, 1, 1, 0, 1241971488, 1269589078),
(24, 'ECS000024', 3, 9, 'P806', '2000.00', '2400.00', 100, 35, '0.000', '', '<div>\r\n<div>\r\n<div><font size="4">规格参数</font></div>\r\n<p><font size="4"><span>上市时间：</span><span>2008年06月</span></font></p>\r\n<p><font size="4"><span>网络频率：</span><span>GSM/GPRS；900/1800MHz</span></font></p>\r\n<p><font size="4"><span>重　量　：</span><span>未知</span></font></p>\r\n<p><font size="4"><span>尺寸/体积：</span><span>未知</span></font></p>\r\n<p><font size="4"><span>可选颜色：</span><span>银色</span></font></p>\r\n<p><font size="4"><span>屏幕参数：</span><span>26万色TFT彩色屏幕；</span></font></p>\r\n<p><font size="4"><span>WAP上网：</span><span>支持飞笺</span></font></p>\r\n<p><font size="4"><span>基本配置:<em><strong><font size="5" color="#ff00ff">二电(1760毫安) 一充 数据线 耳机 手写笔 512M内存卡</font></strong></em></span></font></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<div><font size="4">基本功能</font></div>\r\n<p><font size="4"><span>『时钟』</span><span>『内置振动』</span><span>『录音』</span><span>『可选铃声』</span></font></p>\r\n<p><font size="4"><span>『和弦铃声』</span><span>『MP3铃声』</span><span>『来电铃声识别』</span><span>『来电图片识别』</span></font></p>\r\n<p><font size="4"><span>『情景模式』</span><span>『待机图片』</span><span>『图形菜单』</span><span>『触摸屏』</span></font></p>\r\n<p><span><font size="4">『手写输入』</font></span></p>\r\n<div><font size="4">通信功能</font></div>\r\n<p><font size="4"><span>『双卡双待』</span><span>『内置天线』</span><span>『输入法』</span><span>『中文短信』</span></font></p>\r\n<p><font size="4"><span>『短信群发』</span><span>『多媒体短信』</span><span>『话机通讯录』</span><span>『通话记录』</span></font></p>\r\n<p><font size="4"><span>『免提通话』</span><span>『飞行模式』</span></font></p>\r\n<div><font size="4">多媒体娱乐 :支持3GP、MP4文件播放</font></div>\r\n<p><font size="4"><span>『视频播放』</span><span>『MP3播放器』</span></font></p>\r\n<p><font size="4"><span>多媒体卡扩展：</span><span>支持microSD卡扩展&nbsp;</span></font></p>\r\n<p><font size="4"><span>摄像头：</span><span>内置</span></font></p>\r\n<p><font size="4"><span>摄像头像素：</span><span>30万像素</span></font></p>\r\n<p><font size="4"><span>传感器类型：</span><span>CMOS</span></font></p>\r\n<p><font size="4"><span>变焦模式：</span><span>数码变焦</span></font></p>\r\n<p><font size="4"><span>照片分辨率：</span><span>多种照片分辨率选择</span></font></p>\r\n<p><font size="4"><span>拍摄模式：</span><span>多种拍摄模式选择</span></font></p>\r\n<p><font size="4"><span>照片质量：</span><span>多种照片质量选择</span></font></p>\r\n<p><font size="4"><span>视频拍摄：</span><span>有声视频拍摄</span></font></p>\r\n<div><font size="4">数据传输</font></div>\r\n<p><font size="4"><span>『WAP浏览器』</span><span>『数据线接口』</span></font></p>\r\n<div><font size="4">个人助理</font></div>\r\n<p><font size="4"><span>『闹钟』</span><span>『日历』</span><span>『计算器』</span></font></p>', 'images/200905/thumb_img/24_thumb_G_1241971981429.jpg', 'images/200905/goods_img/24_G_1241971981284.jpg', 'images/200905/source_img/24_G_1241971981107.jpg', 1, 0, 1, 1, 1, 1241971981, 1269589064),
(25, 'ECS000025', 13, 0, '小灵通/固话50元充值卡', '48.00', '57.59', 2, 0, '0.000', '', '', 'images/200905/thumb_img/25_thumb_G_1241972709885.jpg', 'images/200905/goods_img/25_G_1241972709544.jpg', 'images/200905/source_img/25_G_1241972709750.jpg', 1, 0, 1, 0, 1, 1241972709, 1245047546),
(26, 'ECS000026', 13, 0, '小灵通/固话20元充值卡', '19.00', '22.80', 2, 0, '0.000', '', '', 'images/200905/thumb_img/26_thumb_G_1241972789393.jpg', 'images/200905/goods_img/26_G_1241972789293.jpg', 'images/200905/source_img/26_G_1241972789353.jpg', 1, 0, 0, 0, 1, 1241972789, 1245047540),
(27, 'ECS000027', 15, 0, '联通100元充值卡', '95.00', '100.00', 2, 0, '0.000', '', '', 'images/200905/thumb_img/27_thumb_G_1241972894068.jpg', 'images/200905/goods_img/27_G_1241972894061.jpg', 'images/200905/source_img/27_G_1241972894069.jpg', 1, 0, 1, 1, 1, 1241972894, 1245047557),
(28, 'ECS000028', 15, 0, '联通50元充值卡', '45.00', '50.00', 0, 0, '0.000', '', '', 'images/200905/thumb_img/28_thumb_G_1241972976986.jpg', 'images/200905/goods_img/28_G_1241972976313.jpg', 'images/200905/source_img/28_G_1241972976695.jpg', 1, 0, 0, 0, 1, 1241972976, 1245047542),
(29, 'ECS000029', 14, 0, '移动100元充值卡', '90.00', '0.00', 0, 0, '0.000', '', '', 'images/200905/thumb_img/29_thumb_G_1241973022239.jpg', 'images/200905/goods_img/29_G_1241973022206.jpg', 'images/200905/source_img/29_G_1241973022514.jpg', 1, 0, 1, 0, 1, 1241973022, 1245047543),
(30, 'ECS000030', 14, 0, '移动20元充值卡', '18.00', '21.00', 9, 1, '0.000', '', '', 'images/200905/thumb_img/30_thumb_G_1241973114800.jpg', 'images/200905/goods_img/30_G_1241973114234.jpg', 'images/200905/source_img/30_G_1241973114587.jpg', 1, 0, 1, 0, 1, 1241973114, 1245047549),
(31, 'ECS000031', 3, 2, '摩托罗拉E8 ', '1337.00', '1604.39', 1, 5, '0.000', '', '', 'images/200905/thumb_img/31_thumb_G_1242110412996.jpg', 'images/200905/goods_img/31_G_1242110412332.jpg', 'images/200905/source_img/31_G_1242110412519.jpg', 0, 0, 0, 0, 0, 1242110412, 1242140652);
INSERT INTO `goods` (`goods_id`, `goods_sn`, `cat_id`, `brand_id`, `goods_name`, `shop_price`, `market_price`, `goods_number`, `click_count`, `goods_weight`, `goods_brief`, `goods_desc`, `thumb_img`, `goods_img`, `ori_img`, `is_on_sale`, `is_delete`, `is_best`, `is_new`, `is_hot`, `add_time`, `last_update`) VALUES
(32, 'ECS000032', 3, 1, '诺基亚N85', '3010.00', '3612.00', 4, 9, '0.000', '', '<p>诺基亚N85参数</p>\r\n<div>&nbsp;</div>\r\n<div>\r\n<table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n    <tbody>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>基本参数</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">手机昵称</td>\r\n            <td width="450" bgcolor="#ffffff">N85</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">上市日期</td>\r\n            <td width="450" bgcolor="#ffffff">2008年10月</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">手机类型</td>\r\n            <td width="450" bgcolor="#ffffff">3G手机；拍照手机；智能手机</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">手机制式</td>\r\n            <td width="450" bgcolor="#ffffff">GSM</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">支持频段</td>\r\n            <td width="450" bgcolor="#ffffff">GSM850/900/1800/1900MHz</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">数据传输</td>\r\n            <td width="450" bgcolor="#ffffff">GPRS、EDGE</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">屏幕材质</td>\r\n            <td width="450" bgcolor="#ffffff">AMOLED</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">屏幕色彩</td>\r\n            <td width="450" bgcolor="#ffffff">1600万色</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">主屏尺寸</td>\r\n            <td width="450" bgcolor="#ffffff">2.6英寸</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">主屏参数</td>\r\n            <td width="450" bgcolor="#ffffff">QVGA 320&times;240像素</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">铃音描述</td>\r\n            <td width="450" bgcolor="#ffffff">可选MP3、WAV、AAC或和弦Midi铃声等格式</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">操作系统</td>\r\n            <td width="450" bgcolor="#ffffff">Symbian OS v9.3操作系统与S60 v3.2平台的组合</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">机身内存</td>\r\n            <td width="450" bgcolor="#ffffff">74MB 内部动态存储空间<br />\r\n            78MB 内置NAND闪存</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">存储卡</td>\r\n            <td width="450" bgcolor="#ffffff">支持MicroSD(T-Flash)卡扩展最大至8GB</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">电池规格</td>\r\n            <td width="450" bgcolor="#ffffff">1200毫安时锂电池</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">标配</td>\r\n            <td width="450" bgcolor="#ffffff">诺基亚 N85<br />\r\n            诺基亚电池（BL-5K）<br />\r\n            诺基亚旅行充电器（AC-10）<br />\r\n            诺基亚视频数据线（CA-75U）<br />\r\n            诺基亚数据线（CA-101）<br />\r\n            诺基亚音乐耳机（HS-45、AD-54）<br />\r\n            诺基亚 8 GB microSD 卡（MU-43）<br />\r\n            《用户手册》<br />\r\n            《快速入门》</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">理论通话时间</td>\r\n            <td width="450" bgcolor="#ffffff">6.9 小时</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">理论待机时间</td>\r\n            <td width="450" bgcolor="#ffffff">363 小时</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>产品外形</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">外观设计</td>\r\n            <td width="450" bgcolor="#ffffff">双向滑盖</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">产品尺寸</td>\r\n            <td width="450" bgcolor="#ffffff">103&times;50&times;16mm<br />\r\n            体积：76 立方厘米</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">手机重量</td>\r\n            <td width="450" bgcolor="#ffffff">128克</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">产品天线</td>\r\n            <td width="450" bgcolor="#ffffff">内置</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>拍照功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">定时器</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">摄像头</td>\r\n            <td width="450" bgcolor="#ffffff">内置</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">摄像头像素</td>\r\n            <td width="450" bgcolor="#ffffff">500万像素</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">连拍功能</td>\r\n            <td width="450" bgcolor="#ffffff">支持</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">LED闪光灯</td>\r\n            <td width="450" bgcolor="#ffffff">双LED 闪光灯</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">数码变焦</td>\r\n            <td width="450" bgcolor="#ffffff">20 倍数码变焦</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">拍摄模式</td>\r\n            <td width="450" bgcolor="#ffffff">静止、连拍、自动定时器、摄像</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">照片特效</td>\r\n            <td width="450" bgcolor="#ffffff">正常、怀旧、黑白、负片、逼真</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">拍照描述</td>\r\n            <td width="450" bgcolor="#ffffff">支持最大2592&times;1944分辨率照片拍摄<br />\r\n            支持JPEG、Exif格式<br />\r\n            白平衡模式：自动、阳光、阴天、白炽灯、荧光灯<br />\r\n            感光度模式：高、中、低、自动</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">视频拍摄</td>\r\n            <td width="450" bgcolor="#ffffff">最高支持640 x 480 像素（VGA）、30 帧/秒</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>娱乐功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">收音机</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">TV-OUT</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">录音功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">电子书</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">视频播放</td>\r\n            <td width="450" bgcolor="#ffffff">内置RealPlayer播放器, 支持MPEG4、H.264/AVC、H.263/3GP、RealVideo等视频格式全屏播放</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">音乐播放</td>\r\n            <td width="450" bgcolor="#ffffff">内置播放器, 支持mp3、.wma、.aac、eAAC、eAAC+格式</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">游戏</td>\r\n            <td width="450" bgcolor="#ffffff">内置</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">Java功能</td>\r\n            <td width="450" bgcolor="#ffffff">支持Java MIDP 2.0 CLDC 1.1</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">Flash功能</td>\r\n            <td width="450" bgcolor="#ffffff">第3.0版Flash lite播放器</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>数据功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">蓝牙功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">数据线接口</td>\r\n            <td width="450" bgcolor="#ffffff">USB数据线 3.5mm立体声耳机插孔</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>基本功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">短信(SMS)</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">彩信(MMS)</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">免提通话</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">情景模式</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">闹钟功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">日历功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">输入方式</td>\r\n            <td width="450" bgcolor="#ffffff">键盘</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">通话记录</td>\r\n            <td width="450" bgcolor="#ffffff">未接来电+已接来电+已拨电话记录</td>\r\n        </tr>\r\n        <tr>\r\n            <td width="100" valign="center" bgcolor="#ffffff" align="left">通讯录</td>\r\n            <td width="450" bgcolor="#ffffff">S60标准化名片式通讯录</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>网络功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">电子邮件</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">WWW浏览器</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">WAP浏览器</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>商务功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">飞行模式</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">语音拨号</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">备忘录</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">日程表</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">世界时间</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">&nbsp;</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#f1f7fc" colspan="2">\r\n            <p><b>其他功能</b></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td width="550" valign="center" bgcolor="#ffffff" align="left" style="padding: 8px 0px;" colspan="2">\r\n            <table cellspacing="1" cellpadding="0" border="0" align="left">\r\n                <tbody>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">GPS功能</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">电子词典</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">待机图片</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">计算器</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">来电铃声识别</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">来电图片识别</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">来电防火墙</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">动画屏保</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">图形菜单</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">秒表</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0" bgcolor="#c5d7ed">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" bgcolor="#f1f7fc" align="middle" style="padding: 2px; font-weight: bold;">单位换算</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                        <td width="100" style="padding: 5px 0px 5px 10px;">\r\n                        <table width="100%" cellspacing="1" cellpadding="0" border="0">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td width="100%" align="middle" style="padding: 2px; float: none;">&nbsp;</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>', 'images/200905/thumb_img/32_thumb_G_1242110760196.jpg', 'images/200905/goods_img/32_G_1242110760868.jpg', 'images/200905/source_img/32_G_1242110760437.jpg', 1, 0, 0, 1, 1, 1242110760, 1269589051),
(33, 'ECS000033', 5, 10, '测试钻石手机', '0.00', '0.00', 1, 1, '0.000', '', '<p>测试商品 <span style="color: rgb(255, 0, 0);"><strong>&nbsp;fck编辑器</strong></span></p>', 'images/201501/thumb_img/33_thumb_G_1421103122433.jpg', 'images/201501/goods_img/33_G_1421103122720.jpg', 'images/201501/source_img/33_G_1421103122398.jpg', 1, 1, 0, 0, 0, 1421103122, 1421103122),
(35, '999999999', 4, 0, '华为牛逼牛逼华为', '100.00', '0.00', 1, 0, '1.000', ' ', '华为牛逼牛逼华为', 'images/2017-02-16/58a5bb5d17513.jpgx100.jpg', 'images/2017-02-16/58a5bb5d17513.jpgx230.jpg', 'images/2017-02-16/58a5bb5d17513.jpg', 1, 0, 1, 0, 0, 1487256413, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ordgoods`
--

CREATE TABLE `ordgoods` (
  `ordgoods_id` int(11) NOT NULL,
  `ordinfo_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `goods_name` varchar(20) DEFAULT NULL,
  `shop_price` decimal(7,2) DEFAULT NULL,
  `goods_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ordgoods`
--

INSERT INTO `ordgoods` (`ordgoods_id`, `ordinfo_id`, `goods_id`, `goods_name`, `shop_price`, `goods_num`) VALUES
(1, 1, 29, '移动100元充值卡', '90.00', 1),
(2, 2, 24, 'P806', '2000.00', 1),
(3, 2, 1, 'KD876', '1388.00', 1),
(4, 3, 35, '华为牛逼牛逼华为', '100.00', 1),
(5, 4, 35, '华为牛逼牛逼华为', '100.00', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ordinfo`
--

CREATE TABLE `ordinfo` (
  `ordinfo_id` int(10) UNSIGNED NOT NULL,
  `ord_sn` char(12) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `xm` char(10) NOT NULL DEFAULT '',
  `mobile` char(11) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `paytype` tinyint(4) NOT NULL DEFAULT '1',
  `paystatus` tinyint(4) NOT NULL DEFAULT '0',
  `money` decimal(9,2) DEFAULT NULL,
  `note` varchar(20) NOT NULL DEFAULT '',
  `ordtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ordinfo`
--

INSERT INTO `ordinfo` (`ordinfo_id`, `ord_sn`, `user_id`, `xm`, `mobile`, `address`, `paytype`, `paystatus`, `money`, `note`, `ordtime`) VALUES
(1, '201702162105', 4, '苏龙杰', '18513574250', '北京昌平', 1, 0, '90.00', '', 1487250321),
(2, '201702162106', 4, '卿鑫', '15202236637', '四川成都', 1, 0, '3388.00', '', 1487250401),
(3, '201702162253', 4, '周玉丁', '18513574250', '四川省资中县', 1, 0, '100.00', '', 1487256808),
(4, '201703020251', 1, '苏龙杰', '18513574250', '昌平区', 1, 0, '100.00', '', 1488394309);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` char(30) NOT NULL DEFAULT '',
  `email` char(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `salt` char(8) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `salt`) VALUES
(1, 'test1', 'test1@qq.com', 'test1', ''),
(2, 'test2', 'test2@qq.com', '123456', ''),
(3, 'teest3', 'test3@qq.com', '25ee7895f11d6a18466abb17a6a3cc9d', 'JhgZNvr8'),
(4, 'test4', 'test4@qq.com', 'ad77d3b76f0296bf8b59d708783d4413', 'rzd2nAbt'),
(5, '123456', '123@qq.com', '119a0f0dd0c51f0914794509e90f5ea3', 'blHVWzn9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_id`),
  ADD UNIQUE KEY `goods_sn` (`goods_sn`);

--
-- Indexes for table `ordgoods`
--
ALTER TABLE `ordgoods`
  ADD PRIMARY KEY (`ordgoods_id`),
  ADD KEY `ordinfo_id` (`ordinfo_id`);

--
-- Indexes for table `ordinfo`
--
ALTER TABLE `ordinfo`
  ADD PRIMARY KEY (`ordinfo_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `goods_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `ordgoods`
--
ALTER TABLE `ordgoods`
  MODIFY `ordgoods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `ordinfo`
--
ALTER TABLE `ordinfo`
  MODIFY `ordinfo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
