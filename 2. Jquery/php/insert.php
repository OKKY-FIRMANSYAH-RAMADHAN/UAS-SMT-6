<?php 

    require_once "koneksi.php";

    $data = stripslashes(file_get_contents("php://input"));
    $dataPelanggan = json_decode($data, true);

    $pelanggan = $dataPelanggan['pelanggan'];
    $alamat = $dataPelanggan['alamat'];
    $telp = $dataPelanggan['telp'];

    if (!empty($pelanggan) and !empty($alamat) and !empty($telp)) {
        $sql = "INSERT INTO tblpelanggan VALUES('','$pelanggan','$alamat','$telp','admin@gmail.com','123','1','0')";
        if ($result = mysqli_query($con,$sql)) {
            echo "Data Sudah Disimpan";
        }else{
            echo "Data Gagal Disimpan";
        }
    }else{
        echo "Data Kosong";
    }    



?>