<?php

    include 'conexaoDb.php';

    
    function gerar_select_genero(){
        $sql = "SELECT id, genero FROM genero";
        $result = $conn->query($sql);
        
        $options = '';

        if($result->num_rows > 0){
    
            while($row = result->fetch_assoc()){
                $options = '<option value="' . $row['id'] . '">' . $row['genero'] . '</option>';
            }else{
                $options = '<option value="">Nenhum gênero encontrado</option>';
            }
        }
        return $options;
        $conm->close();
        
    }