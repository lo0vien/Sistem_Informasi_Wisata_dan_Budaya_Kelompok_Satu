<?php
require 'koneksi.php'; // Koneksi database

$query = isset($_GET['query']) ? $_GET['query'] : '';

if ($query) {
    $stmt = $conn->prepare("SELECT nama_provinsi FROM daerah WHERE nama_provinsi LIKE ?");
    $stmt->bind_param("s", $searchTerm);
    $searchTerm = '%' . $query . '%';
    $stmt->execute();
    $result = $stmt->get_result();

    $suggestions = [];
    while ($row = $result->fetch_assoc()) {
        $suggestions[] = $row['nama_provinsi'];
    }
    echo json_encode($suggestions);
}
?>
