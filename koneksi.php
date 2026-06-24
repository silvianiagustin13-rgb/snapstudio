<?php
$server   = getenv('DB_HOST')     ?: 'sql12.freesqldatabase.com';
$username = getenv('DB_USER')     ?: 'sql12831420';
$password = getenv('DB_PASS')     ?: 'PVr6LbF2in';
$db       = getenv('DB_NAME')     ?: 'sql12831420';

$koneksi = mysqli_connect($server, $username, $password, $db);
if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
mysqli_set_charset($koneksi, "utf8");

// Auto-detect base URL
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? "https" : "http";
$host     = $_SERVER['HTTP_HOST'];
$script   = $_SERVER['SCRIPT_NAME'];
$base     = implode('/', array_slice(explode('/', $script), 0, -1));
if (in_array(basename(dirname($script)), ['login','partials','user'])) {
    $base = implode('/', array_slice(explode('/', $base), 0, -1));
}
define('BASE_URL', $protocol . '://' . $host . $base);
?>
