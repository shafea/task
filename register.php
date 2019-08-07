<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>

<b>
  <?php include 'config.php'; ?>
  <?php  
         
    if (isset($_POST['submit'])) {
        $username=$_POST['username'];
        $password=$_POST['password'];
        $busname=$_POST['busname'];
        $location=$_POST['location'];
        $email=$_POST['email'];
        $phone=$_POST['phone'];
        $user_type=$_POST['user_type'];      
        $sql="INSERT INTO users(id,username,password,bus_name,location,email,phone,user_type) VALUES (NULL,'$username','$password','$busname','$location','$email','$phone','$user_type')";
        $conn->query($sql);
          
          }
  
?>
<body>
<center>
	<form method="post" action="">
	username	<input type="text" name="username" /><br><br>
		password<input type="password" name="password" /><br><br>
	  busname  <input type="text" name="busname" /><br><br>
		location<input type="text" name="location" /><br><br>
		email<input type="text" name="email" /><br><br>
	phone	<input type="text" name="phone" /><br><br>
	user_type	<input type="text" name="user_type" /><br><br>
       <input type="submit" name="submit" value="register" /><br><br>
       		 <a href="login.php">login</a>
</body>
</html>
<head></head>