<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Plant House Registration Page</title>
     <link rel="shortcut icon" href="images/plant%20logo.PNG" type="image/x-icon">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
  
   
    <div class="loginbox registration">
        <h1>Ragistration To Plant House</h1>
        <form action="registrationphp.php" method="post">
          
           <p>Name</p>
           <input type="text" name="name" placeholder="Enter Your Name" required>
            <p>Number</p>
           <input type="text" name="number" placeholder="Enter Phone Number" required>
           <p>Address</p>
           <input type="text" name="address" placeholder="Enter Address">
           <p>Email</p>
           <input type="text" name="email" placeholder="Enter Email" required>
            <p>Password</p>
           <input type="password" name="password" placeholder="Enter Password" required>
          
           
            <button type="submit" name="create">submit</button><br><br>
            <p>Already a user?<a href="login.php"><b>Login</b></a></p>
        </form>
    </div>
</body>
</html>
