<html lang="es">
<head>
    <meta charset="UTF-8">
    <title> tiendas d1 </title>
</head>
<body>
<?php
    //titulo de la pagina
    echo "<H1>PAGINA DE TIENDAS D1</H1>";
    echo "<H2>DE TODOS</H2>";
    $nombre = "<strong>Tiendas D1 </strong>";
    echo "en ".$nombre."puedes comprar todo lo que quieras y si no sabes cualto vale lo puedes carcular  ";
    echo "<hr>"
?>
    <form  method="post" action="pagina.php">
        <INPUt type="text" name="numero1">
        <select name="opciones">
            <option value="0">sumar</option>
            <option value="1">restar</option>
            <option value="2">multiplicar</option>
            <option value="3">dividir</option>
        </select>
        <input type="text" name="numero2"> <br>
        <input type="submit" name="calcular" value="calcular">

        </form>
  </body>
  </html>
  <?php
        include ("matematica.php");
            if(isset($_REQUEST["calcular"])){
                $n1=$_REQUEST["numero1"];
                $n2=$_REQUEST["numero2"];
                $op=$_REQUEST["opciones"];

                switch($op){
                    case 0:echo "$n1 + $n2 = " .matematica::sumar($n1,$n2);break;
                    case 1:echo "$n1 - $n2 = ". matematica::restar($n1,$n2);break;
                    case 2:echo "$n1 * $n2 = ". matematica::multiplicar($n1,$n2);break;
                    case 3:echo "$n1 / $n2 = ". matematica::dividir($n1,$n2);break;
                }

            }
        echo "<hr>"
        ?>