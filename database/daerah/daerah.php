<?php
include '../../koneksi.php';

// Hapus data daerah
if (isset($_GET['hapus'])) {
    $id = $_GET['hapus'];
    $conn->query("DELETE FROM daerah WHERE id_daerah=$id");
    header("Location: daerah.php");
}

// Ambil semua data daerah
$daerah = $conn->query("SELECT * FROM daerah");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../style.css">
    <title>Daerah</title>
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
    <header class="add-form-container">
        <h1>Data Daerah</h1>
    </header>

    <div class="table-container">
        <a href="tambah_daerah.php">Tambah Daerah Baru</a>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama Provinsi</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $daerah->fetch_assoc()): ?>
                    <tr>
                        <td><?= $row['id_daerah'] ?></td>
                        <td><?= $row['nama_provinsi'] ?></td>
                        <td>
                            <a href="edit_daerah.php?id=<?= $row['id_daerah'] ?>">Edit</a> |
                            <a href="?hapus=<?= $row['id_daerah'] ?>" onclick="return confirm('Yakin ingin menghapus?')">Hapus</a>
                        </td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
    <footer>
        <p>Kelompok 1</p>
    </footer>
</body>
</html>
