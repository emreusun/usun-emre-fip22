<?php
    require("connect.php");
    require("functions.php");

    
    // filter the data that comes in
    
    $id = isset($_GET["id"]) ? $_GET["id"] : null;
    $result = getData($pdo, $id);

   // send the processed data back to the vue app
   echo json_encode($result);
