<?php
include '../koneksi.php';

// Mendapatkan data dari input pencarian (jika ada)
$search = isset($_GET['search']) ? $_GET['search'] : '';

// Jika ada pencarian, tampilkan data berdasarkan input
if ($search) {
    $stmt = $conn->prepare("SELECT * FROM wisata INNER JOIN daerah ON wisata.id_daerah = daerah.id_daerah WHERE daerah.nama_provinsi LIKE ?");
    $stmt->bind_param("s", $searchTerm);
    $searchTerm = '%' . $search . '%';
    $stmt->execute();
    $result = $stmt->get_result();
} else {
    // Jika tidak ada pencarian, tampilkan semua data wisata
    $result = $conn->query("SELECT * FROM wisata INNER JOIN daerah ON wisata.id_daerah = daerah.id_daerah");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css"> <!-- Link ke CSS -->
    <title>Wisata</title>
</head>
<body>
<nav>
        <ul>
            <li><a href="../admin.html">BERANDA</a></li>
            <li><a href="../wisata/Wisata.php">WISATA</a></li>
            <li><a href="../budaya/Budaya.php">BUDAYA</a></li>
            <li class="dropdown">
                <a href="#">DATABASE</a>
                <ul class="dropdown-menu">
                    <li><a href="../database/daerah/daerah.php">Daerah</a></li>
                    <li><a href="../database/wisata/wisata.php">Wisata</a></li>
                    <li><a href="../database/budaya/budaya.php">Budaya</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <div class="table-container">
        <form method="GET" action="wisata.php" class="search-form">
            <input type="text" name="search" id="search" class="input-search" placeholder="Cari daerah..." autocomplete="off">
            <button type="submit" class="search-btn">Cari</button>
        </form>
    </div>

<div class="content-container">
    <h1 class="content-title">Daftar Wisata</h1>

    <?php while ($row = $result->fetch_assoc()): ?>
        <div class="content-card">
            <h2><?= htmlspecialchars($row['nama_wisata']); ?></h2>
            <p><strong>Jenis Wisata:</strong> <?= htmlspecialchars($row['jenis_wisata']); ?></p>
            <p><strong>Alamat:</strong> <?= htmlspecialchars($row['alamat']); ?></p>
            <p><strong>Provinsi:</strong> <?= htmlspecialchars($row['nama_provinsi']); ?></p>
            <p><strong>Deskripsi:</strong> <?= htmlspecialchars($row['deskripsi']); ?></p>
        </div>
    <?php endwhile; ?>
</div>
    <!-- Script untuk Autocomplete -->
    <script>
        const searchInput = document.getElementById('search');
        searchInput.addEventListener('input', async () => {
            const query = searchInput.value.trim();
            if (query.length > 0) {
                const response = await fetch(`autocomplete.php?query=${query}`);
                const suggestions = await response.json();
                // Tampilkan saran dalam dropdown (implementasi dropdown dapat ditambahkan sesuai kebutuhan)
                console.log(suggestions);
            }
        });
    </script>
        <footer>
        <p>Kelompok 1</p>
    </footer>
</body>
</html>