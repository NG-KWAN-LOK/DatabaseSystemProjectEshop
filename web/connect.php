<?php

 $dbhost = "sh4ob67ph9l80v61.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
 $dbuser = "h3yp8cch3p9mp3q8";
 $dbpass = "q3ry8fhbb75w71y9";
 $db = "qkurcgqzk3zfs0bv";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed:");
 $conn->query("SET NAMES 'UTF8'");

 //return $conn;


 //$conn -> close();


?>
