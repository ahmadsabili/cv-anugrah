<?php

//koneksi database
$server     = 'localhost';
$user       = 'root';
$password   = '';
$db         = 'db_antrian';
$con = new mysqli($server, $user, $password, $db);
if ($con->connect_error) {
    die('Koneksi Database gagal :' . $con->connect_error);
}

    //buat kode
    $carikode = mysqli_query($con, "SELECT nomor_antrian from tbl_antrian order by nomor_antrian Desc limit 1");
    $datakode = mysqli_fetch_array($carikode);
        // jika $datakode
        if ($datakode) {
            $nilaikode = $datakode['nomor_antrian'];
            $kode = $nilaikode + 1;
            $kode_otomatis = "".str_pad($kode, 5, "0", STR_PAD_LEFT);
        } else {
            $kode_otomatis = "00001";
        }

    //contoh id Pasar
    $id_pasar = 'PS001';

    //insert database
    $query = "INSERT into tbl_antrian(nomor_antrian,id_pasar) 
    values('$kode_otomatis','$id_pasar')";
    $hasil = mysqli_query($con, $query);
        if($hasil){
            echo "Data Berhasil Ditambahkan";
        }else{
            echo "GAGAL";
        }

    ?>
