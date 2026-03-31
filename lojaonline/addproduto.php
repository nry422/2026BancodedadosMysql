<?php 
    include 'conexao.php';


    $nome = $_POST['txtnome'];
    $descricao = $_POST['txtdescricao'];
    $preco = $_POST['txtpreco'];
    $tipo = $_POST['txttipo'];
    $categoria = $_POST['txtcategoria'];
    $data = $_POST['txtdata'];
    $desconto = $_POST['txtdesconto'];
    
    
    $sql = $pdo->prepare(
        "INSERT INTO produto
        (nome, descricao, preco, tipo, categoria, data_lancamento, desconto_usados) 
        VALUES (?,?,?,?,?,?,?)" );


     $sql->execute([$nome, $descricao, $preco, $tipo,$categoria, $data, $desconto]);
     header("Location: index.php");
     exit;
     
     
    






?>