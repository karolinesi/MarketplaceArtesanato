-- Carregar dados das Pesquisas de Preços do CSV
BULK INSERT PesquisasPreco
FROM 'C:\Artesanato\preco.csv' WITH (
		FIELDTERMINATOR = ','
		,ROWTERMINATOR = '\n'
		,CODEPAGE = '65001'
		,FIRSTROW = 2
		);

-- Carregar dados da Análise de Sentimentos do JSON
INSERT INTO AnaliseSentimentos (
	Evento_ID
	,[Data]
	,Texto
	,Pontuacao_Sentimento
	,Desc_Sentimento
	,Produto_ID
	,Produto_Nome
	,Usuario_ID
	,Usuario_Nome
	,Fonte
	)
SELECT book.*
FROM OPENROWSET(BULK 'C:\Artesanato\sentimento.json', SINGLE_CLOB, CODEPAGE = 'UTF-16') AS j
CROSS APPLY OPENJSON(BulkColumn) WITH (
		Evento_ID VARCHAR(255) '$.id'
		,[Data] DATETIME '$.timestamp'
		,Texto VARCHAR(255) '$.text'
		,Pontuacao_Sentimento FLOAT '$.sentiment.score'
		,Desc_Sentimento VARCHAR(255) '$.sentiment.label'
		,Produto_ID VARCHAR(100) '$.product.id'
		,Produto_Nome NVARCHAR(255) '$.product.name'
		,Usuario_ID VARCHAR(255) '$.user.id'
		,Usuario_Nome VARCHAR(255) '$.user.username'
		,Fonte VARCHAR(255) '$.source'
		) AS book;
