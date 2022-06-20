/*create database FLUXO_CAIXA1
use FLUXO_CAIXA1
DROP DATABASE FLUXO_CAIXA1
*/

create table TB_CAIXA
(
CODIGO_CAIXA int identity primary key,
DATA_HORA_ABERTURA_CAIXA datetime not null,
DATA_HORA_FECHAMENTO_CAIXA datetime null,
SALDO_INICIAL_CAIXA money not null,
SALDO_FINAL_CAIXA money null,
SITUACAO_CAIXA bit not null
)

go

create procedure sp_cadastro_caixa
	--@DATA_HORA_ABERTURA datetime,
	@DATA_HORA_FECHAMENTO datetime,
	@SALDO_INICIAL money,
	@SALDO_FINAL money
as
begin
	--DECLARE @CODIGO_CAIXA_ATUAL INT;

	insert into TB_CAIXA
	values
	(CURRENT_TIMESTAMP, @DATA_HORA_FECHAMENTO, @SALDO_INICIAL, @SALDO_FINAL, 1)

	SELECT*FROM TB_CAIXA

	--SET @CODIGO_CAIXA_ATUAL = (SELECT SCOPE_IDENTITY());
	--RETURN @CODIGO_CAIXA_ATUAL
end
--exec sp_cadastro_caixa '20020517 12:03:00', null, 0.00, null
go

create procedure sp_alteracao_caixa
	@CODIGO int,
	@DATA_HORA_ABERTURA datetime,
	@DATA_HORA_FECHAMENTO datetime,
	@SALDO_INICIAL money,
	@SALDO_FINAL money,
	@SITUACAO bit
as
begin
	update TB_CAIXA
	set DATA_HORA_ABERTURA_CAIXA = @DATA_HORA_ABERTURA, 
		DATA_HORA_FECHAMENTO_CAIXA = @DATA_HORA_FECHAMENTO, 
		SALDO_INICIAL_CAIXA = @SALDO_INICIAL, 
		SALDO_FINAL_CAIXA = @SALDO_FINAL,
		SITUACAO_CAIXA = @SITUACAO
	where CODIGO_CAIXA = @CODIGO
end

go

create procedure sp_fechamento_caixa
	@CODIGO int
	--@SALDO_FINAL money
as
begin
	update TB_CAIXA
	set DATA_HORA_FECHAMENTO_CAIXA = CURRENT_TIMESTAMP,
		--SALDO_FINAL_CAIXA = @SALDO_FINAL,
		SITUACAO_CAIXA = 0
	where CODIGO_CAIXA = @CODIGO
end
---exec sp_fechamento_caixa 1, 0.00
go

select *from TB_CAIXA

go

create table TB_ITEM_CAIXA
(
CODIGO_ITEM_CAIXA int identity primary key,
DESCRICAO_ITEM_CAIXA varchar(100) null,
VALOR_ITEM_CAIXA money not null,
ENTRADA_ITEM_CAIXA bit not null,
SAIDA_ITEM_CAIXA bit not null,
DATA_HORA_ITEM_CAIXA datetime not null,
CAIXA_ITEM_CAIXA int foreign key references TB_CAIXA(CODIGO_CAIXA)
)

go

create procedure sp_cadastro_item_caixa
	@DESCRICAO varchar(100),
	@VALOR money,
	@ENTRADA bit,
	@SAIDA bit,
	--@DATA_HORA datetime,
	@CAIXA int
as
begin
	insert into TB_ITEM_CAIXA
	values
	(@DESCRICAO, @VALOR, @ENTRADA, @SAIDA, CURRENT_TIMESTAMP, @CAIXA)

	if @ENTRADA = 1
	begin
		update TB_CAIXA
		set SALDO_FINAL_CAIXA = SALDO_FINAL_CAIXA + @VALOR
		where CODIGO_CAIXA = @CAIXA
	end
	else if @SAIDA = 1
	begin
		update TB_CAIXA
		set SALDO_FINAL_CAIXA = SALDO_FINAL_CAIXA - @VALOR
		where CODIGO_CAIXA = @CAIXA
	end
end

go
/*
create procedure sp_entrada_caixa
	@CODIGO_ENTRADA int,
	@CODIGO_CAIXA int,
	@VALOR money
as
begin
	select from TB_CAIXA, TB_ITEM_CAIXA
	update TB_CAIXA
	set 
	where CODIGO_CAIXA = @CODIGO_CAIXA
end*/select*from TB_ITEM_CAIXA