<?php
// REALIZAR A CONSULTA PARA EXIBIR OS DADOS NA TABELA
include 'conexao.php';
$sql = $pdo->query("SELECT * FROM loja");

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
        <h1>Lojas</h1>

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Telefone</th>
                    <th scope="col">Rua</th>
                    <th scope="col">Numero</th>
                    <th scope="col">Bairro</th>
                    <th scope="col">Cep</th>
                    <th scope="col">Complemento</th>
                    <th scope="col">Cidade</th>
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
                        <td><?php echo $linha['telefone'] ?></td>
                        <td><?php echo $linha['rua'] ?></td>
                        <td><?php echo $linha['numero'] ?></td>
                        <td><?php echo $linha['bairro'] ?></td>
                        <td><?php echo $linha['cep'] ?></td>
                        <td><?php echo $linha['complemento'] ?></td>
                        <td><?php echo $linha['cidade'] ?></td>
                        <td>
                            Editar
                        </td>
                        <td>
                            Excluir
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>

</html>