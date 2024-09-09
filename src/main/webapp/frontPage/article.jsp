<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>文章</title>
<script src="<%=request.getContextPath() %>/frontPage/static/js/jquery/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/frontPage/static/layui/layui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/frontPage/static/js/index/index.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/frontPage/static/js/index/freezeheader.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/frontPage/static/layui/lay/modules/layer.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/frontPage/static/js/index/sliders.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/frontPage/static/js/index/html5.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/frontPage/static/js/index/article.js" type="text/javascript"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/frontPage/static/layui/css/layui.css" media="all"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/frontPage/static/layui/css/modules/layer/default/layer.css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/frontPage/static/css/global.css"/>
<script type="text/javascript">

</script>
<!--
-->
</head>
<body>
<div class="layui-header header">
    <div class="main">
        <ul class="layui-nav layui-nav-left" lay-filter="filter">
            <li class="layui-nav-item layui-this nav-left">
              <a href="/ssm-adopt/frontPage/index.jsp">首页</a>
          </li>
          <li class="layui-nav-item">
              <a href="/ssm-adopt/frontPage/article.jsp">文章</a>
          </li>
          <li class="layui-nav-item">
              <a href="/ssm-adopt/frontPage/dogInfo.jsp">收养狗狗</a>
          </li>
          <li class="layui-nav-item">
              <a href="/ssm-adopt/frontPage/adoptDog.jsp">送养狗狗</a>
          </li>
          <li class="layui-nav-item">
              <a href="/ssm-adopt/comment/getFrontCommentInfoList.action">留言</a>
          </li>
        </ul>
        
        <ul class="layui-nav layui-layout-right layui-nav-right" lay-filter="filter">
      <li class="layui-nav-item">
        <a href="javascript:;"><img src="<%=request.getContextPath() %>/frontPage/static/images/head.jpg" class="layui-nav-img">${sessionUser.username}</a>
        <dl class="layui-nav-child">
            <dd><a href="/ssm-adopt/user/logout.action">退了</a></dd>
        </dl>
      </li>
    </ul>
    </div>
