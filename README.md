# Marketplace Artesanato

Este projeto tem como objetivo criar um Data Lake para a organização ficticia Marketplace Artesanatos, onde artistas de todo o mundo podem vender suas criações únicas.

### CENÁRIO - Lançamento de um Marketplace Global de Artesanato 

Este marketplace  visa conectar artesãos com clientes globais, oferecendo uma variedade de produtos, desde joias  feitas à mão até móveis artesanais. A missão é projetar e implementar uma infraestrutura de  dados robusta que suporte todas as operações de negócios, desde o registro de produtos até a  análise de vendas e promoções. 

### OBJETIVOS DO PROJETO

Criar um repositório consistente de dados que possa armazenar todas as informações sobre vendas e relacionados para criação de insights e valor para a organização.

### DESCRIÇÃO DO PASSO A PASSO DO PROJETO.

#### Etapa 1 – Modelagem de Dados
Ferramentas utilizadas: Microsoft SQL Software / DBeaver
``` Arquivo: CriacaoDBeTabelas.sql``` 

Como não tenho acesso a um ambiente em nuvem para testes, foi desenvolvido um script T-SQL para ler e gravar os dados da fonte de arquivos CSV e JSON para o Data Lake
Arquivo: ImportFontesExternas.sql

Também foi criado um comando para popular alguns cadastros e vendas.

``` Arquivo: PopularDB.sql / PopularVendasAutomatico.sql``` 

![image](https://github.com/karolinesi/MarketplaceArtesanato/assets/65085217/48706769-a5fe-4e89-ae89-5dabf15a6af0)


#### Etapa 2 – Arquitetura de Data Lake

Desenhado a arquitetura de um Data Lake em Nuvem integrando o banco de dados do marketplace com fontes de dados externas como um arquivo CSV e JSON, sendo elas:

**Análise de Sentimentos de Redes Sociais:** Provindo de uma API de um  fornecedor que monitora redes sociais. Essa API gera um evento toda vez que detecta  comentários sobre a marca e seus produtos. ``` Arquivo sentimento.json``` 

**Pesquisas de Preços:** Integração dos dados obtidos por um robô de pesquisa. Os dados  são depositados uma vez por dia, em formato CSV, em um diretório SFTP.  Arquivo preco.csv
Exemplo: 
```product_id,product_name,average_price,minimum_price,maximum_price,survey_date prod-987654321,Bracelete Artesanal de Prata,150.0,140.0,160.0,2024-04-25 ``` 
 
![image](https://github.com/karolinesi/MarketplaceArtesanato/assets/65085217/8920d35d-2bc2-428d-a691-368ccc4f8e07)


#### Etapa 3 – Transformações de Dados

Criação de uma métrica para demonstrar a quantidade de vendas por categoria juntamente com a média de sentimento e preço médio.
Essa métrica inclui a combinação de dados das 3 fontes utilizadas, limpeza de valores nulos e agregações.

Ferramentas utilizadas: SQL

``` Arquivo: Metrica.sql``` 

![image](https://github.com/karolinesi/MarketplaceArtesanato/assets/65085217/361b935e-7fa7-42e0-9716-ea63c8a9e36f)


#### Etapa 4 – Reporting e Data Visualization

Ferramentas utilizadas: Power BI / PowerPoint / Adobe Colors

``` Arquivo: Dash.pbix / modelo.jpg``` 

Dashboard possuindo dados sobre vendas, sentimento, tendências e produtos, utilizando a identidade visual do cliente.

![image](https://github.com/karolinesi/MarketplaceArtesanato/assets/65085217/3c807002-8a07-4c5d-875f-efdde9c8f040)
