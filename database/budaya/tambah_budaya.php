<?php
include '../../koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_budaya = $_POST['nama_budaya'];
    $jenis_budaya = $_POST['jenis_budaya'];
    $deskripsi = $_POST['deskripsi'];
    $id_daerah = $_POST['id_daerah'];

    $conn->query("INSERT INTO budaya (nama_budaya, jenis_budaya, deskripsi, id_daerah) 
                  VALUES ('$nama_budaya', '$jenis_budaya', '$deskripsi', $id_daerah)");
    header("Location: budaya.php");
}

$daerah = $conn->query("SELECT * FROM daerah");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../style.css">
    <title>Tambah Budaya</title>
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

    <header class="add-form-container">
    <h1>Tambah Budaya</h1>
</header>
<div class="table-container">
    <form action="" method="POST">
        <!-- Input Nama Budaya -->
        <label for="nama_budaya">Nama Budaya:</label>
        <input type="text" id="nama_budaya" name="nama_budaya" placeholder="Masukkan nama budaya" required>
        
        <!-- Input Jenis Budaya -->
        <label for="jenis_budaya">Jenis Budaya:</label>
        <input type="text" id="jenis_budaya" name="jenis_budaya" placeholder="Masukkan jenis budaya" required>
        
        <!-- Input Deskripsi -->
        <label for="deskripsi">Deskripsi:</label>
        <textarea id="deskripsi" name="deskripsi" rows="4" placeholder="Masukkan deskripsi budaya" required></textarea>
        
        <!-- Select Daerah -->
        <label for="id_daerah">Daerah:</label>
        <select id="id_daerah" name="id_daerah" required>
            <option value="">Pilih Daerah</option>
            <?php while ($row = $daerah->fetch_assoc()): ?>
                <option value="<?= $row['id_daerah'] ?>"><?= $row['nama_provinsi'] ?></option>
            <?php endwhile; ?>
        </select>
        
        <!-- Tombol Simpan -->
        <button type="submit">Simpan</button>
    </form>
</div>
    <footer>
        <p>Kelompok 1</p>
    </footer>
</body>
</html>
