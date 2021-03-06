<?php
include 'inc.php';
include dirname(__FILE__).'/api/db/Db.class.php';
$db = new Db();
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

    <!--content-->
    <div class="container">
        <h3>Brand</h3>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <?php

            $id_trademark = isset($_GET['id_trademark']) ? (int)  $_GET['id_trademark'] : 0;
                        
            $idtrademark = '';
            if (!empty($id_trademark)) {
                $idtrademark = ' WHERE id_trademark = '.$id_trademark ;
            }
                      
            
            $brand_list = $db->query('SELECT * FROM brand'.$idtrademark);
            
            $arr = array();
            $arr['result'] = $brand_list;
            $result = isset($arr['result']) ? $arr['result'] : array();
            foreach ($result as $row) {
            ?>
                <div class="col">
                    <div class="card">
                        <img src="<?= $row['img_path']; ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['brand_name']; ?></h5>
                            
                            <p class="card-text"><?= substr($row['desc'],0,150); ?></p>
                            <a href="varians.php?id_brand=<?= $row['id_brand']; ?>" class="btn btn-primary">More</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
    <!--footer-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
    <script src="js/ajaxSearch.js">
    </script>
</body>

</html>