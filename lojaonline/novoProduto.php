<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <h1 class="mb-5">Cadastra Produto</h1>

        <form action="addproduto.php" method="POST">
           <div class="mb-3">
        <input type="text" name="txtnome"
                placeholder="Digite o nome do produto.." class="form-control" required></div>
            <div class="mb-3">
           <textarea name="txtdescricao" placeholder="Descrição do Produto" class="form-control"></textarea> </div>
           <div class="mb-3">
           <input type="text" placeholder="Preço do produto" name="txtpreco" class="form-control" required> </div>
           <div class="mb-3">
           <input type="text" placeholder="Tipo do produto"  name="txttipo" class="form-control" required ></div>
           <div class="mb-3">
           <input type="text" placeholder="categoria do produto" name="txtcategoria" class="form-control" required></div>
           <div class="mb-3">
           <input type="text" placeholder="Data de lançamento..." name="txtdata" class="form-control"></div>
           <div class="mb-3">
           <input type="text" placeholder="Descontro do produto..." name="txtdesconto" class="form-control"></div>
           <div class="mb-3">
            <input type="submit" value="Salvar" name="btnSalvar" class="btn btn-success"></div>

            


        </form>

    </div>
</body>

</html>