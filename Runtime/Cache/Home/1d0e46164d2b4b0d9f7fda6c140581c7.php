<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="手机网" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>GSM手机_手机类型_ECSHOP演示站 - Powered by ECShop</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="/Newthink/Public/Home/css/member.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/Newthink/Public/Home/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header">
        <div class="header_top">
            <div class="header_top_l">
            </div>
            <div class="header_top_m">
                <div style='float:left' id="ECS_MEMBERZONE">
                    您好,欢迎光临本店!

                    
                    <a href="#">会员登录</a>|<a href="#">免费注册</a>
                    
                    <label id="myaccount">
                        <a href="#">
                
                        </a>
                    </label>
                    

                    <label id="helpcenter">
                        <a href="#">
                            帮助中心
                        </a>
                    </label>
                </div>
                <div style='float:right'>
                    <label id="collect">
                        <a href="#">
                            加入收藏
                        </a>
                    </label>
                    <label id="sethome">
                        <a href="#" onclick="SetHome(this,window.location)">
                            设为首页
                        </a>
                    </label>
                </div>
                <div class='clear'>
                </div>
            </div>
            <div class="header_top_r">
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="logo">
            <a href="#">
                <img src="/Newthink/Public/Home/images/logo.gif">
            </a>
        </div>
        <div class="header_intro">
            <img src="/Newthink/Public/Home/images/by_top.gif">
        </div>
        <div class="headerdg">
            <em>
                抢购热线（全天24小时）
            </em>
            <p>
                <img src="/Newthink/Public/Home/images/tel1.gif">
            </p>
        </div>
    </div>
    <div id="nav">
        <div class="nav_m">
            <ul>
                <li>
                    <a href="#">
                        首页
                    </a>
                </li>
                <li>
                    <a href="#" id="navbg">
                        GSM手机
                    </a>
                </li>
                <li>
                    <a href="#">
                        双模手机
                    </a>
                </li>
                <li>
                    <a href="#">
                        手机配件
                    </a>
                </li>
                <li>
                    <a href="#">
                        留言板
                    </a>
                </li>
            </ul>
        </div>
        <DIV class="navr_recent">
            <SPAN class="navr_recent_l1">
                　
            </SPAN>
            <A onmousedown="bubble(event);" href="#" name="myliulan">
                <a href="#" title="查看购物车">
                    <a href="#" title="查看购物车">
                        您的购物车中有 0 件商品，总计金额 ￥0.00元。
                    </a>
                </a>
            </A>
            <EM>
                &nbsp;&nbsp;&nbsp;&nbsp;
            </EM>
        </DIV>
        <div class="clear">
        </div>
    </div>
    <div class="nav_min_div" id="min_div">
        <img src="/Newthink/Public/Home/images/top_min.jpg">
    </div>
    <div id="body">
        <div class="body_l">
            <div class="subsearch">
                <form id="searchForm" name="searchForm" method="get" action="search.php"
                onSubmit="return checkSearchForm()">
                    <div>
                        <input name="keywords" type="text" id="keyword" value="" class="searchmobile">
                        <button class="menu_button" name="menu_button" onClick="return checkSearchForm()">
                        </button>
                    </div>
                </form>
            </div>
            <script type="text/javascript">
                < !--
                function checkSearchForm() {
                    if (document.getElementById('keyword').value) {
                        document.searchForm.submit();
                        return true;
                    } else {
                        alert("请输入搜索关键词！");
                        return false;
                    }
                }-->
            </script>
            <div class="subnav_header">
            </div>
            <script type="text/javascript">
            function menu_c(o) {
                alert(o.getElementsByTagName('ul').length);
            }
            </script>

<div class="content">
	<div class="user">
		<div class="menu">当前位置: <span><a href=".">首页</a> <code>&gt;</code> 购物流程</span></div>
		<form id="formCart" name="formCart" method="post" action="flow.php">
		<div class="shop">
			<div class="linebt"><span><img src="themes/haoqugou/images/cart.jpg" align="absmiddle" />我的购物车</span><em></em></div>
			<ul class="shop_b">
				<li class="shop_num">序号</li>
				<li class="shop_pic">　</li>
				<li class="shop_name">商品名称</li>
				<li class="shop_color">颜色</li>
				<li class="shop_nu">购买数量</li>
				<li class="shop_much">本店价</li>
				<li class="shop_sum">小计</li>
				<li class="shop_oper">操作</li>
				<div class="clear"></div>
			</ul>
						<ul class="ulcart">
				<li class="shop_num">1</li>
				<li class="shop_pic">
					<div class="promin_mainpic">
						<div class="promin_mainpicn">
						<a href="goods.php?id=32" target="_blank"><img src="images/200905/thumb_img/32_thumb_G_1242110760196.jpg" border="0" title="诺基亚N85" /></a><br />
						<i></i>
						</div>
					</div>
				</li>
				<li class="shop_name">
					 <a href="goods.php?id=32" target="_blank">诺基亚N85</a>
				</li>
				<li class="shop_color">&nbsp;</li>
				<li class="shop_nu">
										<img src="/Newthink/Public/Home/images/bag_close.gif" onclick="decrCart()" />
                                        <input type="text" name="goods_number[44]" class="input_num" id="goods_number_44" value="1" size="4" style="text-align:center" readonly="true" />
                                        <img src="/Newthink/Public/Home/images/bag_open.gif" onclick="addCart()" />
									</li>
				<li class="shop_much">￥3010.00元</li>
				<li class="shop_sum">￥3010.00元</li>
				<li class="shop_oper">
				<a href="javascript:if (confirm('您确实要把该商品移出购物车吗？')) location.href='flow.php?step=drop_goods&amp;id=44'; " class="f6">删除</a>
										<a href="javascript:if (confirm('您确实要把该商品移出购物车吗？')) location.href='flow.php?step=drop_to_collect&amp;id=44'; " class="f6">放入收藏夹</a>
									</li>
				<div class="clear"></div>
			</ul>
						<div class="contno">
				<span>
										购物金额小计 ￥3010.00元，比市场价 ￥3612.00元 节省了 ￥602.00元				</span>
			</div>
			<div class="shop_bot">
				<span class="left"></span>
				<span class="right">
					<input type="hidden" name="step" value="update_cart" />
					<input type="button" value="继续购物" class="button_shop" style="cursor:pointer" onClick="location.href='index.php';">
					<input type="button" value="开始结算" style="cursor:pointer" class="buttonredb" onClick="if (1==0) {alert('您还没有添加商品，无法进行结算。');return;}window.location.href='flow.php?step=checkout'">
				</span>
				<span class="clear"></span>
			</div>
		</div>
		<div class="clear"></div>
  		</form>
		
		
		
		
			</div>
