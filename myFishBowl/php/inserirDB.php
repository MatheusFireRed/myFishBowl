<?php

    include 'conexaoDb.php';

    $nomePopular        =   $_POST['nome-popular'];
    $nomeCientifico     =   $_POST['nome-cientifico'];
    $genero             =   $_POST['genero'];
    $ordem              =   $_POST ['ordem'];
    $familia            =   $_POST['familia'];
    $ocorrencia         =   $_POST['ocorrencia'];
    $comportamento      =   $_POST['comportamento'];
    $alimentacao        =   $_POST['alimentacao'];
    $reproducao         =   $_POST['reproducao'];
    $phMin              =   $_POST['ph-min'];
    $phMax              =   $_POST['ph-max'];
    $ghMin              =   $_POST['gh-min'];
    $ghMax              =   $_POST['gh-max'];
    $temperaturaMin     =   $_POST['temperatura-min'];
    $temperaturaMax     =   $_POST['temperatura-max'];
    $litragem           =   $_POST['litragem'];
    $tamanho            =   $_POST['tamanho'];
    $adequadoPlantado   =   $_POST['adequado-plantado'];
    $manutencao         =   $_POST['manutencao'];
    $tempoVidaMin       =   $_POST['tempo-vida-min'];
    $tempoVidaMax       =   $_POST['tempo-vida-max'];
    $filtragem          =   $_POST['filtragem'];


    //Prepara consulta SQL
    $sql    = "INSERT INTO Peixes ( nome_popular,
                                    nome_cientifico,
                                    ocorrencia_natural,
                                    ph_min,
                                    ph_max,
                                    gh_min,
                                    gh_max,
                                    temperatura_min,
                                    temperatura_max,
                                    litragem,
                                    tamanho,
                                    adequado_plantado,
                                    manutencao,
                                    tempo_vida_min,
                                    tempo_vida_max,
                                    filtragem) 
                                    VALUES (    ?,
                                                ?,
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?, 
                                                ?)"
    $stmt   = $conn->prepare($sql);


    //Vincular parametros
    $stmt->bind_param("sssddddiissssiis",
                        $nomePopular,
                        $nomeCientifico,
                        $ocorrencia,
                        $phMin,
                        $phMax,
                        $ghMin,
                        $ghMax,
                        $temperaturaMin,
                        $temperaturaMax,
                        $litragem,
                        $tamanho,
                        $adequadoPlantado,
                        $manutencao,
                        $tempoVidaMin,
                        $tempoVidaMax,
                        $filtragem );

    //Executar a consulta
    $stmt->execute();

    //Fechando conexão com banco de dados
    $stmt->close();
    $conn->close();