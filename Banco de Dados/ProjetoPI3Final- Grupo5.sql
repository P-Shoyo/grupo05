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
 
 insert into Usuario values (1, 'Bruno Teixeira', 'Bruno@gmail.com', '123.456.789-26', '64.786.435-3', 'plioson123', '1', '(11)4002-8922'),
							(2, 'Isabella Pires', 'Isabella@gmail.com', '123.456.789-27', '64.786.435-4', 'plioson123', '1', '(11)4002-8923'),
                            (3, 'Luan Collyns', 'Luan@gmail.com', '123.456.789-28', '64.786.435-5', 'plioson123', '0', '(11)4002-8924'),
                            (4, 'Matheus Pinheiro', 'Matheus@gmail.com', '123.456.789-29', '64.786.435-6', 'plioson123', '0', '(11)4002-8925'),
                            (5, 'Nilton Rodrigo', 'Nilton@gmail.com', '123.456.789-25', '64.786.435-7', 'plioson123', '0', '(11)4002-8926'),
                            (6, 'Priscila Choi', 'Priscila@gmail.com', '123.456.789-24', '64.786.435-8', 'plioson123', '0', '(11)4002-8927'),
                            (7, 'Tabata Fernanda', 'Tabata@gmail.com', '123.456.789-23', '64.786.435-9', 'plioson123', '0', '(11)4002-8928'),
                            (8, 'Victor Pederzini', 'Victor@gmail.com', '123.456.789-22', '64.786.435-2', 'plioson123', '0', '(11)4002-8929');
					
                            
 
 create table ControleT (
 id int primary key,
 Momento varchar (20),
 Temperatura varchar (6)
 );

insert into ControleT values (1, '12/12/12', '30,5'),
							 (2, '20/09/20', '27,0');
 
 
 select * from ControleT; 
 
 create table ControleU (
 id int primary key,
 Momento varchar (20),
 Umidade varchar (6)
 );
 
insert into ControleU values (1, '10/10/10', '20,5%'),
							 (2, '21/09/20', '40,3%'); 

select * from ControleU;

create table RelatorioU (
id int primary key,
DataHoje varchar (50),
UmidadeMin varchar (6),
UmidadeMax varchar (6),
MediaU varchar (6),
DiferencaU varchar (6)
);
 
insert into RelatorioU values (1, '10/10/12', '20,0%', '50,5%', '35.2%', '30,5%'),
							  (2, '22/09/20', '22,0%', '53,7%', '37,5%', '31,7%');

select * from RelatorioU;

create table RelatorioT (
id int primary key,
DataHoje varchar (50),
TemperaturaMin varchar (6),
TemperaturaMax varchar (6),
MediaT varchar (6),
DiferencaT varchar (6)
);

insert into RelatorioT values (1, '10/10/12', '25,4', '46,8', '36,1', '21,4'),
							  (2, '22/09/20', '22,0', '32,7', '27,3', '10,7');

select * from RelatorioT;