<?php
	include 'koneksi.php';
	
	if(isset($_POST["id"])){
		foreach($_POST["id"] as $id){
			$query = "DELETE FROM tbl_karyawan WHERE id=?";
			$dewan1 = $db1->prepare($query);
			$dewan1->bind_param("i", $id);
			$dewan1->execute();
		}
	}
?>