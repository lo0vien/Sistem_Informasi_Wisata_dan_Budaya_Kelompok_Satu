<?php
include '../../koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Hapus daerah berdasarkan ID
    $conn->query("DELETE FROM daerah WHERE id_daerah=$id");
    header("Location: daerah.php");
} else {
    header("Location: daerah.php");
}
?>
