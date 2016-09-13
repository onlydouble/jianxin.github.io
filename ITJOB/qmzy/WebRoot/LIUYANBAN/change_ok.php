<?
  $mysql_server_name = "localhost";
  $mysql_username    = "root";
  $mysql_password    = "263343";
  $mysql_database    = "gbook";
  $sql = "UPDATE `gbook` SET `name` = '$name',`sex` = '$sex',`email` = '$email',`info` = '$info' WHERE `id` ='$id' ";
  $conn = mysql_connect($mysql_server_name,$mysql_username,$mysql_password);
  mysql_select_db($mysql_database,$conn);
  $result = mysql_query($sql);
  mysql_close($conn);
?>
<p><a href="show.php">[返回]</a></p> 