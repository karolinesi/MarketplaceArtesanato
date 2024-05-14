
DECLARE @MaxClienteID INT, @MaxLojaID INT, @MaxID INT
SELECT @MaxClienteID = MAX(ID) FROM Clientes
SELECT @MaxLojaID = MAX(ID) FROM Lojas
SELECT @MaxID = MAX(ID) FROM Vendas
DECLARE @ID VARCHAR(20)
    SET @ID = @MaxID +1 


DECLARE @i INT
SET @i = 1
WHILE @i <= 5000
BEGIN
    -- Gerar valores aleatórios para o ID do cliente e da loja
    DECLARE @ClienteID INT, @LojaID INT
    SET @ClienteID = ROUND(RAND() * 13, 0)
    SET @LojaID = ROUND(RAND() * 3, 0)
    
    -- Gerar uma data aleatória nos últimos 365 dias
    DECLARE @RandomDays INT
    SET @RandomDays = ROUND(RAND() * 365, 0)
    DECLARE @Data DATE
    SET @Data = DATEADD(DAY, -@RandomDays, GETDATE())

    -- Gerar um valor aleatório entre 50 e 500
    DECLARE @ValorTotal DECIMAL(10, 2)
    SET @ValorTotal = ROUND(RAND() * (500 - 50) + 50, 2)

    -- Gerar um ID de produto no formato 'prod-xxxxxx'
    DECLARE @ProdutoID VARCHAR(20)
    SET @ProdutoID = concat('prod-' , CAST(ROUND(RAND() * (123456789-123456778)+123456778, 0) AS int))

	
    -- Inserir o registro de venda
	
    INSERT INTO Vendas (id,Produto_ID, Cliente_ID, Loja_ID, Data, Quantidade, Valor_Total)
    VALUES (@ID, @ProdutoID, @ClienteID, @LojaID, @Data, ROUND(RAND() * 10, 0), @ValorTotal)
	SET @ID = @ID +1
    SET @i = @i + 1
	
END


