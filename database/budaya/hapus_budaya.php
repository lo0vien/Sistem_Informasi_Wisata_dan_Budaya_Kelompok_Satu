<?php
include '../../koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Hapus budaya berdasarkan ID
    $conn->query("DELETE FROM budaya WHERE id_budaya=$id");
    header("Location: budaya.php");
} else {
    header("Location: budaya.php");
}
?>
