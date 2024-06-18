USE [DBAGENCIA]
GO

-- CRIA��O DE TABELA PESSOA 

--DROP TABLE TBLPessoa

CREATE TABLE TBLPessoa (
	[ID_Pessoa] [int] NOT NULL Unique,
	[ID_Identidade] [int] NOT NULL PRIMARY KEY,
	[Nome] [nvarchar](256) NOT NULL,
	[Nacionalidade] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Endereco] [nvarchar](256) NOT NULL,
	[DT_Nascimento] [date] NOT NULL,
	[Telefone] [nvarchar](25) NOT NULL,
	[Genero] [nchar](1) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
 CONSTRAINT ID_Identidade_PK UNIQUE (ID_Identidade)
 )

GO



-- CRIA��O DE TBLPessoa_Curriculo

CREATE TABLE TBLPessoa_Curriculo (
	[ID_Cadastro][int] NOT NULL PRIMARY KEY,
	[ID_Identidade] [int] NOT NULL,
	[Nome] [nvarchar](256) NOT NULL,
	[Ocupacao] [nvarchar](25) NOT NULL,
	[Escolaridade] [nvarchar](50) NOT NULL,
	[Curso_Complementar] [nvarchar](256) NOT NULL,
	[Experiencia] [nvarchar](256) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
    CONSTRAINT ID_Identidade_FK FOREIGN KEY (ID_Identidade) REFERENCES dbo.TBLPessoa(ID_Identidade),
 CONSTRAINT ID_Cadastro_PK UNIQUE (ID_Cadastro))
GO

--DROP TABLE dbo.TBLPessoa_Curriculo

--DROP TABLE dbo.TBLPessoa_Encaminhamento
-- CRIA��O DE TABELA ENCAMINHAMENTO

CREATE TABLE TBLPessoa_Encaminhamento (
	[ID_Encaminhamento][int] NOT NULL PRIMARY KEY,
	[ID_Identidade] [int] NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Nome] [nvarchar](256) NOT NULL,
	[Nome_Vaga] [nvarchar](100) NOT NULL,
	[Nome_Empresa] [nvarchar](256) NOT NULL,
	[Telefone_Empresa] [nvarchar](25) NOT NULL,
	[Endereco_Empresa] [nvarchar](256) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
    CONSTRAINT ID_Identidade_E_FK FOREIGN KEY (ID_Identidade) REFERENCES dbo.TBLPessoa(ID_Identidade),
 CONSTRAINT ID_Encaminhamento_PK UNIQUE (ID_Encaminhamento))
GO


-- ALIMENTA��O DE TABELA PESSOA
--1 FEITO FEITO
INSERT INTO [dbo].[TBLPessoa]
           ([ID_Pessoa]
		   ,[ID_Identidade]
           ,[Nome]
           ,[Nacionalidade]
           ,[Email]
           ,[Endereco]
           ,[DT_Nascimento]
           ,[Telefone]
           ,[Genero]
           ,[ModifiedDate])
     VALUES
           (1, 01020304, 'Jose Santos', 'Brasileiro', 'jose.santos@gmai.com', 'Rua da pra�a', '01-02-2000', '79001213971', 'M', '25-05-2024')
GO
--2 FEITO FEITO
INSERT INTO [dbo].[TBLPessoa]
           ([ID_Pessoa]
		   ,[ID_Identidade]
           ,[Nome]
           ,[Nacionalidade]
           ,[Email]
           ,[Endereco]
           ,[DT_Nascimento]
           ,[Telefone]
           ,[Genero]
           ,[ModifiedDate])
     VALUES
           (2, 01020384, 'Josefa Aleluia', 'Brasileira', 'josefa.aa@gmail.com', 'Rua da igreja', '01-02-2000', '790012177971', 'F', '25-05-2024')
GO

-- CORRE��O 01
UPDATE [dbo].[TBLPessoa]
           SET ID_Identidade = 01050382 WHERE Nome = 'Josefa Aleluia'
GO
-- CORRE��O 02
UPDATE [dbo].[TBLPessoa_Curriculo]
           SET Curso_Complementar = 'Caixade Supermercado' WHERE Nome = 'Josefa Carmen'
GO

--3 FEITO
INSERT INTO [dbo].[TBLPessoa]
           ([ID_Pessoa]
		   ,[ID_Identidade]
           ,[Nome]
           ,[Nacionalidade]
           ,[Email]
           ,[Endereco]
           ,[DT_Nascimento]
           ,[Telefone]
           ,[Genero]
           ,[ModifiedDate])
     VALUES
           (3, 01020994, 'Josefa Carmen', 'Canadense', 'carminha.josefa@gmail.com', 'Rua da oceanica', '01-08-1992', '770016177971', 'F', '25-05-2024')
