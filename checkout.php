<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "valqora";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Database connection failed.");
}

$conn->set_charset("utf8mb4");

function getAllProducts($conn) {
    $sql = "SELECT product_id, product_name, price, stock_quantity
            FROM products ORDER BY product_id ASC";

    $result = $conn->query($sql);

    if (!$result) {
        return [];
    }

    return $result->fetch_all(MYSQLI_ASSOC);
}
?>