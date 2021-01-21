<?php
include 'inc.php';
include dirname(__FILE__) . '/api/db/Db.class.php';
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
        <h3></h3>
        <div class="row row-cols-2 row-cols-md-2 g-4">
            <?php

            $id_varian = isset($_GET['id_varian']) ? (int)  $_GET['id_varian'] : 0;

            $idvarian = '';
            if (!empty($id_varian)) {
                $idvarian = ' WHERE varian.id_varian = ' . $id_varian;
            }


            $varian_list = $db->query('SELECT * FROM varian'.$idvarian);

            $arr = array();
            $arr['result'] = $varian_list;
            $result = isset($arr['result']) ? $arr['result'] : array();
            foreach ($result as $row) {
            ?>
                <div class="col">
                    <img src="<?= $row['img_path']; ?>" class="img-fluid" alt="...">
                </div>
                <div class="col">
                    <div class="card text-left">
                        <div class="card-header">
                            Spesifikasi <?= $row['varian_name']; ?>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['varian_name']; ?></h5>
                            <p class="card-text"><?= $row['varian_desc']; ?></p>
                            
                        </div>
                        <div class="card-footer text-muted">
                            2 days ago
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