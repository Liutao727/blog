<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="refresh" content="555; URL=/index/index">
<title>404错误-您访问出错了</title>
<style>@-moz-keyframes nodeInserted{from{opacity:0.99;}to{opacity:1;}}@-webkit-keyframes nodeInserted{from{opacity:0.99;}to{opacity:1;}}@-o-keyframes nodeInserted{from{opacity:0.99;}to{opacity:1;}}@keyframes nodeInserted{from{opacity:0.99;}to{opacity:1;}}embed,object{animation-duration:.001s;-ms-animation-duration:.001s;-moz-animation-duration:.001s;-webkit-animation-duration:.001s;-o-animation-duration:.001s;animation-name:nodeInserted;-ms-animation-name:nodeInserted;-moz-animation-name:nodeInserted;-webkit-animation-name:nodeInserted;-o-animation-name:nodeInserted;}</style>
</head>
<table width="630" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
  </tr>
  <tr>
    <td height="60" bgcolor="#FFFFFF"><table border="0" align="center" cellpadding="0" cellspacing="0">
        <tbody><tr>
          <td width="230"><a href="#"><img src="/include/images/404.jpg" alt="404错误，没有找到页面" style="border:0;"></a></td>
          <td width="400" align="center" style="color:#333333; font-size:16px; font-weight:bold;"><p>哎唷！页面木有找到哦，<strong style="font-size:18px;color:red;">5</strong> 秒钟之后将带您进入首页！</p>
            <p>你可以点击进入 <a href="/index/index">博客首页</a>  </p></td>
        </tr>
      </tbody></table></td>
  </tr>
</tbody></table>
</body>
</html>