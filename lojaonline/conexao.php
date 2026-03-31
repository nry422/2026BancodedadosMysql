<?php
    // PREENCHER COM AS INFORMAÇÕES DO SEU BANCO DE DADOS 
    $host = 'localhost';
    $banco = 'lojaonline';
    $user = 'root';
    $senha = '';

    try{
        $pdo = new PDO('mysql:host='.$host.';dbname='.$banco.';charset=utf8', $user, $senha);

        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    }catch (PDOException $e){
        die("Erro ao conectar: " . $e->getMessage());
    }
?>