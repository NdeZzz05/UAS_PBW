<?php
include 'koneksi.php';
// menyimpan data kedalam variabel
$nama_petugas   = $_POST['nama_petugas'];
$level          = $_POST['level'];
$username       = $_POST['username'];
$password       = md5($_POST['password']);
// query SQL untuk insert data
$query = "INSERT INTO petugas SET nama_petugas='$nama_petugas', level='$level', username='$username', password='$password'";
mysqli_query($koneksi, $query);
// // mengalihkan ke halaman index.php
header("location:login.php");
