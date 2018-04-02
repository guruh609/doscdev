<?php
if (isset($_POST['nickname']) && $_POST['nickname']) {
    // memasukan file koneksi ke database
    require_once 'config.php';
    // menyimpan variable yang dikirim Form
    $nama = $_POST['nickname'];
    $email = $_POST['email'];
    $nohp = $_POST['nohp'];
    // $repassword = $_POST['repassword'];
    // cek nilai variable
    if (empty($nama)) {
        header('location: ./pendaftar.php?error=' .base64_encode('Nama tidak boleh kosong'));
    }
    if (empty($email)) {
        header('location: ./pendaftar.php?error=' .base64_encode('Username tidak boleh kosong'));   
    }
    if (empty($nohp)) {
        header('location: ./pendaftar.php?error=' .base64_encode('Password tidak boleh kosong'));   
    }
    // validasi apakah password dengan repassword sama
    // if ($password != $repassword) { // jika tidak sama
    //     header('location: ./register.php?error=' .base64_encode('Password tidak boleh sama'));   
    // }
    // // encryption dengan md5
    // $password = md5($password);
    // $level = 'member'; // default, 
    // SQL Insert
    $sql = "INSERT INTO pendaftar (nama, email, nohp) VALUES ('$nama', '$email', '$nohp' )";
    $insert = $dbconnect->query($sql);
    // jika gagal
    if (! $insert) {    
        echo "<script>alert('".$dbconnect->error."'); window.location.href = './pendaftar.php';</script>";
    } else {
        echo "<script>alert('Insert Data Berhasil'); window.location.href = './index.php';</script>";
    }
}
?>