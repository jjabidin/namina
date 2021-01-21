<?php
include 'inc.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CAR</title>
    <link href="dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="dist/js/bootstrap.bundle.min.js"></script>
    
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>-->
</head>
<body>
    <!--header-->
    <?php include('navbar.php'); ?>
    <br>
    <!--content-->
    <div class="container">
    <h3>Trademarks</h3>    
    <?php include('trademark.php'); ?>
    </div>
    
    <!--footer-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
    <script src="js/ajaxSearch.js">
    </script>
</body>
</html>