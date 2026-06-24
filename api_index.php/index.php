<?php
// Entry point untuk Vercel
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$path = rtrim($path, '/');

// Root folder project
$root = dirname(__DIR__);

// Map URL ke file PHP
$routes = [
    ''          => '/index.php',
    '/index'    => '/index.php',
    '/login'    => '/login.php',
    '/paket'    => '/paket.php',
    '/tambah'   => '/tambah.php',
    '/edit'     => '/edit.php',
    '/hapus'    => '/hapus.php',
    '/report'   => '/report.php',
    '/user'     => '/user.php',
    '/login/proses_login' => '/login/proses_login.php',
    '/login/logout'       => '/login/logout.php',
    '/user/create'        => '/user/create.php',
    '/user/read'          => '/user/read.php',
    '/user/update'        => '/user/update.php',
    '/user/delete'        => '/user/delete.php',
    '/user/get'           => '/user/get.php',
];

if (isset($routes[$path])) {
    require $root . $routes[$path];
} else {
    http_response_code(404);
    echo '<h1>404 - Halaman tidak ditemukan</h1>';
}
