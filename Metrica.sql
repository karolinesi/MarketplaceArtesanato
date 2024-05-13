WITH PrecoMedio AS (
    SELECT
        p.Categoria,
        AVG(pp.average_price) AS PrecoMedio
    FROM
        Produtos p
    JOIN
        PesquisasPreco pp ON p.ID = pp.product_id
    WHERE
        pp.average_price IS NOT NULL -- Exclui linhas com preço nulo
    GROUP BY
        p.Categoria
),
VendasPorCategoria AS (
    SELECT
        p.Categoria,
        COUNT(DISTINCT v.ID) AS NumeroVendas -- Conta vendas distintas
    FROM
        Produtos p
    LEFT JOIN
        Vendas v ON p.ID = v.Produto_ID
    GROUP BY
        p.Categoria
),
SentimentoMedio AS (
    SELECT
        p.Categoria,
        AVG(ans.sentiment_score) AS SentimentoMedio
    FROM
        Produtos p
    LEFT JOIN
        AnaliseSentimentos ans ON p.ID = ans.product_id
    WHERE
        ans.sentiment_score IS NOT NULL -- Exclui linhas com sentimento nulo
    GROUP BY
        p.Categoria
)
SELECT
    pm.Categoria,
    COALESCE(pm.PrecoMedio, 0) AS PrecoMedio, -- Substitui valores nulos por 0
    COALESCE(vp.NumeroVendas, 0) AS NumeroVendas,
    COALESCE(sm.SentimentoMedio, 0) AS SentimentoMedio
FROM
    PrecoMedio pm
LEFT JOIN
    VendasPorCategoria vp ON pm.Categoria = vp.Categoria
LEFT JOIN
    SentimentoMedio sm ON pm.Categoria = sm.Categoria;
	


	select * from produtos