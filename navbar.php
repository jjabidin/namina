<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">CAR</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link" href="http://localhost/car">Trademark</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost/car/brand">Brand</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost/car/varians">Varian</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Search" aria-label="Search" id="search">
        
      </form>
    </div>
  </div>
</nav>
<br>
<div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3" id="tampil">
    <?php
    
    
    $result = isset($array['result']) ? $array['result'] : array();

    foreach ($result as $row) {
    ?>
    <a href="spesifikasi.php?id_varian=<?= $row['id_varian']; ?>">
        <div class="col">
            <div class="p-3 border bg-light"><?= $row['varian_name']; ?></div>
        </div>
    </a>
    <?php } ?>
</div>
