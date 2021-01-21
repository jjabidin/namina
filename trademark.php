<div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
    <?php
    include dirname(__FILE__).'/api/db/Db.class.php';
    $db = new Db();
    
    $trademarkName = isset($_GET['trademark_name']) ? $_GET['trademark_name'] : '';
    
    $trademarkName = '';
    if (!empty($trademarkName)) {
        $trademarkName = ' where tademark_name LIKE \'%'.$trademarkName.'%\' ';
    }
    
    $trademark_list = $db->query('select * from trademark '.$trademarkName);
    
    $arr = array();
    $arr['result'] = $trademark_list;
    
    $result = isset($arr['result']) ? $arr['result'] : array();

    foreach ($result as $row) {
    ?>
    <a href="brand.php?id_trademark=<?= $row['id_trademark']; ?>">
        <div class="col">
            <div class="p-3 border bg-light"><?= $row['trademark_name']; ?></div>
        </div>
    </a>
    <?php } ?>
</div>