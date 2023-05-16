            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            quero fazer concluir meu cadastro
            para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout do portal EBAC-SHOP

            Cenário: Cadastro com todos os dados obrigatórios
            Quando eu digitar os "dados obrigatórios"
            E não deixar de preencher nenhum dos campos "marcados com asteriscos"
            Então deve permitir clicar em finalizar compra

            Cenário: E-mail inválido
            Quando eu digitar o "e-mail"
            E esse estiver com "formato inválido"
            Então deve exibir uma mensagem de alerta "E-mail inválido, tente novamente"

            Cenário: Campos vazios
            Quando tentar prosseguir com "campos vazios"
            E sendo eles "campos obrigatórios"
            Então deve exibir uma mensagem de alerta "Campos obrigatórios vazios, verifique para prosseguir"

            Esquema do Cenário: Finalizar compra
            Quando eu digitar todos os <dadosobrigatorios>
            E um <emailvalido>
            Então deve exibir a <mensagem> compra finalizada com sucesso

            Exemplos:
            | dados obrigatorios | email válido          | mensagem                        |
            | "alexandre silva"  | "alexandre@gmail.com" | "Compra finalizada com sucesso" |
            | "diana edimberg"   | "diana@gmail.com"     | "Compra finalizada com sucesso" |
            | "iago oliveira"    | "iago@hotmail.com"    | "Compra finalizada com sucesso" |