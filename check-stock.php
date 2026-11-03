
<?php
require_once "db.php";

header("Content-Type: application/json; charset=utf-8");

if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    http_response_code(405);
    header("Allow: POST");

    echo json_encode([
        "success" => false,
        "message" => "POST requests only."
    ]);
    exit;
}

$product_id = filter_input(
    INPUT_POST,
    "product_id",
    FILTER_VALIDATE_INT
);

$quantity = filter_input(
    INPUT_POST,
    "quantity",
    FILTER_VALIDATE_INT
);

if (
    $product_id === false || $product_id === null ||
    $product_id < 1 ||
    $quantity === false || $quantity === null ||
    $quantity < 1
) {
    http_response_code(400);

    echo json_encode([
        "success" => false,
        "message" => "Invalid product ID or quantity."
    ]);

    exit;
}

try {
    $product = getProductById($conn, $product_id);

    if (!$product) {
        http_response_code(404);

        echo json_encode([
            "success" => false,
            "message" => "Product not found."
        ]);
    } else {
        $available =
            (int)$product["stock_quantity"] >= $quantity;

        echo json_encode([
            "success" => $available,
            "product_id" => (int)$product["product_id"],
            "product_name" => $product["product_name"],
            "stock_quantity" => (int)$product["stock_quantity"],
            "message" => $available
                ? "Stock available."
                : "Insufficient stock."
        ]);
    }
} catch (Throwable $e) {
    error_log($e->getMessage());
    http_response_code(500);

    echo json_encode([
        "success" => false,
        "message" => "Unable to check stock."
    ]);
}

$conn->close();
?>
