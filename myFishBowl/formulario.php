<?php 
    include "php/conexaoDb.php";
    
?>  

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adicionar ao DB</title>

    <link rel="stylesheet" href="style/style-formulario.css">
  
</head>
<body>
    <header>
        <nav>
            
        </nav>
    </header>

    <main>
        
        <div class="parte1">

            <div class="card">

                <label for="nome-popular">Nome Popular</label>
                <input type="text" id="nome-popular" name="nome-popular">
    
                <label for="nome-cientifico">Nome Cientifico</label>
                <input type="text" name="nome-cientifico" id="nome-cientifico">
    
                <label for="genero">Genero</label>
                <select name="genero" id="genero">
                    <?php
                    include 'php/mostrarSelect.php';

                    echo gerar_select_genero();
                    ?>
                </select>
                
                <label for="ordem">Ordem</label>
                <select name="ordem" id="ordem">
                </select>

            </select>
            
    
            <label for="familia">Familia</label>
            <select name="familia" id="familia">
                <!-- Colocar código php para buscar no banco de dados -->
    
            </select>
            
    
            <label for="ocorrencia">Ocorrencia natural</label>
            <input type="text" name="ocorrencia" id="ocorrencia">
    
            </div>
    
            <div class="card">
    
                <label for="comportamento">Comportamento</label>
                <select name="comportamento" id="comportamento">
                <!-- Colocar código php para buscar no banco de dados -->
        
                </select>
                
        
                <label for="alimentacao">Alimentação</label>
                <select name="alimentacao" id="alimentacao">
                <!-- Colocar código php para buscar no banco de dados -->
        
                </select>
        
                <label for="reproducao">Reprodução</label>
                <select name="reproducao" id="reproducao">
        
                <!-- Colocar código php para buscar no banco de dados -->
                </select>
                
        
                <div class="min-max">
    
                    <div class="lb-ipt">
                        <label for="ph-min">PH mínimo</label>
                        <input type="number" id="ph-min" name="ph-min">
                    </div>
    
                    
                    <div class="lb-ipt">
                        <label for="ph-max">PH máximo</label>
                        <input type="number" id="ph-max" name="ph-max">
                    </div>
                    
                </div>
    
                <div class="min-max">
    
                    <div class="lp-ipt">
    
                        <label for="gh-min">GH mínimo</label>
                        <input type="number" name="gh-min" id="gh-min">
    
                    </div>
                    
                    <div class="lp ipt">
    
                        <label for="gh-max">GH máximo</label>
                        <input type="number" name="gh-max" id="gh-max">
    
                    </div>
                    
    
                </div>
        
                <div class="min-max">
    
                    <div class="lp-ipt">
    
                        <label for="temperatura-min">Temperatura minima</label>
                        <input type="number" name="temperatura-min" id="temperatura-min">
    
                    </div>
                    
                    <div class="lp-ipt">
    
                        <label for="temperatura-max">Temperatura máxima</label>
                        <input type="number" name="temperatura-max" id="temperatura-max">
    
                    </div>
                    
    
                </div>        
        
                
            </div>
            
            <div class="card">
    
                <label for="litragem">Litragem</label>
                <input type="text" name="litragem" id="litragem">
        
                <label for="tamanho">Tamanho</label>
                <input type="text" name="tamanho" id="tamanho">
                
                <label for="adequado-plantado">Adequado para plantados</label>
                <select name="adequado-plantado" id="adequado-plantado">
                    <option value="">Selecionar</option>
                    <option value="sim">Sim</option>
                    <option value="nao">Não</option>
                </select>
        
                <label for="manutencao">Manutenção</label>
                <input type="text" name="manutencao" id="manutencao">
        
                <div class="min-max">
    
                    <div class="lb-ipt">
    
                        <label for="tempo-vida-min">Tempo de vida mínimo</label>
                        <input type="number" name="tempo-vida-min" id="tempo-vida-min">
    
                    </div>
    
                    <div class="lb-ipt">
    
                        <label for="tempo-vida-max">Tempo de vida máximo</label>
                        <input type="number" name="tempo-vida-max" id="tempo-vida-max">
    
                    </div>  
    
                </div>
    
                <label for="filtragem">Filtragem</label>
                <input type="text" name="filtragem" id="filtragem">
    
            </div>

        </div>

        <div class="parte2">
            
            <div class="img-org">
                <label for="imagem-principal">Imagem principal</label>
                <input type="file" id="imagem" name="imagem">

                <label for="imagem-macho">Imagem Macho</label>
                <input type="file" name="imagem-macho" id="imagem-macho">
            </div>
            
            <div class="img-org">
                <label for="imagem-femea">Imagem Femea</label>
                <input type="file" name="imagem-femea" id0="imagem-femea">
    
                <label for="imagem-filhotes">Imagem Filhotes</label>
                <input type="file" name="imagem-filhotes" id="imagem-filhotes">
            </div>
           
            <div class="img-org">
                <label for="imagem-variacao1">Variação 1</label>
                <input type="file" name="imagem-variacao1" id="imagem-variacao1">
    
                <label for="imagem-variacao2">Variação 2</label>
                <input type="file" name="imagem-variacao2" id="imagem-variacao2">
            </div>
            
            <div class="img-org">
                <label for="imagem-variacao3">Variação 3</label>
                <input type="file" name="imagem-variacao3" id="imagem-variacao3">

                <label for="imagem-variacao4">Variação 4</label>
                <input type="file" name="imagem-variacao4" id="imagem-variacao4">
            </div>
            


        </div>

        <div class="parte3">
            <label for="assunto">Assunto</label>
            <select name="assunto" id="assunto">
                <!--Colocar código php para puxar as opções da tabela assunto-->
            </select>
            <textarea name="paragrafo" id="paragrafo" rows="4" cols="50" ></textarea>

        </div>
  
    </main>

    <footer>

    </footer>
    
</body>
</html>