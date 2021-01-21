<?php

include dirname(dirname(__FILE__)) . '/api/db/Db.class.php';
$db = new Db();



if (isset($_POST['search'])) {
    //require_once 'connect.php';

    $no = 1;
    $search = $_POST['search'] ? $_POST['search'] : '';

    $query = $db->query("SELECT *
        FROM varian 
            RIGHT JOIN brand ON varian.id_brand = brand.id_brand 
            RIGHT JOIN trademark ON brand.id_trademark = trademark.id_trademark WHERE trademark.trademark_name LIKE '%" . $search . "%'
            OR brand.brand_name LIKE '%" . $search . "%'
            OR varian.varian_name LIKE '%" . $search . "%'");
    $arr = array();
    $arr['result'] = $query;
    $result = isset($arr['result']) ? $arr['result'] : array();

    foreach ($result as $row) {
?>
<a href="spesifikasi.php?id_varian=<?= $row['id_varian']; ?>">
        <div class="col">
            <div class="p-3 border bg-light"><?= $row['varian_name']; ?></div>
        </div>
    </a>
        
<?php }
}   else {
    echo 'norec';
}
  ?>