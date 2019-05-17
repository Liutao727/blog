<%@page pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>个人博客——关于我</title>
		<meta name="keywords" content="刘套个人博客,技术博客，bkoq.com，java" />
		<meta name="description" content="刘套个人博客,技术博客，bkoq.com，java" />
		<link href="../include/css/base.css" rel="stylesheet"/>
		<link href="../include/css/about.css" rel="stylesheet"/>
		<link href="../include/css/media.css" rel="stylesheet"/>
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0"/>
		<!--[if lt IE 9]>
		<script src="../include/js/modernizr.js"></script>
		<![endif]-->
	</head>
<body>
<div class="ibody">
  <header>
    <h1>如影随形</h1>
    <h2>影子是一个会撒谎的精灵，它在虚空中流浪和等待被发现之间;在存在与不存在之间....</h2>
    <div class="logo"><a href="../index/index"></a></div>
  <%@ include file="nav.jsp" %> 
   </header>
  <article>
    <h3 class="about_h">您现在的位置是：<a href="../index/index">首页</a>><a href="../about/about">关于我</a></h3>
    <div class="about">
      <h2>Just about me</h2>
      <ul>
       <s:property value="me.content" escape="false"/>
       </ul>
      <h2>About my blog</h2>
      <ul class="blog_a">
        <p>域  名：www.kboq.com
        <p>服务器：阿里云
        <p>程  序：原创程序</p>
        <p>微信公众号：Ireader08</p>
      </ul>
    </div>
  </article>
  <aside>
   <%@ include file="info.jsp" %>
  </aside>
  <script src="../include/js/silder.js"></script>
  <div class="clear"></div>
  <!-- 清除浮动 --> 
</div>
</body>
</html>
