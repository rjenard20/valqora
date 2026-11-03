<?php
require_once "db.php";

header("Content-Type: application/json; charset=utf-8");

$products = getAllProducts($conn);

echo json_encode($products);

$conn->close();
?>
