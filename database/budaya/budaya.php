<?php
include '../../koneksi.php';

// Hapus data budaya
if (isset($_GET['hapus'])) {
    $id = $_GET['hapus'];
    $conn->query("DELETE FROM budaya WHERE id_budaya=$id");
    header("Location: budaya.php");
}

// Ambil semua data budaya
$budaya = $conn->query("SELECT b.id_budaya, b.nama_budaya, b.jenis_budaya, b.deskripsi, d.nama_provinsi 
                        FROM budaya b
                        JOIN daerah d ON b.id_daerah = d.id_daerah");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../style.css">
    <title>Budaya</title>
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
        <h1>Data Budaya</h1>
    </header>

    <div class="table-container">
        <a href="tambah_budaya.php">Tambah Budaya Baru</a>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama Budaya</th>
                    <th>Jenis</th>
                    <th>Deskripsi</th>
                    <th>Daerah</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $budaya->fetch_assoc()): ?>
                    <tr>
                        <td><?= $row['id_budaya'] ?></td>
                        <td><?= $row['nama_budaya'] ?></td>
                        <td><?= $row['jenis_budaya'] ?></td>
                        <td><?= $row['deskripsi'] ?></td>
                        <td><?= $row['nama_provinsi'] ?></td>
                        <td>
                            <a href="edit_budaya.php?id=<?= $row['id_budaya'] ?>">Edit</a> |
                            <a href="?hapus=<?= $row['id_budaya'] ?>" onclick="return confirm('Yakin ingin menghapus?')">Hapus</a>
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
