<!DOCTYPE html>
<?php include_once("db.php"); ?>
<html lang="en">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<body>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

  <?php include("Menu.php"); ?>
  <div class="container" >
<div class="row">
  <h3>Customer</h3>
</div>
    <div class="row">

      <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col"  style="5rem">Name</th>
            <th scope="col"  style="5rem">Password</th>
            <th scope="col"  style="5rem">Email</th>
            <th scope="col"  style="5rem">Phone</th>
            <th scope="col"  style="5rem">Sex</th>
            <th scope="col"  style="5rem">Birthday</th>
            <th scope="col"  style="5rem">Address</th>
            <th scope="col"  style="5rem">Edit</th>
          </tr>
        </thead>
        <tbody>
          <?php
            $customer=GetCustomerAccount();
            for ($i=0; $i <count($customer) ; $i++) {

              echo "<tr>";

              echo "<th class="."table-warning scope="."row".">".$customer[$i]['Name']."</th>";
              echo "<td class="."table-warning>".$customer[$i]['Password']."</td>";
              echo "<td class="."table-warning>".$customer[$i]['Email']."</td>";
              echo "<td class="."table-warning>".$customer[$i]['Phone']."</td>";
              echo "<td class="."table-warning>".$customer[$i]['Sex']."</td>";
              echo "<td class="."table-warning>".$customer[$i]['Birthday']."</td>";
              echo "<td class="."table-warning>".$customer[$i]['Address']."</td>";
              $id=$customer[$i]['Id'];
              echo "<td class="."table-warning><input class="."fix-button"." type ="."button"." onclick="."window.open('ManagerWindow.php?Id=$id',config='height=300,width=300')"." value= edit></input></td>";
              echo "</tr>";
              //echo "</div>";
            }

          ?>
        </tbody>
      </table>
      </div>
      <div class="row">
        <h3>Manager</h3>
      </div>
      <div class="row">

        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col"  style="5rem">Name</th>
              <th scope="col"  style="5rem">Password</th>
              <th scope="col"  style="5rem">Email</th>
              <th scope="col"  style="5rem">Phone</th>
              <th scope="col"  style="5rem">Sex</th>
              <th scope="col"  style="5rem">Birthday</th>
              <th scope="col"  style="5rem">Address</th>
              <th scope="col"  style="5rem">Edit</th>
            </tr>
          </thead>
          <tbody>
            <?php
              $customer=GetManagerAccount();
              for ($i=0; $i <count($customer) ; $i++) {

                echo "<tr>";

                echo "<th class="."table-warning scope="."row".">".$customer[$i]['Name']."</th>";
                echo "<td class="."table-warning>".$customer[$i]['Password']."</td>";
                echo "<td class="."table-warning>".$customer[$i]['Email']."</td>";
                echo "<td class="."table-warning>".$customer[$i]['Phone']."</td>";
                echo "<td class="."table-warning>".$customer[$i]['Sex']."</td>";
                echo "<td class="."table-warning>".$customer[$i]['Birthday']."</td>";
                echo "<td class="."table-warning>".$customer[$i]['Address']."</td>";
                $id=$customer[$i]['Id'];
                echo "<td class="."table-warning><input class="."fix-button"." type ="."button"." onclick="."window.open('ManagerWindow.php?Id=$id',config='height=300,width=300')"." value= edit></input></td>";
                echo "</tr>";
                //echo "</div>";
              }

            ?>
          </tbody>
        </table>
        </div>
    </div>
  </div>
</body>
