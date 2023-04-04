<?php   
    require_once('helper.php');
    parse_str(file_get_contents('php://input'), $value);

    $id             = $value['id'];
    $nama_pemesan   = $value['nama_pemesan'];
    $Tanggal        = $value['Tanggal'];
    $Alamat         = $value['Alamat'];
    $Paket          = $value['Paket'];
    $Status         = $value['Status'];

    $query  = "UPDATE  tbl_admin SET nama_pemesan= '$nama_pemesan', Tanggal= '$Tanggal', Alamat= '$Alamat', Paket= '$Paket', Status= '$Status' WHERE id = '$id' ";

    $sql = mysqli_query($db_connect, $query);

    if ($sql) {
        echo json_encode(array('message' => 'Update'));
    } else {
        echo json_encode(array('message' => 'Error: ' . mysqli_error($db_connect)));
    }
?>
