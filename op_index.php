<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link href="framework/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
	form .form-horizontal .form-group label .control-label {
    	display: inline-block;
    	max-width: 100%;
    	margin-bottom: 5px;
    	font-weight: bold;
    	text-align: left;
	}

	.jumbotron {
    	padding-top: 30px;
    	padding-bottom: 30px;
    	margin-bottom: 30px;
    	color: inherit;
    	background-color: white;
    	border-radius: 0px;
    	border: dashed 4px #36d7b7;
	}

	.btn-primary {
            color: #fff;
            background-color: #36d7b7;
            border-color: #36d7b7;
    }

    .btn-primary:hover {
            color: #fff;
            background-color: #16a085;
            border-color: #16a085
    }

    .navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus, .navbar-default .navbar-nav>.active>a:hover {
            color: #36d7b7;
    }

        .navbar-default .navbar-nav li>a:hover {
            color: #36d7b7;
        }
</style>
</head>
<body>
<?php
  include "koneksi.php";
  $sql = mysqli_query($conn, "select * from temp");
  $count = mysqli_num_rows($sql);
  
  $s = mysqli_query($conn, "select now from antri");
  $row = mysqli_fetch_array($s);
  $now = $row[0];
  
  
  if(isset($_POST["next"])){
	  $now = 1 + $now;
	  $s = mysqli_query($conn, "UPDATE antri SET now=$now");
	  
  }
  
  if(isset($_REQUEST["validasi"])){
	  $offnama = $_REQUEST["onnama"];  
	  $sql = mysqli_query($conn, "INSERT INTO temp() value()");
  }
?>

<nav class="navbar navbar-default" style="margin-bottom: 0px; ">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="">
                    LOGO
                </a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navheader-collapse" aria-expanded="false">
                    <span class="glyphicon glyphicon-menu-hamburger"></span>
                </button>

            </div>
            <div class="collapse navbar-collapse navheader-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="">Info Antrian</a></li>
                <li><a href="op_editbio.php">pengaturan</a></li>
                <li><a href="op_requser.php">request operator baru</a></li>
                <li><a href="login_admin.php">keluar</a></li>
            </ul>
            </div>
        </div>
    </nav>	

<div class="container">
	<h1 class="text-center"><b>INFO ANTRIAN <h3><?php include 'operator/Jamserver.php'; ?></h3></h1>
<div class="jumbotron">
	<div class="row text-center">
		<div class="col-sm-6">
			<h3><b>Saat Ini</h3>
			<?php echo "<h1>".$now."</h1>";?>
			<h3>orang</h3>
		</div>
		
		<div class="col-sm-6">
			<h3><b>Total Antrian</h3>
			<h1><?php echo $count; ?></h1>
			<h3>orang</h3>
		</div>
	</div>
</div>
</div>

<div class="container">

<div class="col-sm-5">
	<form class="form-horizontal" action="op_index.php" method="post">
	<h1 class="text-center"><b>OFFLINE</h1>
	<hr>
	<div class="form-group">
		<label for="nama" class="control-label col-sm-2">Nama:</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="offnama" placeholder="Nama">
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2 col-lg-11 col-lg-offset-1 text-center">
		<button class="btn btn-primary col-lg-11 col-lg-offset-1" name="antri" id="antri">ANTRI</button>
		</div>
	</div>	
	</form>
	<hr>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2 col-lg-11 col-lg-offset-1 text-center">
		<button class="btn btn-success btn-lg col-lg-11 col-lg-offset-1" name="next" id="next">NEXT</button>
		</div>
	</div>
</div>
<div class="col-sm-2">

</div>
<div class="col-sm-5">
	<form class="form-horizontal" action="">
	<h1 class="text-center"><b>ONLINE</h1>
	<hr>
  <div class="form-group">
    <label for="nama" class="control-label col-sm-2" style="text-align: left;">PIN:</label>
	<div class="col-sm-10">
		<input type="text" class="form-control" id="onnama" >
	</div>
  </div>
  <div class="form-group">
    <label for="nama" class="control-label col-sm-2" style="text-align: left;">Nama:</label>
	<div class="col-sm-10">
		<input type="text" class="form-control" id="onnama" readonly>
	</div>
  </div>
  <div class="form-group">
    <label for="antrian" class="control-label col-sm-2" style="text-align: left;">Antrian:</label>
    <div class="col-sm-10">
		<input type="text" class="form-control" id="antrian" readonly>
	</div>
  </div>
  <div class="form-group">
    <label for="jam" class="control-label col-sm-2" style="text-align: left;">Jam:</label>
    <div class="col-sm-10">
		<input type="text" class="form-control" id="jam" readonly>
	</div>
  </div>
  <div class="form-group">
    <label for="tgl" class="control-label col-sm-2" style="text-align: left;">Tanggal:</label>
    <div class="col-sm-10">
		<input type="text" class="form-control" id="tgl" readonly>
	</div>
  </div>
  <div class="form-group">
    <label for="lokasi" class="control-label col-sm-2" style="text-align: left;">Lokasi:</label>
    <div class="col-sm-10">
		<input type="text" class="form-control" id="lokasi" readonly>
	</div>
  </div>
  <div class="form-group">
  	<div class="col-sm-12 col-lg-10 col-lg-offset-2 text-center">
	<input type="submit" class="btn btn-primary col-lg-12" name="validasi" id="validasi" value="Online Validasi">
	</div>
  </div>
</form>
</div>
</div>

<script src="framework/js/jquery-3.3.1.min.js"></script>
    <script src="framework/js/bootstrap.min.js"></script>
</body>
</html>