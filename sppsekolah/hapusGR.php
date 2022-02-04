<?php 
session_start();
if($_SESSION['role']!="admin" && $_SESSION['role'] != "operator"){
    header("location: index.php");
	
}
include 'koneksi.php';
if (isset($_SESSION['login']))  {
	$hapus = $konek -> query("DELETE FROM guru WHERE idguru = '$_GET[id]'");

	if( $hapus) {
		echo "
		<script>
		alert('data guru berhasil dihapus');
		document.location.href = 'dataguru.php';
		</script>
		";
	}else {
		echo "
		<script>
		alert('data guru ini digunakan sebagai walikelas');
		alert('data guru gagal dihapus');
		document.location.href = 'dataguru.php';
		</script>
		";
	}
}else {
	echo "
	<script>
	alert('anda tidak punya akses dihalaman ini');
	document.location.href = 'login.php';
	</script>
	";
}
