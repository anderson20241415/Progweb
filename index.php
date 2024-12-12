<?php
if(!empty($_GET["erro"])){
  $erro = $_GET["erro"];
}
else {
  $erro = 0;
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta charset="utf-8" />
      <link rel="icon" type="image/png" href="img/favicon.png">

   </head>

  <body>
    <script>
      var erro = <?php echo $erro;?>;
    </script>
    <main>
      <div class="container">
        <h1 class="titulo">LOGIN</h1>
        <div class="login-box">
            <div class="imagem-container">
                <img src="img/12889617-computador-antigo-de-pixel-art-com-icone-de-de-icone-de-engrenagem-para-jogo-de-8-bits-em-fundo-branco-vetor.jpg" alt="Imagem Tecnologia" class="imagem-container">
            </div>
            <form action="login.php" method="POST" id="loginForm" onsubmit="return validarFormulario()">
              <div class="input-container">
                  <label for="email">Email:</label>
                  <input type="email" id="email" name="email" required minlength="6" maxlength="25"  value= "julia@ju.com" autocomplete="off">
              </div>
              <div class="input-container">
                <label for="senha">Senha:</label>
                <input type="password" id="senha" name="senha" required minlength="3" maxlength="8" value= "freefire" autocomplete="off">
            </div>  
            <button type="submit">Entrar</button>
            <br><div id="erro-mensagem"></div>

            </form>


        </div>
    </div>    
      
    </main>
    <script src="js/sketch.js"></script>
  </body>
</html>
