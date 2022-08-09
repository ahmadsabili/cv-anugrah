<?php 

$server = 'localhost';
$user = 'root';
$password = '';
$db = 'db_posyandu';



$con = new mysqli($server, $user, $password, $db);

if ($con->connect_error) {

    die('Koneksi Database gagal :' . $con->connect_error);

}

		$carikode = mysqli_query($con, "SELECT id_kategori_pelayanan from tbl_kategori_pelayanan order by id_kategori_pelayanan Desc limit 1");
        $datakode = mysqli_fetch_array($carikode);
        // jika $datakode
        if ($datakode) {
        $nilaikode = (int) substr($datakode['id_kategori_pelayanan'],3,3);
        $kode = $nilaikode + 1;
        echo $kode_otomatis = "P".str_pad($kode, 3, "0", STR_PAD_LEFT);
        } else {
        echo $kode_otomatis = "P001";
        }
		
?>