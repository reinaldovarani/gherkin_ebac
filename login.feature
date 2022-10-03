            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer login (autenticação) na palataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o usuário "carlos@ebac.com.br"
            E a senha "teste@123"
            Então deve ser direcionado para a "tela de checkout"

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
            Quando eu digitar o usuário "carlos@ebac.com.br"
            E a senha "xxyzz@123"
            Então deve ser exibido uma mwnsagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | usuario              | senha       | mensagem                     |
            | "carlos@ebac.com.br" | "teste@321" | "Usuário ou senha inválidos" |
            | "carlos@ebac.com.br" | "xxyzz@123" | "Usuário ou senha inválidos" |
            | "abcde@ebac.com.br"  | "teste@123" | "Usuário ou senha inválidos" |
