select * into ##TEMPOGLOBAL
from categorias

select * from #TEMPO01
select * from ##TEMPOGLOBAL

insert into ##TEMPOGLOBAL (descricao) values ('TESTE GLOBAL')
insert into #TEMPO01 (descricao) values ('TESTE TEMP')