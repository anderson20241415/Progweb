<html>
    <head>
        <title>MEU PRIMEIRO PHP</title>
</head>
<body>
<?php 
//var_dump($_GET);
if (empty($_GET)) {
    echo "erro";
    header("Location: login.html");
}
else if ( empty($_GET["nome"]) || empty($_GET["sobrenome"]) || empty( $_GET["idade"]) ) {
    echo "faltou uns paranue";

}

else {
$nome = $_GET ["nome"];
$sobrenome = $_GET ["sobrenome"];
$idade = $_GET ["idade"];
$ano = date("Y") - $idade;

echo "<center>olá mundo. Olá $nome $sobrenome</center>";
echo "<center>voce nasceu em $ano.</center>";
}
?>

    </body>
</html>