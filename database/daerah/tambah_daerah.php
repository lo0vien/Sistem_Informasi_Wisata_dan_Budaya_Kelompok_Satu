<?php
include '../../koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_provinsi = $_POST['nama_provinsi'];
    $conn->query("INSERT INTO daerah (nama_provinsi) VALUES ('$nama_provinsi')");
    header("Location: daerah.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../style.css">
    <title>Tambah Daerah</title>
</head>
<body>
<nav>
        <ul>
            <li><a href="../../admin.html">BERANDA</a></li>
            <li><a href="../../wisata/wisata.php">WISATA</a></li>
            <li><a href="../../budaya/budaya.php">BUDAYA</a></li>
            <li class="dropdown">
                <a href="#">DATABASE</a>
                <ul class="dropdown-menu">
                    <li><a href="../daerah/daerah.php">Daerah</a></li>
                    <li><a href="../wisata/wisata.php">Wisata</a></li>
                    <li><a href="../budaya/budaya.php">Budaya</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <header class = "add-form-container">
        <h1>Tambah Daerah</h1>
    </header>
    <div class="table-container">
        <form action="" method="POST">
            <label for="nama_provinsi">Nama Provinsi:</label>
            <input type="text" id="nama_provinsi" name="nama_provinsi" required>
            <button type="submit">Simpan</button>
        </form>
    </div>
    <footer>
        <p>Kelompok 1</p>
    </footer>
</body>
</html>
