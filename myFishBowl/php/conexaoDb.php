<?php

    $servername = "localhost";
    $username   = "root";
    $password   = "";
    $dbname     = "my-fishbowl";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if($conn->conect_error){
        die("Conexão falhou: " . $conn->conect_error);
    }else{
        echo 'Conexão feita com sucesso!';
    }

?>