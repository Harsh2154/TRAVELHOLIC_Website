<?php

$connection = mysqli_connect('localhost','root','','book_db');

if(isset($_POST['send']))
{
      $name = $_POST['name'];
      $email = $_POST['email'];
      $phone = $_POST['phone'];
      $address = $_POST['address'];
      $location = $_POST['location'];
      $guests = $_POST['guests'];
      $arrivals = $_POST['arrivals'];
      $leaving = $_POST['leaving'];

      $query = " INSERT INTO book_form(name, email, phone, address, location, guests, arrivals, leaving) values('$name','$email','$phone','$address','$location','$guests','$arrivals','$leaving')";
      $query_run = mysqli_query($connection, $query);
   
   if($query_run)
   {
      header('location:book.php'); 

   }
   else
   {
      echo 'something went wrong please try again!';
      header('location:book.php'); 
   }

}

?>