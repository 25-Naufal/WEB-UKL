<?php
session_start();
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/sppsekolah/koneksi.php";
require_once($path);
if(isset($_SESSION['nis'])){
    header("location: index.php");
}
?>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in 
	the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>HALAMAN LOGIN</title>
    <style >
    	.col-md-4col-md-offset-4{
    		margin-top: 20px;
    	}
    	body{
    		background:url('img/white.jpg');
    		background-size: 200px;
    	}
    </style>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

  </head>
</head>
<body>
<center>
<form action="" method="POST">
    <table>
        <tr>
<?php

// Kita akan membuat proses login nya disini
if(isset($_POST['login'])){
    $nis = $_POST['nis'];
    if($nis == ""){
        echo "<script>alert('NIS kosong');location.href='login_siswa.php';</script>";
    }else{
    $cari = mysqli_query($konek, "SELECT * FROM siswa WHERE nis='$nis'");
	//query = komunikasi dgn database
    $hasil = mysqli_fetch_array($cari);
	var_dump($hasil);
	//ngeprint var hasil
        // Jika data yang dicari kosong
        if(mysqli_num_rows($cari) == 0){
            echo "<script>alert('nis belum terdaftar!');location.href='login_siswa.php';</script>";
        }else{
        // Jika nisn siswa sesuai dengan database maka akan redirect ke halaman utama dan akan dibuatkan sesi
            $_SESSION['nis'] = $_POST['nis'];
			$_SESSION['login'] = true;
            header("location: index.php");
        }
    }
}
?>
<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card-header">
					<h2>Login Siswa</h2>
					<!--<div class="d-flex justify-content-end social_icon">
						<span><i class="fab fa-facebook-square"></i></span>
						<span><i class="fab fa-google-plus-square"></i></span>
						<span><i class="fab fa-twitter-square"></i></span>
					</div>-->
				</div>
				<div class="card-body">
					<form action="" method="POST">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="text" name="nis" class="form-control" placeholder="NIS">
						</div>
						<div class="form-group">
							<input type="submit" name="login" value="LOG IN" class="btn float-right login_btn">
						</div>
					</form>
				</div>
				<div class="card-footer">
					<div class="d-flex justify-content-center links">
						Apakah anda admin ?
						<a href="login.php"><b>Login </b></a>
					</div>
				</div>
			</div>
		</div>
	</div>

</html>