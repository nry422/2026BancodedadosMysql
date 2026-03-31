<?php
    include 'conexao.php';
    $id = $_GET['id'];

    $sql = $pdo->prepare("DELETE FROM produto_caracteristica WHERE id_produto = ?");
    $sql->execute([$id]);

    $sql = $pdo->prepare("DELETE FROM estoque WHERE id_produto = ?");
    $sql->execute([$id]);

    $sql = $pdo->prepare("DELETE FROM produto WHERE id = ?");
    $sql->execute([$id]);
    header("Location: index.php");
    exit;




?>