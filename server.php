<?php

/*session_start();

//initializing variable
$name  ="";
       $number    ="";
       $address   ="";
       $email     ="";


$errors= array();
//connect to db

$db=mysqli_connect('localhost','root','','useraccounts')or die('could not connect to database');

//register user

$name=mysqli_real_escape_string($db,$_POST['Name']);
$number=mysqli_real_escape_string($db,$_POST['Number']);
$address=mysqli_real_escape_string($db,$_POST['Address']);
$email=mysqli_real_escape_string($db,$_POST['Email']);
$password=mysqli_real_escape_string($db,$_POST['Password']);
$password_1=mysqli_real_escape_string($db,$_POST['Password_1']);

//form validation

if(empty($name)) array_push($errors,'username is required');
if(empty($number)) array_push($errors,'Email is required');
if(empty($address)) array_push($errors,'Email is required');
if(empty($email)) array_push($errors,'Email is required');
if(empty($password)) array_push($errors,"Passwordis required is required");
if($password != $password_1) array_push($errors,"Password do not match");

//check for existing user for same username
$user_check_query="SELECT * from users where name='$name' or email='$email' Limit 1";

$results=mysqli_query($db, $user_check_quesry);
$user=mysqli_fetch_assoc($results);

if($user){
if($user['name']===$name){array_push($errors,"This name already exists");}
    if($user['email']===$email){array_push($errors,"This email already exists");}
}

//register the userif no error

if(count($errors)==0){
    $password=md5($password);
    $query="INSERT INTO users(name,number,address,email,password) Values('$name','$number','$address','$email','$password')";
    
    mysqli_query($db,$query);
    $_SESSION['name']=$name;
    $_SESSION['success']="You are now logged in";
    
    header('location: index.php');
    
    //login user
    
    if(isset($_POST['login_user'])){
        $name=mysqli_real_escape_string($db,$_POST['Name']);
        
        $password=mysqli_real_escape_string($db,$_POST['Password']);
        
        if(empty($name)){
            array_push($errors,"username is required");
        }
        
        if(empty($password)){
            array_push($errors,"password is required");
        }
        if(count($errors)==0){
            $password=md5($password);
            $query="SELECT * FROM users WHERE name='$name' and password='$password'";
            if(mysqli_num_results($results)){
                $_SESSION['name']=$name;
                $_SESSION['success']="Logged in successfully";
                header('location; index.php');
            }
            else{
                array_push($errors, "wrong name/password combition.please try again.");
            }
            }
            }
        }

*/














 session_start();

$hostname='localhost';
$username='root';
$userpass='';
$dbname='test';

$con=mysqli_connect($hostname,$username,$userpass) or die ('Database Connection fail');

mysqli_select_db($con,$dbname);


$name= $_POST['name'];
$password= $_POST['password'];
$s=" select*from registration where name='$name' && password='$password'";
$result=mysqli_query($con,	$s);
$num=mysqli_num_rows($result);

if($num==1){
  $_SESSION['name']=$name;
  header('location:home.php');
}else{

    //header('location:login.php');
    echo "Wrong name or password!!Please enter valid name and password!";
}


?>















