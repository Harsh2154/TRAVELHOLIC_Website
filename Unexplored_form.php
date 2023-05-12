<?php

$connection = mysqli_connect('localhost','root','','book_db');

if(isset($_POST['send']))
{
      $name = $_POST['name'];
      $email = $_POST['email'];
      $address = $_POST['address'];
      $location = $_POST['location'];
      $guests = $_POST['guests'];
      $image = $_FILES["image"]['name'];


      $query = " INSERT INTO Unexplored_form(name, email, address, location, guests, image) values('$name','$email','$address','$location','$guests','$image')";
      $query_run = mysqli_query($connection, $query);
   
      if($query_run)
      {
          move_uploaded_file($_FILES["image"]["tmp_name"],"file1/" .$_FILES["image"]["name"]);
          header('Location: Unexplored.php');   
  
      }
      else
      {
          header('Location: Unexplored.php');   
          
      }   
}


?>