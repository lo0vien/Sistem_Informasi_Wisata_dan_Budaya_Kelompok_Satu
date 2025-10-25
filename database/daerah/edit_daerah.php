<?php
include '../../koneksi.php';
$id = $_GET['id'];
$daerah = $conn->query("SELECT * FROM daerah WHERE id_daerah=$id")->fetch_assoc();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_provinsi = $_POST['nama_provinsi'];
    $conn->query("UPDATE daerah SET nama_provinsi='$nama_provinsi' WHERE id_daerah=$id");
    header("Location: daerah.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../style.css">
    <title>Edit Daerah</title>
</head>
<body>
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
    <header class="add-form-container">
        <h1>Edit Daerah</h1>
    </header>
    <div class="table-container">
        <form action="" method="POST">
            <label for="nama_provinsi">Nama Provinsi:</label>
            <input type="text" id="nama_provinsi" name="nama_provinsi" value="<?= $daerah['nama_provinsi'] ?>" required>
            <button type="submit">Update</button>
        </form>
    </div>
    <footer>
        <p>Kelompok 1</p>
    </footer>
</body>
</html>
