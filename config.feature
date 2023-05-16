            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            quero configurar meu produto de acordo com meu tamanho e gosto
            e escolhar a quantidade
            para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de configuração de produtos do portal EBAC-SHOP

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu escolher os itens "cor", "tamanho" e "quantidade"
            E selecionar as "opções desejadas"
            Então deve exibir a opção "adicionar ao carrinho"

            Cenário: Seleções de itens inválida
            Quando eu escolher os itens "cor", "tamanho" e "quantidade"
            E um desses itens estiverem "sem seleção"
            Então deve exibir uma mensagem de alerta "Verifique as opções em destaque para prosseguir"

            Cenário: Apenas 10 produtos por venda
            Quando tentar adicionar mais de 10 "produtos por venda"
            E tentar prosseguir para o "carrinho"
            Então deve exibir uma mensagem de alerta "Atenção: Limite máximo de 10 produtos por venda"

            Cenário: Botão limpar deve retornar ao estado original
            Quando clicar no botão "limpar"
            E confirmar essa "ação"
            Então deve voltar ao estado original para uma nova seleção de itens

            Esquema do Cenário: Todas as opções selecionadas
            Quando eu selecionar os campos <cor> <tamanho> <quantidade>
            E clicar em <adicionar ao carrinho>
            Então deve adicionar os itens selecionados e exibir a <mensagem> produtos adicionados ao carrinho com sucesso

            Exemplos:
            | cor        | tamanho | quantidade | mensagem                                       |
            | "vermelho" | "P"     | "1"        | "produtos adicionados ao carrinho com sucesso" |
            | "laranja"  | "M"     | "2"        | "produtos adicionados ao carrinho com sucesso" |
            | "azul"     | "G"     | "3"        | "produtos adicionados ao carrinho com sucesso" |