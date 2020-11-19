select * from categorias

update categorias set descricao = 'bazar' where categoriaid = 2 


insert into categorias (descricao) values ('Notebooks'),('Tablets'), ('Roteadores'), ('Periféricos')

DBCC CHECKIDENT('categorias', reseed, 0)

sp_help categorias