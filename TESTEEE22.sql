create database vendas

use vendas

create table categorias (
	categoriaid integer not null identity primary key,
	descricao varchar(30) null


)
select * from categorias
order by categoriaid desc
 
select * from categorias
order by
descricao desc
insert into categorias (descricao) values ('alimentação')
insert into categorias (descricao) values ('bazar'), ('brinquedos'), ('Higiene')

/*select * from categorias*/ /*isso aqui mostra todas as colunas da tabela*/
select categoriaid, descricao from categorias /*esse aqui vc consegue selecionar quasis devem ser mostradas*/

--where descricao like 'ba%' vai começar com ba
--where descricao like '%ba%' que tenha no meio ba
--where descricao like '%ba' termina com ba
--where descricao = 'bazar' or categoriaid = 3
--where categoriaid between 3 and 4 vai procurar somente no intevalo entre os numeros
--where categoriaid not in (1,3)não vai trazer as tabelas que foram selecionadas
--where categoriaid in (1,3,4)vai procurar somente as linhas que foram pré-selecionadas
--where categoriaid <=2 está procurando a linha que tenha categoria menor e ao mesmo tempo menor que 2
--where categoriaid = 3  está procurando a linha que tenha a categoria igual a 3 
--where categoriaid <> 2  está procurando a linha que tenha a categoria diferente de 2
--where categoriaid > 2 está procurando a linha que tenha uma categoria maior que 
--where categoriaid >=2 está procurando a linha que é maior e ao mesmo tempo igual a 2
--where categoriaid < 2  está procurando a linha que é menor do que dois
