<?php   
    require_once('helper.php');

    $nama_pemesan = $_POST['nama_pemesan'];
    $Tanggal = $_POST['Tanggal'];
    $Alamat = $_POST['Alamat'];
    $Paket = $_POST['Paket'];
    $Status = $_POST['Status'];

    $query  = "INSERT INTO tbl_admin (nama_pemesan, Tanggal, Alamat, Paket, Status) VALUES ('$nama_pemesan', '$Tanggal', '$Alamat', '$Paket', '$Status')";

    $sql = mysqli_query($db_connect, $query);

    if ($sql) {
        echo json_encode(array('message' => 'Created'));
    } else {
        echo json_encode(array('message' => 'Error: ' . mysqli_error($db_connect)));
    }
?>
