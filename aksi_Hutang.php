<?php 
include "includes/koneksi.php";

if($_GET['act'] == 't'){
	$id      		= $_POST['id_hutang'];
	$tanggal      	= $_POST['tanggal'];
	$catatan  		= $_POST['catatan'];
	$kreditur  		= $_POST['kreditur'];
	$jumlah         = $_POST['jumlah'];
	$jatuh_tempo	= $_POST['jatuh_tempo'];
	$user         	= $_POST['user'];

	if($_POST['id_hutang'] == ''){
		$query = "INSERT into hutang(tanggal,catatan,kreditur,jumlah, jatuh_tempo, user) 
		values('$tanggal','$catatan','$kreditur','$jumlah', '$jatuh_tempo', '$user')";
		$hasil = mysqli_query($con, $query);

		$query2 = "INSERT INTO pengeluaran(tanggal,catatan,jumlah,user) values('$tanggal','$catatan','$jumlah','$user')";
		$hasil2 = mysqli_query($con, $query2);

		echo "<script>window.alert('Data Berhasil Ditambahkan');
						window.location=('main.php?module=hutang')</script>";
	}else{
		mysqli_query($con, "UPDATE hutang SET tanggal = '$tanggal', kreditur = '$kreditur', catatan = '$catatan', jumlah = '$jumlah', jatuh_tempo = '$jatuh_tempo' where id_hutang = '$id'");

		echo "<script>window.alert('Data Berhasil Dirubah');
						window.location=('main.php?module=hutang')</script>";
	}

			
}

if($_GET['act'] == 'l'){
	$id_hutang   = $_GET['id'];
		
	mysqli_query($con, "UPDATE hutang SET status = 'selesai' where id_hutang = '$id_hutang'");

				echo "<script>window.alert('Data Berhasil Dirubah');
						window.location=('main.php?module=hutang')</script>";
	
}

if($_GET['act'] == 'h'){
$id		= $_GET['id'];

		mysqli_query($con, "Delete from hutang where id_hutang = '$id'");
		
		echo "<script>window.alert('Data Berhasil Dihapus');
				window.location=('main.php?module=hutang')</script>";

}

?>