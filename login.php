<!DOCTYPE html>
<html lang="en">

<head>
    
          
<?php include 'config.php'; ?>
<?php

if(isset($_POST['submit'])){
    $email    = $_POST['email'];
    $password = $_POST['password'];
    
  
 if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $email  = "Invalid email format"; 
   echo 'Invalid email format';
}
    else if(empty($email) || empty($password)){
        echo 'Sorry, please enter all fields';
    }
    else{
        $selectAll = "SELECT * FROM `users` WHERE email='$email' AND password='$password'";
        $result    = $conn->query($selectAll);
        if($result->num_rows > 0){
                while($row = $result->fetch_assoc()) {
                   $_SESSION['Uid'] = $row['id'];
                   $_SESSION['Uname'] = $row['name'];
                   $_SESSION['Uemail'] = $row['email'];
                   $_SESSION['Upass'] = $row['password'];
                   $_SESSION['Ulevel'] = $row['user_type'];
                   if( $_SESSION['Ulevel']==1)
                          header('Location: Home2.php');
                   else
                      header('Location: Home.php');
                }
        }
            else  echo 'incorrect email or passwoard please inter again ';
    }

}
else  echo 'Welcome in login';
?>



        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <!--<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
  <link rel="stylesheet" href="https://cdn.rtlcss.com/bootstrap/v4.2.1/css/bootstrap.min.css" integrity="sha384-vus3nQHTD+5mpDiZ4rkEPlnkcyTP+49BhJ4wJeJunw06ZAp+wzzeBPUXr42fi8If" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Tajawal" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" crossorigin="anonymous">
  <style media="screen">
    body{
      font-family: 'Tajawal', sans-serif;
    }
  

function validateForm() {
    var x = document.forms["myForm"]["fname"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }
}
    }
  </style>


  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">

</head>

<body>
       
    


  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="cart.html">السلة</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">الخدمات</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">اتصل بنا</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="index.html">الرئيسية
              <span class="sr-only">(current)</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
    <br><br><br><br><br><br><br>
    <main class="login-form">
  <div class="cotainer">
      <div class="row justify-content-center">
          <div class="col-md-8">
              <div class="card">
                  <div class="card-header">تسجيل الدخول</div>
                  <div class="card-body">
                     <a href="register.php">register</a>
                    
                      <form action="" method="POST" onsubmit="return validateForm()">
                          <div class="form-group row">
                              <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                              <div class="col-md-6">
                                  <input type="text" id="email" class="form-control" name="email" required autofocus>
                              </div>
                          </div>

                          <div class="form-group row">
                              <label for="password" class="col-md-4 col-form-label text-md-wssfrewazright">Password</label>
                              <div class="col-md-6">
                                  <input type="password" id="password" class="form-control" name="password" required>
                              </div>
                          </div>

                          <div class="form-group row">
                              <div class="col-md-6 offset-md-4">
                                  <div class="checkbox">
                                      <label>
                                          تذكرني <input type="checkbox" name="remember"> 
                                      </label>
                                  </div>
                              </div>
                          </div>

                          <div class="col-md-6 offset-md-4">
                            <a href="#" class="btn btn-link">
                                Forgot Your Password?
                            </a>
                              <button type="submit" name="submit" class="btn btn-primary">
                                  تسجيل الدخول
                              </button>

                          </div>
                  </div>
                  </form>
              </div>
          </div>
      </div>
  </div>
  </div>

</main>
<br><br><br><br><br><br><br>
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Between The Lines Bookstore. &copy; جميع الحقوق محفوظة</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
