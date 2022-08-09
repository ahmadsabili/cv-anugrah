<?php 
include "includes/koneksi.php";

	$id_pasien       = $_POST['id_pasien'];
	
	 $q_cari = mysqli_query($con, "SELECT * FROM tbl_pasien where id_pasien = '$id_pasien'");
     $cari	= mysqli_fetch_array($q_cari);
	 
     if(mysqli_num_rows($q_cari) > 0 ) {
		echo "<script>
        	window.location=('main.php?module=tambahdaftar&id_pasien=$id_pasien')</script>";
	 }else{
		echo "<script>window.alert('Id Pasien Tidak Ditemukan');
        	window.location=('main.php?module=caridaftar')</script>";
	 }


?>