<?php
//session_start();
//header('location:login.php');
/*
$hostname='localhost';
$username='root';
$userpass='';
$dbname='planthouse';

$con=mysqli_connect($hostname,$username,$userpass) or die ('Database Connection fail');

mysqli_select_db($con,$dbname);

if($con){echo'successful';}
else{echo'unsuccessful';}

$name= $_POST['Name'];
$number=$_POST['Number'];
$address=$_POST['Address'];
$email=$_POST['Email'];
$password= $_POST['Password'];
$s=" select*from registration table where email='$email'";
$result=mysqli_query($con,	$s);
//$num= mysqli_num_rows($result);


$reg="insert into registration table(id,name,number,address,email,password)  values('2','$name','$number','$address','$email','$password')";
    mysqli_query($con,$reg);
    echo "Registration Successfully!";


echo $name;
echo $number;
echo $address;
echo $email;
echo $password;

if($num==1){

    echo "This email is already taken";
}else{

    $reg="insert into registration table(name,number,address,email,password)  values('$name','$number','$address','$email','$password')";
    mysqli_query($con,$reg);
    echo "Registration Successfully!";
}







$servername = "localhost";
$username = "root";
$password = "";
$dbname = "logs";
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
  //  $_SESSION["notsuccess"]=
  echo "not a connect .";
}
else {
  echo "Successfully";
}


$Fname=$_POST['Name'];
$Lnum=$_POST['Number'];
$addres=$_POST['Address'];
$emails=$_POST['Email'];
$passwords=$_POST['Password'];
$cpasswords=$_POST['password_1'];



if($passwords==$cpasswords){
$conn = mysqli_connect($servername, $username, $password, $dbname);

  $sql = "INSERT INTO logins (name,numbers,aaddress,email,passwor)
  VALUES ('$Fname', '$Lnum', '$addres','$emails','$passwords')";

  $quryrun=mysqli_query($conn,$sql);

  if($quryrun) {
echo "success";
header('location:index.php');

  }
  else {
    echo "unsuccess";
  }

}else {


echo "mot match password !!! please try again . ";

}







 session_start();
header('location:login.php');
$hostname='localhost';
$username='root';
$userpass='';
$dbname='userregistration';

$con=mysqli_connect($hostname,$username,$userpass) or die ('Database Connection fail');

mysqli_select_db($con,$dbname);


$name= $_POST['name'];
$pass= $_POST['password'];
$s=" select*from usertable where name='$name' && password='$pass'";
$result=mysqli_query($con,	$s);
$num=mysqli_num_rows($result);

if($num==1){
  
    echo "Username Already Taken";
}else{

    $reg="insert into usertable(name,password)values('$name','$pass')";
    mysqli_query($con,$reg);
    echo "Registration Successfully!";
}*/












$name=$_POST['name'];
$number=$_POST['number'];
$address=$_POST['address'];
$email=$_POST['email'];
$password=$_POST['password'];


//database connection

$conn=new mysqli('localhost','root','','test');
if($conn->connect_error){
    die('connecttion failed:'.$conn->connect_error);
}
else{
    $stmt=$conn->prepare("insert into registration(name,number,address,email,password)
    values(?,?,?,?,?)");
    $stmt->bind_param("sisss",$name,$number,$address,$email,$password);
    $stmt->execute();
    //echo"registration successfully...";

    header('location:login.php');
    $stmt->close();
    $conn->close();
}
?>

?>
