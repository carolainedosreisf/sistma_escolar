<?php $painel_atual = "portaria"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Sistema Escolar</title>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <link rel="shortcut icon" href="img/ico_escola.ico" />
        <?php include("../config.php"); ?>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>
    <body>
        <div class="modal-fora">
            <div class="modal-dentro">
                <p></p>
                <div class="botao-ok">
                    <p>ok</p>
                </div>
            </div>
        </div>
        <script language='javascript'>
            function modal(estilo){
                document.querySelector('.modal-fora').style.display = estilo;
            }
            function modal_texto(texto){
                document.querySelector('.modal-dentro p').innerHTML = texto;
            }
         
        </script>
        <div id="box">
    
            <div id="porteiro">
                <h1><strong><i><?php echo $nome ?> </i> - Seu código é:</strong> <?php echo $code ?> <a href="../config.php?acao=quebra">
            
                <a href="../config.php?acao=quebra"><strong>SAIR</strong></a></h1>
                </div><!-- porteiro -->
            
                <div id="logo">
                <img src="../img/logo.png" width="250px" />
            </div><!-- logo -->
            
            <div id="campo_busca">
                <form name="" method="post" action="" enctype="multipart/form-data">
                    <input type="text" name="cpf" value="" /><input class="input" type="submit" name="send" value="" />
                </form>
                <?php
                    if (isset($_POST['send'])){
                        $_GET['pg'] = '';
                        $cpf= $_POST['cpf'];
                        if ($cpf == ''){ 
                            echo "<script language='javascript'> modal('flex'); modal_texto('Por favor,digite o número de matríclua ou cpf!'); </script>";
                        } else{
                            $sql = "SELECT * FROM estudantes WHERE code = '$cpf' OR nome = '$cpf' OR cpf = '$cpf' OR rg = '$cpf'";
                            $result = mysqli_query($conexao, $sql);
                            if (mysqli_num_rows($result) <= 0){
                                echo "<br><br><br><br><h2>Aluno não encontrado, verifique a informação inserida!</h2>";
                            }else{
                                while($res_1 = mysqli_fetch_assoc($result)){
                                    $nome = $res_1['nome'];
                                    $code = $res_1['code'];
                                    $rg = $res_1['rg'];
                                    echo "<br><br><br><br>".$nome;
                          
                ?>

                <br><br><br><br><h3><strong>
                Aluno:</strong> <?php echo $nome ?>  <strong>
                Nº de matricula:</strong> <?php echo $code ?> <strong>
                RG:<?php echo $rg?></strong>  

                <a href="index.php?pg=confirma&code_a=<?php echo $code; ?>"><img src="../img/confirma.png" title="Confirmar" border="0" width="22px" /></a> 

                <a href="index.php"><img src="../img/deleta.png" title="Cancelar" width="22px" /></a> </h3>

                <input type="hidden" name="codes" value="" /> 

                <?php  }    }   }  } ?>
                <?php 
                    if (@$_GET['pg'] == 'confirma'){
                        $data = date("d/m/Y H:i:s");
                        $date = date("d/m/Y"); 
                        $code_a = $_GET['code_a'];

                        $sql = "INSERT INTO confirma_entrada_de_alunos(date, data_hoje, porteiro,code_aluno) VALUES ('$data', '$date', '$code', '$code_a')";
                        mysqli_query($conexao, $sql);

                        echo "<script language='javascript'>modal('flex'); modal_texto('A entrada do aluno foi confirmada!'); 
                        </script>";
                    }
                ?>
            </div><!-- campo_busca -->
            <br><br><br>
        </div><!-- box -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $(".botao-ok").click(function(){
                modal('none' );
                window.location ='index.php';
            });
        })
    </script>
    
    </body>
</html>
