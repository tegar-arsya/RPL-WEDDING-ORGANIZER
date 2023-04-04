<?php   
    require_once('helper.php');
    parse_str(file_get_contents('php://input'), $value);

    $id             = $value['id'];

    $query  = "DELETE FROM  tbl_admin WHERE id = '$id' ";

    $sql = mysqli_query($db_connect, $query);

    if ($sql) {
        echo json_encode(array('message' => 'Delete'));
    } else {
        echo json_encode(array('message' => 'Error: ' . mysqli_error($db_connect)));
    }
?>