</div>

<div class="footert">
        <div class="footertl">
            <div class="footert_1">
                <img src="/Newthink/Public/Home/images/logo21.gif">
            </div>
            <div class="footert_2">
                抢购热线（9:00-18:00）
                <p>
                    <img src="/Newthink/Public/Home/images/tel2.gif">
                </p>
            </div>
        </div>
        <div class="footertr">
            <div class="footertr_t">
                好趣购是货真价实的网络直销商城，好趣购所售手机全部都是厂家直接供货，没有任何中间批发 和分销环节，让您以最低价格，购买到性价比最高的手机。
            </div>
            <div class="footertr_b">
                <dl class="footertr_d1">
                    <dt>
                    </dt>
                    <dd>
                        会员积分计划
                    </dd>
                </dl>
                <dl>
                    <dt>
                    </dt>
                    <dd>
                        免费订购热线
                    </dd>
                </dl>
                <dl class="footertr_d3">
                    <dt>
                    </dt>
                    <dd>
                        3000城市送货上门
                    </dd>
                </dl>
                <dl class="footertr_d4">
                    <dt>
                    </dt>
                    <dd>
                        品牌厂商直接供货
                    </dd>
                </dl>
                <dl class="footertr_d5">
                    <dt>
                    </dt>
                    <dd>
                        中国人保承保
                    </dd>
                </dl>
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        <div class="foottop">
            <dl>
                <dt>
                    新手上路
                </dt>
                <dd>
                    <a href="#" title="售后流程">
                        售后流程
                    </a>
                </dd>
                <dd>
                    <a href="#" title="购物流程">
                        购物流程
                    </a>
                </dd>
                <dd>
                    <a href="#" title="订购方式">
                        订购方式
                    </a>
                </dd>
            </dl>
            <dl>
                <dt>
                    手机常识
                </dt>
                <dd>
                    <a href="#" title="如何分辨原装电池">
                        如何分辨原装电池
                    </a>
                </dd>
                <dd>
                    <a href="#" title="如何分辨水货手机 ">
                        如何分辨水货手机
                    </a>
                </dd>
                <dd>
                    <a href="#" title="如何享受全国联保">
                        如何享受全国联保
                    </a>
                </dd>
            </dl>
            <dl>
                <dt>
                    配送与支付
                </dt>
                <dd>
                    <a href="#" title="货到付款区域">
                        货到付款区域
                    </a>
                </dd>
                <dd>
                    <a href="#" title="配送支付智能查询 ">
                        配送支付智能查询
                    </a>
                </dd>
                <dd>
                    <a href="#" title="支付方式说明">
                        支付方式说明
                    </a>
                </dd>
            </dl>
            <dl>
                <dt>
                    会员中心
                </dt>
                <dd>
                    <a href="#" title="资金管理">
                        资金管理
                    </a>
                </dd>
                <dd>
                    <a href="#" title="我的收藏">
                        我的收藏
                    </a>
                </dd>
                <dd>
                    <a href="#" title="我的订单">
                        我的订单
                    </a>
                </dd>
            </dl>
            <dl>
                <dt>
                    服务保证
                </dt>
                <dd>
                    <a href="#" title="退换货原则">
                        退换货原则
                    </a>
                </dd>
                <dd>
                    <a href="#" title="售后服务保证 ">
                        售后服务保证
                    </a>
                </dd>
                <dd>
                    <a href="#" title="产品质量保证 ">
                        产品质量保证
                    </a>
                </dd>
            </dl>
            <dl>
                <dt>
                    联系我们
                </dt>
                <dd>
                    <a href="#" title="网站故障报告">
                        网站故障报告
                    </a>
                </dd>
                <dd>
                    <a href="#" title="选机咨询 ">
                        选机咨询
                    </a>
                </dd>
                <dd>
                    <a href="#" title="投诉与建议 ">
                        投诉与建议
                    </a>
                </dd>
            </dl>
            <div class="foottop_r" onClick="window.location.href = '#'">
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="footbot">
            <a href="#">
                免责条款
            </a>
            |
            <a href="#">
                隐私保护
            </a>
            |
            <a href="#">
                咨询热点
            </a>
            |
            <a href="#">
                联系我们
            </a>
            |
            <a href="#">
                公司简介
            </a>
            |
            <a href="#">
                批发方案
            </a>
            |
            <a href="#">
                配送方式
            </a>
            <p>
                &copy; 2005-2011 ECSHOP 版权所有，并保留所有权利。
            </p>
            <div class="clear">
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
</body>
</html>