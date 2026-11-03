
<?php
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$host = "localhost";
$user = "root";
$password = "";
$database = "valqora";

try {
    $conn = new mysqli($host, $user, $password, $database);
    $conn->set_charset("utf8mb4");
} catch (mysqli_sql_exception $e) {
    error_log($e->getMessage());
    http_response_code(500);
    exit("Database connection failed. Please try again later.");
}

/**
 * Fetch all products.
 */
function getAllProducts($conn) {
    $sql = "
        SELECT product_id, product_name, price, stock_quantity
        FROM products
        ORDER BY product_id ASC
    ";

    return $conn->query($sql)->fetch_all(MYSQLI_ASSOC);
}

/**
 * Fetch one product by ID.
 */
function getProductById($conn, $product_id) {
    $stmt = $conn->prepare("
        SELECT product_id, product_name, price, stock_quantity
        FROM products
        WHERE product_id = ?
    ");

    $stmt->bind_param("i", $product_id);
    $stmt->execute();

    $product = $stmt->get_result()->fetch_assoc();
    $stmt->close();

    return $product ?: null;
}

/**
 * Check whether the requested quantity is available.
 */
function checkProductStock($conn, $product_id, $quantity) {
    if ($product_id < 1 || $quantity < 1) {
        return false;
    }

    $product = getProductById($conn, $product_id);

    return $product !== null
        && (int)$product["stock_quantity"] >= $quantity;
}

/**
 * Reduce stock only when sufficient inventory exists.
 * Use inside a database transaction during checkout.
 */
function reduceProductStock($conn, $product_id, $quantity) {
    if ($product_id < 1 || $quantity < 1) {
        return false;
    }

    $stmt = $conn->prepare("
        UPDATE products
        SET stock_quantity = stock_quantity - ?
        WHERE product_id = ?
          AND stock_quantity >= ?
    ");

    $stmt->bind_param(
        "iii",
        $quantity,
        $product_id,
        $quantity
    );

    $stmt->execute();
    $success = $stmt->affected_rows === 1;
    $stmt->close();

    return $success;
}

/**
 * Set stock to a specific nonnegative quantity.
 */
function updateProductStock($conn, $product_id, $stock_quantity) {
    if ($product_id < 1 || $stock_quantity < 0) {
        return false;
    }

    $stmt = $conn->prepare("
        UPDATE products
        SET stock_quantity = ?
        WHERE product_id = ?
    ");

    $stmt->bind_param("ii", $stock_quantity, $product_id);
    $stmt->execute();

    $success = $stmt->affected_rows >= 0;
    $stmt->close();

    return $success;
}
?>
