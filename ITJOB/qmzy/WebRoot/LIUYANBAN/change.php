<?
  $mysql_server_name = "localhost";
  $mysql_username    = "root";
  $mysql_password    = "263343";
  $mysql_database    = "gbook";
  $sql = "SELECT name, sex, email, info FROM gbook WHERE id = '$id' ";
  $conn = mysql_connect($mysql_server_name,$mysql_username,$mysql_password);
  mysql_select_db($mysql_database,$conn);
  $result = mysql_query($sql);
  $row = mysql_fetch_row($result);
?>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=GB2312" />
<title>阳光大学生网留言版</title>
</head>
<body>
<form name="form1" method="post" action="change_ok.php?id<?=$id?>">
  <p>你的名字：<input type="text" name="name" size="20" value="<?=$row[0]?>"/></p>
<?
// -----if语句判断男女 1为男 0为女-------
 if($row[1]==1)
echo ' <p>你的性别：<input type="radio" value="1" name="sex" checked="checked" />男     <input type="radio" value="0" name="sex" />女 </p>';
else
echo ' <p>你的性别：<input type="radio" value="1" name="sex" />男     <input type="radio" value="0" name="sex" checked="checked" />女 </p>';

?> 
<p>你的E-mail:<input type="text" name="email" size="20" value="<?=$row[2]?>"/></p>
<p>你的留言内容:</p>
<p><textarea rows="9" name="info" cols="35"><?=$row[3]?></textarea></p>
<p><input type="submit" value="提交"  /><input type="reset" value="重设" /></p>
</form>
</body>
</html>