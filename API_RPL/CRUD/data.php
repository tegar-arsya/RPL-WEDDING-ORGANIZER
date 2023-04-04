<?php   

    require_once('helper.php');

    $query  = "SELECT * FROM tbl_admin";
    $sql    = mysqli_query($db_connect, $query);

    if ($sql) {

        $result = array();
        while ($row = mysqli_fetch_array($sql)) {
            array_push($result, array(
                'id' => $row['id'],
                'Nama Pemesan' => $row['nama_pemesan'],
                'Tanggal Order' => $row['Tanggal'],
                'Alamat Pemesan' => $row['Alamat'],
                'Paket Yang Di Pilih' => $row['Paket'],
                'Status Order' => $row['Status'],
            ));
        }
    }
    echo json_encode ( array('result'=> $result) );


?>