<?php

session_start();
header(location:login.html);
$con = mysqli_connect('localhost','user','saad');
if($con)
{
    echo "Connection Successfully";

}
else 
{
    echo "No Connection";
}
 mysqli_select_db($con,"ntnarcotics clone");
$name = $_POST[email];
$pass = $_POST[password];

$quer= "Select * from user-data1 where username = '$name' && password = '$pass'";
$result = mysqli_query($con,$quer);
$num = mysqli_num_rows($result);
if ($num==1)
{
    echo"Duplicate Data";
}
else{
    
    $querr="insert into user-data1 (username , password) values ('$name' ,'$pass')";
    $mysqli_query($con,$querr);
}



?>