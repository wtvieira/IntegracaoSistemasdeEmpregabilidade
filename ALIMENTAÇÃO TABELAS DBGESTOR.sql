USE [DBGESTOR]
GO

-- TBLPESSOA

INSERT INTO [dbo].[TBLPessoa]
           ([ID_Cadastro]
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
         (7, 020284132, 'Matheus Sampaio', 'Brasileira', 'matheus.sampaio@gmail.com', 'Rua do cemitério', '02-12-1994', '031916715514', 'M', '25-05-2024')
GO

09 DIGITOS

-- 01 FEITO
--(1, 01020304, 'Jose Santos', 'Brasileiro', 'jose.santos@gmai.com', 'Rua da praça', '01-02-2000', '79001213971', 'M', '25-05-2024')

--02 FEITO
-- (2, 010209999, 'Fernando Gois', 'Indiano', 'Fernando.gois@gmail.com', 'Avenida Brasil', '09-05-1998', '81016137971', 'M', '25-05-2024')

--03 FEITO
-- (3, 010209885, 'Alec Anderson', 'Estadunidense', 'aleca@outlook.com', 'Avenida Barão de Maruim', '11-09-2004', '81016718549', 'M', '25-05-2024')

-- 04 FEITO
-- (4, 020014057, 'João da Paz', 'Brasileiro', 'joao.paz@outlook.com', 'Avenida Barão de Maua', '01-03-1998', '79016710001', 'M', '25-05-2024')

-- 05 FEITO
-- (5, 030214321, 'Katia Fernanda', 'Brasileira', 'katia.fernanda@gmail.com', 'Rua Junina', '05-09-1996', '71916710332', 'F', '25-05-2024')

--06 FEITO
-- (6, 020225394, 'Marina Souza', 'Brasileira', 'maria.souza@gmail.com', 'Rua Jão da cruz', '02-11-1999', '031916715132', 'F', '25-05-2024')

--07 FEITO
--  (7, 020284132, 'Matheus Sampaio', 'Brasileira', 'matheus.sampaio@gmail.com', 'Rua do cemitério', '02-12-1994', '031916715514', 'M', '25-05-2024')


-- TBLALUNO
-- TABELA 01 TBLALUNO
--1
INSERT INTO [dbo].[TBLAluno]
           ([ID_Aluno]
           ,[ID_Identidade]
           ,[Escolaridade]
           ,[ModifiedDate])
     VALUES
          (1,01020304,'EMC','25-05-2024')
GO

--2
INSERT INTO [dbo].[TBLAluno]
           ([ID_Aluno]
           ,[ID_Identidade]
           ,[Escolaridade]
           ,[ModifiedDate])
     VALUES
          (2,  010209999,'ESC','25-05-2024')
GO

--3
INSERT INTO [dbo].[TBLAluno]
           ([ID_Aluno]
           ,[ID_Identidade]
           ,[Escolaridade]
           ,[ModifiedDate])
     VALUES
          (3, 010209885,'ESC','25-05-2024')
GO

--4
INSERT INTO [dbo].[TBLAluno]
           ([ID_Aluno]
           ,[ID_Identidade]
           ,[Escolaridade]
           ,[ModifiedDate])
     VALUES
          (4, 020014057,'EMC','25-05-2024')
GO

--5
INSERT INTO [dbo].[TBLAluno]
           ([ID_Aluno]
           ,[ID_Identidade]
           ,[Escolaridade]
           ,[ModifiedDate])
     VALUES
          (5, 030214321,'EMC','25-05-2024')
GO

--6
INSERT INTO [dbo].[TBLAluno]
           ([ID_Aluno]
           ,[ID_Identidade]
           ,[Escolaridade]
           ,[ModifiedDate])
     VALUES
          (6, 020225394,'ESI','25-05-2024')

--7
INSERT INTO [dbo].[TBLAluno]
           ([ID_Aluno]
           ,[ID_Identidade]
           ,[Escolaridade]
           ,[ModifiedDate])
     VALUES
          (7, 020284132,'ESC','25-05-2024')



-- TBLCurso

INSERT INTO [dbo].[TBLCurso]
           ([IDCurso]
           ,[ID_Nome_Curso]
           ,[Carga_Horaria]
           ,[Status]
           ,[ModifiedDate])
     VALUES
           (1,'CAIXA DE SUPERMERCADO','20', 'ATIVO', '25-05-2024')
GO

INSERT INTO [dbo].[TBLCurso]
           ([IDCurso]
           ,[ID_Nome_Curso]
           ,[Carga_Horaria]
           ,[Status]
           ,[ModifiedDate])
     VALUES
           (2,'PORTEIRO','40', 'ATIVO', '25-05-2024')
GO


-- TBLTURMA
INSERT INTO [dbo].[TBLTurma]
           ([IDTurma]
           ,[IDCurso]
           ,[ID_Nome_Turma]
           ,[DT_INICIO]
           ,[DT_FIM]
           ,[QT_VAGAS]
           ,[Status]
           ,[ModifiedDate])
     VALUES
           (1,1, 'CAIXA DE SUPERMERCADO 1', '27-05-2024 00:00:00', '31-05-2024 00:00:00',20, 'ATIVO','25-05-2024 00:00:00')
GO

INSERT INTO [dbo].[TBLTurma]
           ([IDTurma]
           ,[IDCurso]
           ,[ID_Nome_Turma]
           ,[DT_INICIO]
           ,[DT_FIM]
           ,[QT_VAGAS]
           ,[Status]
           ,[ModifiedDate])
     VALUES
           (2,1, 'Caixa de Supermercadu 2', '03-06-2024 00:00:00', '07-06-2024 00:00:00',30, 'ATIVO','25-05-2024 00:00:00')
GO

INSERT INTO [dbo].[TBLTurma]
           ([IDTurma]
           ,[IDCurso]
           ,[ID_Nome_Turma]
           ,[DT_INICIO]
           ,[DT_FIM]
           ,[QT_VAGAS]
           ,[Status]
           ,[ModifiedDate])
     VALUES
           (3,2, 'Porteiro 1', '27-05-2024 00:00:00', '31-05-2024 00:00:00',20, 'ATIVO','25-05-2024 00:00:00')
GO

-- TBLFATOINCRICAO
-- 01
INSERT INTO [dbo].[TBLFATOINSCRICAO]
           ([IDInscricao]
           ,[ID_Aluno]
           ,[Nome_Aluno]
           ,[IDTurma]
           ,[ID_Nome_Turma]
           ,[DT_INICIO_TURMA]
           ,[DT_FIM_TURMA]
           ,[Status_Inscrito]
           ,[ModifiedDate])
     VALUES
           (1,1,'Jose Santos', 1, 'CAIXA DE SUPERMERCADO 1', '27-05-2024 00:00:00', '31-05-2024 00:00:00', 'APROVADO', '31-05-2024 00:00:00')
GO

--02
INSERT INTO [dbo].[TBLFATOINSCRICAO]
           ([IDInscricao]
           ,[ID_Aluno]
           ,[Nome_Aluno]
           ,[IDTurma]
           ,[ID_Nome_Turma]
           ,[DT_INICIO_TURMA]
           ,[DT_FIM_TURMA]
           ,[Status_Inscrito]
           ,[ModifiedDate])
     VALUES
           (2,2,'Fernando Gois', 3, 'Porteiro 1', '27-05-2024 00:00:00', '31-05-2024 00:00:00', 'APROVADO', '31-05-2024 00:00:00')
GO

--03
INSERT INTO [dbo].[TBLFATOINSCRICAO]
           ([IDInscricao]
           ,[ID_Aluno]
           ,[Nome_Aluno]
           ,[IDTurma]
           ,[ID_Nome_Turma]
           ,[DT_INICIO_TURMA]
           ,[DT_FIM_TURMA]
           ,[Status_Inscrito]
           ,[ModifiedDate])
     VALUES
           (3,3,'Alec Anderson', 2, 'Caixa de Supermercadu 2', '03-06-2024 00:00:00', '07-06-2024 00:00:00', 'APROVADO', '07-06-2024 00:00:00')
GO

-- 04
INSERT INTO [dbo].[TBLFATOINSCRICAO]
           ([IDInscricao]
           ,[ID_Aluno]
           ,[Nome_Aluno]
           ,[IDTurma]
           ,[ID_Nome_Turma]
           ,[DT_INICIO_TURMA]
           ,[DT_FIM_TURMA]
           ,[Status_Inscrito]
           ,[ModifiedDate])
     VALUES
           (4,6,'Marina Souza', 3, 'Porteiro 1', '27-05-2024 00:00:00', '31-05-2024 00:00:00', 'REPROVADO', '31-05-2024 00:00:00')
GO