</div>
<div class="layui-container container">

    <div class="layui-row layui-col-space20">
        <div class="layui-col-md8">
            <div>
              <span class="layui-breadcrumb">
          <a href="index.jsp">首页</a>
          <a><cite>文章</cite></a>
        </span>
                <hr class="layui-bg-red">
                <div class="article-list" style="padding-top:10px;">
                    <figure><img lay-src="<%=request.getContextPath() %>/frontPage/static/images/01.jpg"></figure>
                    <ul>
                        <h3>
                            <a href="article_details.jsp">住在手机里的朋友</a>
                        </h3>

                        <p>现在跨界联姻，时尚、汽车以及运动品牌联合手机制造商联合发布手机产品在行业里已经不再新鲜，上周我们给大家报道过著名手表制造商瑞士泰格·豪雅（Tag Heuer）
                            联合法国的手机制造商Modelabs发布的一款奢华手机的部分谍照，而近日该手机终于被正式发布了<%=request.getContextPath() %>/frontPage.</p>

                        <p class="autor">
                            <span class="lm f_l"><a href="#">个人博客</a></span>
                            <span class="dtime f_l">2014-02-19</span>
                            <span class="viewnum f_r">浏览（<a href="#">459</a>）</span>
                            <span class="pingl f_r">评论（<a href="#">30</a>）</span></p>
                    </ul>
                </div>

                <div class="article-list">
                    <figure><img lay-src="<%=request.getContextPath() %>/frontPage/static/images/01.jpg"></figure>
                    <ul>
                        <h3>
                            <a href="article_details.jsp">住在手机里的朋友</a>
                        </h3>

                        <p>通信时代，无论是初次相见还是老友重逢，交换联系快餐式的友谊 <%=request.getContextPath() %>/frontPage.</p>

                        <p class="autor">
                            <span class="lm f_l"><a href="#">个人博客</a></span>
                            <span class="dtime f_l">2014-02-19</span>
                            <span class="viewnum f_r">浏览（<a href="#">459</a>）</span>
                            <span class="pingl f_r">评论（<a href="#">30</a>）</span></p>
                    </ul>
                </div>
                <div class="article-list">
                    <figure><img lay-src="<%=request.getContextPath() %>/frontPage/static/images/02.jpg"></figure>
                    <ul>
                        <h3>
                            <a href="article_details.jsp">住在手机里的朋友</a>
                        </h3>

                        <p>通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是
                            彼此交换名片，然后郑重或是出于礼貌用手机记的过客，
                            通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是彼此交换名片，然后
                            郑重或是出于礼貌用手机记的过客，这种快餐式的通信时代，无论是初次相见还是老友
                            重逢，通信时代，无论是初次相见还是老友重种快餐式的这种快餐式的友谊 <%=request.getContextPath() %>/frontPage.</p>

                        <p class="autor">
                            <span class="lm f_l"><a href="#">个人博客</a></span>
                            <span class="dtime f_l">2014-02-19</span>
                            <span class="viewnum f_r">浏览（<a href="#">459</a>）</span>
                            <span class="pingl f_r">评论（<a href="#">30</a>）</span></p>
                    </ul>
                </div>
                <div class="article-list">
                    <figure><img lay-src="<%=request.getContextPath() %>/frontPage/static/images/02.jpg"></figure>
                    <ul>
                        <h3>
                            <a href="article_details.jsp">住在手机里的朋友</a>
                        </h3>

                        <p>通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是
                            彼此交换名片，然后郑重或是出于礼貌用手机记的过客，
                            通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是彼此交换名片，然后
                            郑重或是出于礼貌用手机记的过客，这种快餐式的通信时代，无论是初次相见还是老友
                            重逢，通信时代，无论是初次相见还是老友重种快餐式的这种快餐式的友谊 <%=request.getContextPath() %>/frontPage.</p>

                        <p class="autor">
                            <span class="lm f_l"><a href="#">个人博客</a></span>
                            <span class="dtime f_l">2014-02-19</span>
                            <span class="viewnum f_r">浏览（<a href="#">459</a>）</span>
                            <span class="pingl f_r">评论（<a href="#">30</a>）</span></p>
                    </ul>
                </div>
                <div class="article-list">
                    <figure><img lay-src="<%=request.getContextPath() %>/frontPage/static/images/02.jpg"></figure>
                    <ul>
                        <h3>
                            <a href="article_details.jsp">住在手机里的朋友</a>
                        </h3>

                        <p>通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是
                            彼此交换名片，然后郑重或是出于礼貌用手机记的过客，
                            通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是彼此交换名片，然后
                            郑重或是出于礼貌用手机记的过客，这种快餐式的通信时代，无论是初次相见还是老友
                            重逢，通信时代，无论是初次相见还是老友重种快餐式的这种快餐式的友谊 <%=request.getContextPath() %>/frontPage.</p>

                        <p class="autor">
                            <span class="lm f_l"><a href="#">个人博客</a></span>
                            <span class="dtime f_l">2014-02-19</span>
                            <span class="viewnum f_r">浏览（<a href="#">459</a>）</span>
                            <span class="pingl f_r">评论（<a href="#">30</a>）</span></p>
                    </ul>
                </div>

                <div class="article-list">
                    <figure><img lay-src="<%=request.getContextPath() %>/frontPage/static/images/05.jpg"></figure>
                    <ul>
                        <h3>
                            <a href="article_details.jsp">住在手机里的朋友</a>
                        </h3>

                        <p>通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是
                            彼此交换名片，然后郑重或是出于礼貌用手机记的过客，
                            通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是彼此交换名片，然后
                            郑重或是出于礼貌用手机记的过客，这种快餐式的通信时代，无论是初次相见还是老友
                            重逢，通信时代，无论是初次相见还是老友重种快餐式的这种快餐式的友谊 <%=request.getContextPath() %>/frontPage.</p>

                        <p class="autor">
                            <span class="lm f_l"><a href="#">个人博客</a></span>
                            <span class="dtime f_l">2014-02-19</span>
                            <span class="viewnum f_r">浏览（<a href="#">459</a>）</span>
                            <span class="pingl f_r">评论（<a href="#">30</a>）</span></p>
                    </ul>
                </div>
            </div>
            <!--分页-->
            <div id="page"></div>
        </div>
        <div class="layui-col-md4">

            <div class="ad"><img src="<%=request.getContextPath() %>/frontPage/static/images/ad.jpg"></div>
            <div class="ms-top">
                <ul class="hd" id="tab">
                    <li class="cur"><a>点击排行</a></li>
                    <li><a>最新文章</a></li>
                    <li><a>站长推荐</a></li>
                    <li><a>最新评论</a></li>
                </ul>
            </div>
            <div class="ms-main" id="ms-main">
                <div style="display: block;" class="bd bd-news">
                    <ul>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码<%=request.getContextPath() %>/frontPage.</a></li>
                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                    </ul>
                </div>
                <div class="bd bd-news">
                    <ul>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码<%=request.getContextPath() %>/frontPage.</a></li>
                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                    </ul>
                </div>
                <div class="bd bd-news">
                    <ul>

                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码<%=request.getContextPath() %>/frontPage.</a></li>
                    </ul>
                </div>
                <div class="bd bd-news">
                    <ul>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码<%=request.getContextPath() %>/frontPage.</a></li>
                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                    </ul>
                </div>
            </div>


            <div class="ad"><img src="<%=request.getContextPath() %>/frontPage/static/images/03.jpg"></div>
        </div>
    </div>
</div>
<div class="footer">
    <hr class="layui-bg-black" style="margin-top: 350px">
    <p><a href=""></a> 2018 &copy; <a href="#"></a></p>
</div>
</body>
</html>
