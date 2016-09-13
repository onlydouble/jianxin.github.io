<?
  $mysql_server_name = "localhost";
  $mysql_username    = "root";
  $mysql_password    = "263343";
  $mysql_database    = "gbook";
  $sql = "SELECT * FROM gbook ORDER BY 'id' DESC"; //排序 后留言的在前面显示
  $conn = mysql_connect($mysql_server_name,$mysql_username,$mysql_password);
  mysql_select_db($mysql_database,$conn);
  $result = mysql_query($sql);
  while($row = mysql_fetch_row($result))
  {  // ----if语句判断男女------
          if($row[2]==1)
     {   $gender = '男';}
       else
     {   $gender = '女'; }
?>

<table width="752" border="1">
  <tr>
    <td height="32"><p><?=$row[6]?> <?=$row[5]?> </p>
    <p><?=$row[1]?>(<?=$gender?>)  <?=$row[3]?></p></td>
  </tr>
  <tr>
    <td height="45"><?=nl2br($row[4])?><p><a href="change.php?id=<?=$row[0]?>">[修改]</a> <a href="del.php?id=<?=$row[0]?>">[删除]</a></p></td>
  </tr>
</table>
<hr />
<?
  }
  mysql_free_result($result);
?>