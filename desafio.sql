create table clientes (
	id_cliente int auto_increment primary key,
    nome varchar(100),
    idade int,
    cidade varchar(100)
);
create table pedidos (
	id_pedido int auto_increment primary key,
    id_cliente int,
    produto varchar(100),
    valor decimal(10,2),
    foreign key (id_cliente)
references clientes(id_cliente)
);

create table pedidos (
	id_pedido int auto_increment primary key,
    id_cliente int,
    produto varchar(100),
    valor decimal(10,2),
    foreign key (id_cliente)
references clientes(id_cliente)
);

INSERT INTO clientes (nome, idade, cidade) VALUES
('Ana', 22, 'João Pessoa'),
('Carlos', 30, 'Recife'),
('Marcos', 25, 'Natal'),
('Julia', 28, 'Fortaleza'),
('Pedro', 35, 'Salvador'),
('Lucas', 21, 'João Pessoa'),
('Fernanda', 29, 'Recife'),
('Bruno', 40, 'Natal'),
('Amanda', 26, 'Fortaleza'),
('Rafael', 33, 'Salvador');

INSERT INTO pedidos (id_cliente, produto, valor) VALUES
(1, 'Notebook', 3500),
(2, 'Mouse', 50),
(3, 'Teclado', 120),
(4, 'Monitor', 900),
(5, 'Celular', 2000),
(6, 'Tablet', 1500),
(7, 'Fone', 200),
(8, 'Impressora', 800),
(9, 'Cadeira', 600),
(10, 'Mesa', 700);

select * from clientes;

update clientes
set cidade = 'São Paulo'
where id_cliente = 1;

select count(*) from clientes;
select avg(valor) from pedidos;
select max(valor) from pedidos;

select id_cliente, count(*)
from clientes
group by cidade;

select id_cliente, sum(valor)
from pedidos
group by id_cliente;

select c.nome, p.produto, p.valor
from clientes c
inner join pedidos p
on c.id_cliente = p.id_cliente;