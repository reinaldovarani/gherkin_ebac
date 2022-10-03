            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de produtos do portal EBAC

            Cenário: Seleçôes de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecionar a cor "blue"
            E selecionar o tamanho "XS"
            E escolher a quantidade "1"
            E clicar no botao "comprar"
            Então deve exibir a mensagem "Produto adicionado ao carrinho"

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar a cor "orange"
            E selecionar o tamanho "S"
            E escolher a quantidade "11"
            E clicar no botao "comprar"
            Então deve exibir uma mensagem de alerta "Não exceder o número máximo de 10 produtos"

            Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
            Quando eu selecionar a cor "red"
            E selecionar o tamanho "M"
            E clicar no botao "limpar"
            Então as opções de escolha de cor e tamanho devem voltar ao estado original

            Esquema do Cenário: Escolher múltiplas cores e tamanhos
            Quando eu selecionar a <cor>
            E selecionar o <tamanho>
            E escolher a <quantidade>
            E clicar no <botao>
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | cor      | tamanho | quantidade | botao     | mensagem                         |
            | "blue"   | "XS"    | "1"        | "comprar" | "Produto adicionado ao carrinho" |
            | "orange" | "S"     | "2"        | "comprar" | "Produto adicionado ao carrinho" |
            | "red"    | "M"     | "3"        | "comprar" | "Produto adicionado ao carrinho" |
            | "blue"   | "L"     | "4"        | "comprar" | "Produto adicionado ao carrinho" |
            | "orange" | "XL"    | "5"        | "comprar" | "Produto adicionado ao carrinho" |
            | "red"    | "XS"    | "6"        | "comprar" | "Produto adicionado ao carrinho" |
