/*Implementaçao de bancos de dados relacional usando MySQL*/
/*01 Criando Arquivo/Banco de Dados*/
create database empresa;
/*02 Acessando Arquivo*/
use empresa;

/*03 Ciando Tabela Cliente */
create table cliente(
	codigo varchar(10),
	nome  varchar(50),
	endereco varchar(50),
	cpf varchar(12),
	telefone varchar(20)
);

/*04 Criando Tabela Compra */
create table compra(
	codigo varchar(100),
    quantidade_produto varchar(100)
    
);

/*05 Criando Tabela Funcionarios */
create table funcionario(
	codigo varchar(100),
    nome varchar(50),
    cpf varchar(12),
    telefone varchar(20)
);
/*06 Criando Tabela Departamento */
create table departamento(
	codigo varchar(100),
    descricao varchar(100)
    
);
/*07 Criando Tabela Fornecedor */
create table fornecedor(
	codigo varchar(100),
    nome varchar(50),
    cpf varchar(12),
    telefone varchar(20)
    
);
/*08 Criando Tabela Produto */
create table produto(
	codigo varchar(100),
    descricao varchar(100),
    valor varchar(100)
    
);

