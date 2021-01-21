<?php
include 'inc.php';
$api_varian_list = $api_url . '/list.php';
$json_list = @file_get_contents($api_varian_list);
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Details</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css">
</head>

<body>
  <div class="container">
    <div class="row mt-5">
      <div class="col-5 mx-auto">
        <div class="card shadow text-center">
          <?php
          $array = json_decode($json_list, true);
          $result = isset($array['result']) ? $array['result'] : array();

          $no = 0;

          foreach ($result as $arr) {
            $no++;
          ?>

            <div class="card-header">
              <h1><?= $arr['name']; ?></h1>
            </div>
            <div class="card-body">
              <h4><b>desc :</b> <?= $arr['desc'];?></h4>
            </div>
            <?php } ?>
        </div>
      </div>
    </div>
  </div>
</body>

</html>