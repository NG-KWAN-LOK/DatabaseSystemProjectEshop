<!DOCTYPE html>
<?php
include("db.php");
$Id=$_GET['Id'];
if(isset($_POST['update']))
{
  $Name = $_POST['Name'];
  $Email = $_POST['Email'];
  $tel = $_POST['tel'];
  $Birthday = $_POST['Birthday'];
  $IDNumber = $_POST['IDNumber'];
  $Password = $_POST['Password'];
  UpdateAccount($Id,$Name,$Email,$tel,$Birthday,$IDNumber,$Password);
}
?>
<html lang="en">
<link rel="stylesheet" href="stock.css">

<body>
  <div class="head_block"></div>

  <div class="head_text">
    <p>Insert Member</p>
  </div>
<?php $account=GetAccountById($Id); ?>
  <div class="fix-product">
    <form action= <?php echo "ManagerWindow.php?Id=".$Id; ?> method="POST">
          Name：<input type="text" value=<?= $account[0]['Name']?> Name="Name"><br>
          Password：<input type="text" name="Password" value=<?= $account[0]['Password']?>><br>
          Email：<input type="text" name="Email" value=<?= $account[0]['Email']?>><br>
          Phone：<input type="text" name="tel" value=<?= $account[0]['Phone']?>><br>
          Sex：<input type="text" name="YourSex" value=<?= $account[0]['Sex']?>><br>
          Birthday：<input type="text" name="Birthday" value=<?= $account[0]['Birthday']?>><br><br>
          Address：<input type="text" name="IDNumber" value=<?= $account[0]['Address']?>><br>
      <button type="submit" name="update">Confirm</button>
    </form>
    <input onclick="window.close();" value="close" type="button">
  </div>

</body>
</html>
