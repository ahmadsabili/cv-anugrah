<?php 
include "includes/koneksi.php";

if($_GET['act'] == 't'){
	$id_pasien      	= $_POST['id_pasien'];
	$id_pendaftaran     = $_POST['id_pendaftaran'];
	$keluhan  			= $_POST['keluhan'];
	$tekanan_darah  	= $_POST['tekanan_darah'];
	$berat_badan    	= $_POST['berat_badan'];
	$tanggal			= date("Y-m-d");

		$query = "INSERT into tbl_pendaftaran(id_pasien,id_pendaftaran,keluhan,tekanan_darah,berat_badan,tanggal,status) 
		values('$id_pasien','$id_pendaftaran','$keluhan','$tekanan_darah','$berat_badan','$tanggal','Antri')";
		$hasil = mysqli_query($con, $query);

	echo "<script>window.alert('Data Berhasil Ditambahkan');
	window.location=('main.php?module=datapendaftaran')</script>";
}

if($_GET['act'] == 'e'){
	$id_pasien      	= $_POST['id_pasien'];
	$id_pendaftaran     = $_POST['id_pendaftaran'];
	$keluhan  			= $_POST['keluhan'];
	$tekanan_darah  	= $_POST['tekanan_darah'];
	$berat_badan    	= $_POST['berat_badan'];
	$tanggal			= date("Y-m-d");
		
	mysqli_query($con, "UPDATE tbl_pendaftaran SET keluhan='$keluhan', tekanan_darah = '$tekanan_darah', berat_badan = '$berat_badan'");

				echo "<script>window.alert('Data Berhasil Dirubah');
						window.location=('main.php?module=datapendaftaran')</script>";
	
}

if($_GET['act'] == 'h'){
$id		= $_GET['id_pendaftaran'];

		mysqli_query($con, "Delete from tbl_pendaftaran where id_pendaftaran = '$id'");
		
		echo "<script>window.alert('Data Pasien Berhasil Dihapus');
				window.location=('main.php?module=datapendaftaran')</script>";

}

?>