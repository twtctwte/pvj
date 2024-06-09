<?php

/*
$from = parse_url($_SERVER['HTTP_REFERER']);

if ($from['host']!='irr.ink' &amp;&amp; $from['host']!='https://cdn.jsdmirror.com/gh/twtctwte/pixiv/') {
     header('HTTP/1.1 404 Not Found');
     header("status: 404 Not Found"); //分析来路，若不使用CDN而且想要防止盗用可把这段的注释去掉
     exit;
}
*/

$img_array = glob('wallpapers/*.{gif,jpg,png,jpeg,webp,bmp}', GLOB_BRACE);
if(count($img_array) == 0) die('没有找到图片，请先上传到 '.dirname(__FILE__).'/wallpapers/ 文件夹');

if (isset($img_array)) 
{ 
Header("HTTP/1.1 303 See Other"); 
Header("Location: ".$img_array[array_rand($img_array)]); 
exit; 
} 
