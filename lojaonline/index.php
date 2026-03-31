<?php
// REALIZAR A CONSULTA PARA EXIBIR OS DADOS NA TABELA
include 'conexao.php';
$sql = $pdo->query("SELECT * FROM produto");

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <title>Página Principal</title>
</head>

<body>

    <div class="container">
        <h1>Página Principal</h1>

        <a href="novoProduto.php" class="btn btn-primary">Novo Produto</a>

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Descrição</th>
                    <th scope="col">Preço</th>
                    <th scope="col">Tipo</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Data de Lançamento</th>
                    <th scope="col">Desconto</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Excluir</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($linha = $sql->fetch(PDO::FETCH_ASSOC)) {
                ?>
                    <tr>
                        <th scope="row"><?php echo $linha['id'] ?></th>
                        <td><?php echo $linha['nome'] ?></td>
                        <td><?php echo $linha['descricao'] ?></td>
                        <td><?php echo $linha['preco'] ?></td>
                        <td><?php echo $linha['tipo'] ?></td>
                        <td><?php echo $linha['categoria'] ?></td>
                        <td><?php echo $linha['data_lancamento'] ?></td>
                        <td><?php echo $linha['desconto_usados'] ?></td>
                        <td>
                            Editar
                        </td>
                        <td>
                            <form action="delproduto.php" method="GET"> 
                                <input type="hidden" name="id" value="<?php echo $linha['id'] ?>">
                                <input type="submit" value="Excluir" class="btn btn-danger" name="btnexcluir"/>


                            </form>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>

</html>