GO
-- 4 FEITO
INSERT INTO [dbo].[TBLPessoa]
           ([ID_Pessoa]
		   ,[ID_Identidade]
           ,[Nome]
           ,[Nacionalidade]
           ,[Email]
           ,[Endereco]
           ,[DT_Nascimento]
           ,[Telefone]
           ,[Genero]
           ,[ModifiedDate])
     VALUES
           (4, 010209999, 'Fernando Gois', 'Indiano', 'Fernando.gois@gmail.com', 'Avenida Brasil', '09-05-1998', '81016137971', 'M', '25-05-2024')
GO

-- 5 FEITO
INSERT INTO [dbo].[TBLPessoa]
           ([ID_Pessoa]
		   ,[ID_Identidade]
           ,[Nome]
           ,[Nacionalidade]
           ,[Email]
           ,[Endereco]
           ,[DT_Nascimento]
           ,[Telefone]
           ,[Genero]
           ,[ModifiedDate])
     VALUES
           (5, 010209885, 'Alec Anderson', 'Estadunidense', 'aleca@outlook.com', 'Avenida Bar�o de Maruim', '11-09-2004', '81016718549', 'M', '25-05-2024')
GO

-- 6 FEITO
INSERT INTO [dbo].[TBLPessoa]
           ([ID_Pessoa]
		   ,[ID_Identidade]
           ,[Nome]
           ,[Nacionalidade]
           ,[Email]
           ,[Endereco]
           ,[DT_Nascimento]
           ,[Telefone]
           ,[Genero]
           ,[ModifiedDate])
     VALUES
           (6, 010209005, 'Girlene Boa Sorte', 'Brasileira', 'Girlene_Sorte@outlook.com', 'Avenida Augustinho', '28-02-2001', '81016710049', 'F', '25-05-2024')
GO

-- 7 FEITO
INSERT INTO [dbo].[TBLPessoa]
           ([ID_Pessoa]
		   ,[ID_Identidade]
           ,[Nome]
           ,[Nacionalidade]
           ,[Email]
           ,[Endereco]
           ,[DT_Nascimento]
           ,[Telefone]
           ,[Genero]
           ,[ModifiedDate])
     VALUES
           (7, 020225394, 'Marina Souza', 'Brasileira', 'maria.souza@gmail.com', 'Rua J�o da cruz', '1999-11-02', '031916715132', 'F', '25-05-2024')
GO


 -- ALIMENTA��O TBL_Pessoa_Curriculo
  -- 1 FEITO
  INSERT INTO [dbo].[TBLPessoa_Curriculo]
           ([ID_Cadastro]
           ,[ID_Identidade]
           ,[Nome]
           ,[Ocupacao]
           ,[Escolaridade]
           ,[Curso_Complementar]
           ,[Experiencia]
           ,[ModifiedDate])
     VALUES
           (1,01020304, 'Jose Santos', 'Desempregado','EMC', 'Caixa de Supermercado', '02ANOS', '25-05-2024')
GO

  -- 2 FEITO
  INSERT INTO [dbo].[TBLPessoa_Curriculo]
           ([ID_Cadastro]
           ,[ID_Identidade]
           ,[Nome]
           ,[Ocupacao]
           ,[Escolaridade]
           ,[Curso_Complementar]
           ,[Experiencia]
           ,[ModifiedDate])
     VALUES
           (2, 1020384, 'Josefa Aleluia', 'Empregada','ESC', 'Orat�ria', '07ANOS', '25-05-2024')
GO

-- 3 FEITO
  INSERT INTO [dbo].[TBLPessoa_Curriculo]
           ([ID_Cadastro]
           ,[ID_Identidade]
           ,[Nome]
           ,[Ocupacao]
           ,[Escolaridade]
           ,[Curso_Complementar]
           ,[Experiencia]
           ,[ModifiedDate])
     VALUES
           (3, 1020994, 'Josefa Carmen', 'Desempregada','ESC', 'Caixa de Supermercado', '04ANOS', '25-05-2024')
GO

-- 4 FEITO
  INSERT INTO [dbo].[TBLPessoa_Curriculo]
           ([ID_Cadastro]
           ,[ID_Identidade]
           ,[Nome]
           ,[Ocupacao]
           ,[Escolaridade]
           ,[Curso_Complementar]
           ,[Experiencia]
           ,[ModifiedDate])
     VALUES
           (4, 10209999, 'Fernando Gois', 'Desempregado','EMC', 'Porteiro', ' ', '25-05-2024')
GO

