create database ProjetoPI;
use ProjetoPI;

create table Usuario ( 
id int primary key, 
Nome varchar (60),
Email varchar (60),
CPF char (14),
RG char (12),
Senha varchar (100),
ADM char (1),
Telefone varchar (20)
);
 
 select * from Usuario; 
 
 insert into Usuario values (1, 'Exemplioson', 'Exemplioson@gmail.com', '123.456.789-26', '64.786.435-3', 'plioson123', '1', '(11)4002-8922');  
 
 create table ControleT (
 id int primary key,
 Momento varchar (20),
 Temperatura varchar (6)
 );

insert into ControleT values (1, '12/12/12', '30,5');                             
 
 drop table ControleT;
 
 select * from ControleT; -- catapimbas
 
 create table ControleU (
 id int primary key,
 Momento varchar (20),
 Umidade varchar (6)
 );
 
insert into ControleU values (1, '10/10/10', '20,5%'); 

select * from ControleU;

create table RelatorioU (
id int primary key,
DataX varchar (50),
UmidadeMin varchar (6),
UmidadeMax varchar (6),
DeltaU varchar (6)
);
 
insert into RelatorioU values (1, '10/10/12', '8,3%', '50,5%', '2%');        

select * from RelatorioU;

create table RelatorioT (
id int primary key,
DataX varchar (50),
TemperaturaMin varchar (6),
TemperaturaMax varchar (6),
DeltaT varchar (6)
);

insert into RelatorioT values (1, '10/10/12', '8,3', '60,5', '4');        

select * from RelatorioT;


