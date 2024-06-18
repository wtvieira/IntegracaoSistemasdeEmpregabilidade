USE [DBGESTOR]

-- CRIA플O DE TABELA PESSOA
CREATE TABLE TBLPessoa (
	[ID_Cadastro][int] NOT NULL UNIQUE,
	[ID_Identidade] [int] NOT NULL PRIMARY KEY,
	[Nome] [nvarchar](256) NOT NULL,
	[Nacionalidade] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Endereco] [nvarchar](256) NOT NULL,
	[DT_Nascimento] [date] NOT NULL,-
	[Telefone] [nvarchar](25) NOT NULL,
	[Genero] [nchar](1) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT ID_Identidade_PK UNIQUE (ID_Identidade)
 )
GO

--CRIA플O TABELA ALUNO
CREATE TABLE TBLAluno (
	[ID_Aluno][int] NOT NULL PRIMARY KEY,
	[ID_Identidade] [int] NOT NULL,
	[Escolaridade] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
    CONSTRAINT ID_Identidade_FK FOREIGN KEY (ID_Identidade) REFERENCES dbo.TBLPessoa(ID_Identidade),
 CONSTRAINT ID_ALUNO_PK UNIQUE (ID_ALUNO))
GO

-- CRIA플O TABELA CURSO
CREATE TABLE TBLCurso (
	[IDCurso][int] NOT NULL UNIQUE,
	[ID_Nome_Curso][nvarchar](100) NOT NULL,
	[Carga_Horaria][int] NOT NULL,
	[Status][nvarchar](8),
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT ID_Curso_PK PRIMARY KEY(IDCurso))
GO
-- CRIA플O TABELA Turma
CREATE TABLE TBLTurma (
	[IDTurma][int] NOT NULL UNIQUE,
	[IDCurso][int] NOT NULL,
	[ID_Nome_Turma][nvarchar](100) NOT NULL,
	[DT_INICIO] [datetime] NOT NULL,
	[DT_FIM] [datetime] NOT NULL,
	[QT_VAGAS][int] NOT NULL,
	[Status][nvarchar](8),
	[ModifiedDate] [datetime] NOT NULL,
	CONSTRAINT ID_Curso_FK FOREIGN KEY (IDCurso) REFERENCES dbo.TBLCurso(IDCurso) ,
	CONSTRAINT ID_Turma_PK PRIMARY KEY(IDTurma))
GO

 -- CRIA플O TABELA TBLFATOINSCRICAO

CREATE TABLE TBLFATOINSCRICAO (
	[IDInscricao][int] NOT NULL UNIQUE,
	[ID_Aluno][int] NOT NULL,
	[Nome_Aluno][nvarchar](256) NOT NULL,
	[IDTurma][int] NOT NULL,
	[ID_Nome_Turma][nvarchar](100) NOT NULL,
	[DT_INICIO_TURMA][datetime] NOT NULL,
	[DT_FIM_TURMA][datetime] NOT NULL,
	[Status_Inscrito][nvarchar](10), --APROVADO, REPROVADO, DESISTENTE, EVADIDO
	[ModifiedDate] [datetime] NOT NULL,
	CONSTRAINT ID_Turma_FK FOREIGN KEY (IDTurma) REFERENCES dbo.TBLTurma(IDTurma),
	CONSTRAINT ID_Auno_PK FOREIGN KEY (ID_ALUNO) REFERENCES dbo.TBLAluno(ID_Aluno),
	CONSTRAINT ID_Inscrito_PK PRIMARY KEY(IDInscricao))
GO 