-- 5 FEITO
  INSERT INTO [dbo].[TBLPessoa_Curriculo]
           ([ID_Cadastro]
           ,[ID_Identidade]
           ,[Nome]
           ,[Ocupacao]
           ,[Escolaridade]
           ,[Curso_Complementar]
           ,[Experiencia]
           ,[ModifiedDate])
     VALUES
           (5, 10209885, 'Alec Anderson', 'Desempregado','EMC', 'CAIXA DE SUPERMERCADO', '01 ANO', '25-05-2024')
GO


--6 
  INSERT INTO [dbo].[TBLPessoa_Curriculo]
           ([ID_Cadastro]
           ,[ID_Identidade]
           ,[Nome]
           ,[Ocupacao]
           ,[Escolaridade]
           ,[Curso_Complementar]
           ,[Experiencia]
           ,[ModifiedDate])
     VALUES
           (6, 10209005, 'Girlene Boa Sorte', 'Desempregado','ESI', ' ', '04ANOS', '25-05-2024')
GO

--7 
  INSERT INTO [dbo].[TBLPessoa_Curriculo]
           ([ID_Cadastro]
           ,[ID_Identidade]
           ,[Nome]
           ,[Ocupacao]
           ,[Escolaridade]
           ,[Curso_Complementar]
           ,[Experiencia]
           ,[ModifiedDate])
     VALUES
           (7, 20225394, 'Marina Souza', 'Desempregado','ESI', 'PORTEIRO', '02ANOS', '25-05-2024')
GO

-- VERIFICA��O DE TABELAS PESSOA E CURRICULO
  Select * FROM [DBAGENCIA].[dbo].[TBLPessoa]
  INNER JOIN TBLPessoa_Curriculo ON TBLPessoa_Curriculo.ID_Identidade = TBLPessoa.ID_Identidade

-- ALIMENTA��O TBL_Pessoa_Encaminhamento
  INSERT INTO [dbo].[TBLPessoa_Encaminhamento]
           ([ID_Encaminhamento]
           ,[ID_Identidade]
           ,[ID_Empresa]
           ,[Nome]
           ,[Nome_Vaga]
           ,[Nome_Empresa]
           ,[Telefone_Empresa]
           ,[Endereco_Empresa]
           ,[ModifiedDate])
     VALUES
           (01,1020304, 01,'Jose Santos','CAIXA DE SUPERMERCADO', 'MERCADINHO S.A', '7999990000', 'RUA DA IGREJINHA','25-05-2024')
GO
--2 FEITO
INSERT INTO [dbo].[TBLPessoa_Encaminhamento]
           ([ID_Encaminhamento]
           ,[ID_Identidade]
           ,[ID_Empresa]
           ,[Nome]
           ,[Nome_Vaga]
           ,[Nome_Empresa]
           ,[Telefone_Empresa]
           ,[Endereco_Empresa]
           ,[ModifiedDate])
     VALUES
           (03, 10209999, 02,'Fernando Gois','PORTEIRO', 'ABC GEST�O CONDOMINIAL S.A', '7988880910', 'RUA DA GERU','25-05-2024')
GO

--3 FEITO
INSERT INTO [dbo].[TBLPessoa_Encaminhamento]
           ([ID_Encaminhamento]
           ,[ID_Identidade]
           ,[ID_Empresa]
           ,[Nome]
           ,[Nome_Vaga]
           ,[Nome_Empresa]
           ,[Telefone_Empresa]
           ,[Endereco_Empresa]
           ,[ModifiedDate])
     VALUES
          (04,10209885, 01,'Alec Anderson','CAIXA DE SUPERMERCADO', 'MERCADINHO S.A', '7999990000', 'RUA DA IGREJINHA','25-05-2024')
GO

--5 FEITO
INSERT INTO [dbo].[TBLPessoa_Encaminhamento]
           ([ID_Encaminhamento]
           ,[ID_Identidade]
           ,[ID_Empresa]
           ,[Nome]
           ,[Nome_Vaga]
           ,[Nome_Empresa]
           ,[Telefone_Empresa]
           ,[Endereco_Empresa]
           ,[ModifiedDate])
     VALUES
          (5,20225394, 02,'Marina Souza','PORTEIRO', 'ABC GEST�O CONDOMINIAL S.A', '7988880910', 'RUA DA GERU','25-05-2024')
GO



-- VERIFICA��O DE TABELAS PESSOA, CURRICULO E ENCAMINHAMENTO
Select * FROM [DBAGENCIA].[dbo].TBLPessoa_Encaminhamento
  INNER JOIN TBLPessoa_Curriculo ON TBLPessoa_Curriculo.ID_Identidade = TBLPessoa_Encaminhamento.ID_Identidade
  WHERE TBLPessoa_Curriculo.Curso_Complementar = 'Caixa de Supermercado'