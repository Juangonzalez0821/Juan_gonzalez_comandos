<html>
    <head>
        <meta charset="UTF-8">
        <title>
            Tiendas D!
        </title>
    </head>
    <body>
        <form  method="post" action="pagina1.php">

            <select name="opciones1">
            <option value="3000">BOLSA RESELLABLE TAMAÑOS SURTIDOS TIDY HOUSE 20 UND</option>
            <option value="15000">PAÑO REUTILIZABLE SCOTT DURAMAX 30 UND</option>
            <option value="2800">PAPEL ALUMINIO TIDY HOUSE 13 MTS</option>
            <option value="5000">PLATO DESECHABLE TIDY HOUSE 12 UND</option>
            <option value="6500">SERVILLETA CORTADA RENDY 200 UND</option>
            <option value="6500">SERVILLETA DE LUJO RENDY 50 UND</option>
            <option value="10000">SERVILLETA DOBLADA RENDY 200 UND</option>
            <option value="4000">TOALLA COCINA TRIPLE HOJA RENDY 45 HOJAS</option>
            <option value="3500">TOALLA DE COCINA DOBLE HOJA RENDY 50 HOJAS</option>
            <option value="7000">TOALLA DESINFECTANTE BRILLA KING 50 UND</option>
            <option value="200">VASO DESECHABLE TIDY HOUSE 10 OZ – 25 UND</option>
            </select>
        <br>
        <br>

            <select name="opciones"> 
                <option value="2">multiplicar</option>
            </select>

            <input type="text" placeholder="cantidad" name="numero2"> <br>
            <input type="submit" name="calcular" value="calcular">
        </form>
        <?php

     

        include ("matematica.php");
            if(isset($_REQUEST["calcular"])){
                $n1=$_REQUEST["opciones1"];
                $n2=$_REQUEST["numero2"];
                $op=$_REQUEST["opciones"];

                switch($op){
                    case 2:echo " vale $n1 por $n2 unidades da como total a pagar = ". matematica::multiplicar($n1,$n2);break;


                }
            }
        echo "<hr>"
        
        ?>
    </body>
</html>     