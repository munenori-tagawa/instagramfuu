<?php

include('./dbConfig.php');

$targetDirectory = './images/';
$imageId = $_GET['id']; 

if(!empty($imageId)){
    $sql = "SELECT file_name FROM images WHERE id = " . $imageId;

    $sth = $db->prepare($sql);
    $sth->execute();
    $getImageName = $sth->fetch();

    $deleteImage = unlink($targetDirectory . $getImageName['file_name']);

    if($deleteImage){
        $deleteRecode = $db->query("DELETE FROM images WHERE id = " . $imageId);

        if($deleteRecode){
            header('Location:' . './html/index.php', true, 303);
            exit();
        }

    }
}
?>