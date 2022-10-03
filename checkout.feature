            #language: pt

            Funcionalidade: Conclusão de cadastro
            Como cliente do EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu clicar no botao "finalizar compra"
            E campo nome "Adriana"
            E campo sobrenome "Sousa"
            E campo pais "Brasil"
            E campo endereco "Rua Bela Cintra, 302"
            E campo cidade "São Paulo"
            E campo CEP "05050901"
            E campo telefone "11989895555"
            E campo Endereco de email "adriana.sousa@ebac.com.br"
            Então será exibida a mensagem "Cadastro concluído com sucesso"

            Cenário: Não deve permitir campo e-mail com formato inválido, sistema deve inserir uma mensagem de erro
            Quando eu clicar no botao "finalizar compra"
            E o campo e-mail "xyzzyxebac.com"
            Então o sistema insere a mensagem "E-mail com formato inválido"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
            Quando eu clicar no botao "finalizar compra"
            E o campo cidade estiver " "
            Então será exibida a mensagem "Campo obrigatório não preenchido"

            Esquema do Cenário: Preenchimento do campo e-mail com formato inválido
            Quando eu clicar no <botao>
            E o campo <e-mail>
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | botao              | e-mail           | mensagem                      |
            | "finalizar compra" | "xyzzyxebac.com" | "E-mail com formato inválido" |
            | "finalizar compra" | "@@@@@@"         | "E-mail com formato inválido" |
            | "finalizar compra" | "xebac.com@"     | "E-mail com formato inválido" |

