
<?php
require_once "db.php";

header("Content-Type: application/json; charset=utf-8");

try {
    $products = getAllProducts($conn);

    echo json_encode(
        $products,
        JSON_THROW_ON_ERROR
    );
} catch (Throwable $e) {
    error_log($e->getMessage());
    http_response_code(500);

    echo json_encode([
        "success" => false,
        "message" => "Unable to fetch products."
    ]);
}

$conn->close();
?>
