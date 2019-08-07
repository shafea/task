<html>
<head>
<title>
task
</title>
 <?php include 'config.php'; ?>
  <?php  
         
    if (isset($_POST['submit'])) {
        $id_task=$_POST['id_task'];
        $name=$_POST['name'];
        $star_date=$_POST['star_date'];
        $end_date=$_POST['end_date'];
        $sql="INSERT INTO task(id_task,name,star_date,end_date) VALUES ('$id_task','$name','$star_date','$end_date')";
        $conn->query($sql);
          
          }
  
?>


</head>
<body>
<center>
	<form method="post" action="">
	المهمه	<input type="number" name="id_task" /><br><br>
		المسؤوليه<input type="text" name="name" /><br><br>
	  تاريخ البدء  <input type="date" name="star_date" /><br><br>
		تاريخ الانتهاء<input type="date" name="end_date" /><br><br>
	<input type="submit" name="submit" value="حفظ"/><br><br>
       		 <a href="login.php">submit</a>
</body>
</html>
