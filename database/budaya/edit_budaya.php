<?php
include '../../koneksi.php';

$id = $_GET['id'];
$budaya = $conn->query("SELECT * FROM budaya WHERE id_budaya=$id")->fetch_assoc();
$daerah = $conn->query("SELECT * FROM daerah");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_budaya = $_POST['nama_budaya'];
    $jenis_budaya = $_POST['jenis_budaya'];
    $deskripsi = $_POST['deskripsi'];
    $id_daerah = $_POST['id_daerah'];

    $conn->query("UPDATE budaya SET nama_budaya='$nama_budaya', jenis_budaya='$jenis_budaya', deskripsi='$deskripsi', id_daerah=$id_daerah 
                  WHERE id_budaya=$id");
    header("Location: budaya.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../style.css">
    <title>Edit Budaya</title>
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
        <h1>Edit Budaya</h1>
    </header>
    <div class="table-container">
        <form action="" method="POST">
            <label for="nama_budaya">Nama Budaya:</label>
            <input type="text" id="nama_budaya" name="nama_budaya" value="<?= $budaya['nama_budaya'] ?>" required>
            
            <label for="jenis_budaya">Jenis Budaya:</label>
            <input type="text" id="jenis_budaya" name="jenis_budaya" value="<?= $budaya['jenis_budaya'] ?>" required>
            
            <label for="deskripsi">Deskripsi:</label>
            <textarea id="deskripsi" name="deskripsi" rows="4" required><?= $budaya['deskripsi'] ?></textarea>
            
            <label for="id_daerah">Daerah:</label>
            <select id="id_daerah" name="id_daerah" required>
                <?php while ($row = $daerah->fetch_assoc()): ?>
                    <option value="<?= $row['id_daerah'] ?>" <?= $row['id_daerah'] == $budaya['id_daerah'] ? 'selected' : '' ?>>
                        <?= $row['nama_provinsi'] ?>
                    </option>
                <?php endwhile; ?>
            </select>
            
            <button type="submit">Update</button>
        </form>
    </div>
    <footer>
        <p>Kelompok 1</p>
    </footer>
</body>
</html>
