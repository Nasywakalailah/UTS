<?php
    $servername = 'localhost';
    $username   = 'root';
    $password   = '';
    $dbname     = 'db_tokopakaian';

    // Membuat Koneksi
    $con = mysqli_connect($servername, $username, $password,$dbname);

    // Cek Koneksi
    if (!$con) {
    die("Gagal terhubung: " . mysqli_connect_error());
    }
?>