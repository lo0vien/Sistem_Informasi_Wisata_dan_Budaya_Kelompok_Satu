<?php
include '../../koneksi.php';

// Hapus data wisata
if (isset($_GET['hapus'])) {
    $id = $_GET['hapus'];
    $conn->query("DELETE FROM wisata WHERE id_wisata=$id");
    header("Location: wisata.php");
}

// Ambil semua data wisata
$wisata = $conn->query("SELECT w.id_wisata, w.nama_wisata, w.jenis_wisata, w.alamat, w.deskripsi, d.nama_provinsi 
                        FROM wisata w
                        JOIN daerah d ON w.id_daerah = d.id_daerah");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../style.css">
    <title>Wisata</title>
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
        <h1>Data Wisata</h1>
    </header>

    <div class="table-container">
        <a href="tambah_wisata.php">Tambah Wisata Baru</a>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama Wisata</th>
                    <th>Jenis</th>
                    <th>Alamat</th>
                    <th>Deskripsi</th>
                    <th>Daerah</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $wisata->fetch_assoc()): ?>
                    <tr>
                        <td><?= $row['id_wisata'] ?></td>
                        <td><?= $row['nama_wisata'] ?></td>
                        <td><?= $row['jenis_wisata'] ?></td>
                        <td><?= $row['alamat'] ?></td>
                        <td><?= $row['deskripsi'] ?></td>
                        <td><?= $row['nama_provinsi'] ?></td>
                        <td>
                            <a href="edit_wisata.php?id=<?= $row['id_wisata'] ?>">Edit</a> |
                            <a href="?hapus=<?= $row['id_wisata'] ?>" onclick="return confirm('Yakin ingin menghapus?')">Hapus</a>
                        </td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
</body>
    <footer>
        <p>Kelompok 1</p>
    </footer>
</html>
