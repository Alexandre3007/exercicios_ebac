            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            quero fazer o login (autenticação) na plataforma
            para visualizar meus pedidos

            Contexto:
            Dado que eu acesse de login do portal EBAC-SHOP

            Cenário: Autenticação válida direto para tela de checkout
            Quando eu digitar o usuário "alexandre@ebac.com.br"
            E a senha "senha@456"
            Então deve ser direcionado para tela de checkout

            Cenário: Usuário com dados inválidos
            Quando eu digitar o usuário "adasaeds@ebac.com.br"
            E a senha "fsfagsf78542"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve direcionar para a área de checkout

            Exemplos:
            | usuario                 | senha         |
            | "alexandre@ebac.com.br" | "pilar123"    |
            | "marta@ebac.com.br"     | "coluna123"   |
            | "magda@ebac.com.br"     | "martelo123"  |
            | "alisson@ebac.com.br"   | "furacao123"  |
            | "abigail@ebac.com.br"   | "ventania123" |
            | "paulo@ebac.com.br"     | "tornado123"  |