<?php
include '../../koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_wisata = $_POST['nama_wisata'];
    $jenis_wisata = $_POST['jenis_wisata'];
    $alamat = $_POST['alamat'];
    $deskripsi = $_POST['deskripsi'];
    $id_daerah = $_POST['id_daerah'];

    $conn->query("INSERT INTO wisata (nama_wisata, jenis_wisata, alamat, deskripsi, id_daerah) 
                  VALUES ('$nama_wisata', '$jenis_wisata', '$alamat', '$deskripsi', $id_daerah)");
    header("Location: wisata.php");
}

$daerah = $conn->query("SELECT * FROM daerah");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../style.css">
    <title>Tambah Wisata</title>
</head>
<body>
     <!-- Navigation Bar -->
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
        <h1 >Tambah Wisata</h1>
    </header>
    <div class="table-container">
        <form action="" method="POST">
            <label for="nama_wisata">Nama Wisata:</label>
            <input type="text" id="nama_wisata" name="nama_wisata" required>
            
            <label for="jenis_wisata">Jenis Wisata:</label>
            <input type="text" id="jenis_wisata" name="jenis_wisata" required>
            
            <label for="alamat">Alamat:</label>
            <input type="text" id="alamat" name="alamat" required>
            
            <label for="deskripsi">Deskripsi:</label>
            <textarea id="deskripsi" name="deskripsi" rows="4" required></textarea>
            
            <label for="id_daerah">Daerah:</label>
            <select id="id_daerah" name="id_daerah" required>
                <option value="">Pilih Daerah</option>
                <?php while ($row = $daerah->fetch_assoc()): ?>
                    <option value="<?= $row['id_daerah'] ?>"><?= $row['nama_provinsi'] ?></option>
                <?php endwhile; ?>
            </select>
            
            <button type="submit">Simpan</button>
        </form>
    </div>
    <footer>
        <p>Kelompok 1</p>
    </footer>
</body>
</html>
