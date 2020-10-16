create database Amonimous;
use Amonimous;

create table Cadastro (
	idCadastro int primary key auto_increment,
	nomeEmpresa varchar(50),
    CNPJ char(20),
    telefone varchar(14),
    email varchar(40),
    senha varchar(40)
);

insert into Cadastro values (null, 'Amonimous','23.234.231/1253-45', '1198743-2312', 'amonimous@gmail.com', 'amoni123'),
							(null, 'Microsoft','76.531.412/9873-98', '1199478-8806', 'microsoft@gmail.com', 'microsoft'),
                            (null, 'Yara Brasil', '89.233.643/8943-67', '1198763-2341', 'yarabr@gmail.com', 'yarabr');
                           
create table login (
	idLogin int primary key auto_increment,
    fkCadastro int,
    foreign key(fkCadastro) references Cadastro(idCadastro)
);

create table endereco (
	idEndereco int primary key auto_increment,
	nomeRua varchar(30),
    bairro varchar(30),
    CEP char(8),
    numero varchar(5),
    UF char(2),
    fkCadastro int,
    foreign key(fkCadastro) references Cadastro(idCadastro)
);
 
 create table ControleTemperatura (
 id int primary key auto_increment,
 Momento char(10),
 Temperatura varchar (6)
 );

insert into ControleTemperatura values (null, '12/12/2012', '30,5'),
							 (null, '20/09/2020', '27,0');
 
 
 create table ControleUmidade (
 id int primary key auto_increment,
 Momento char(10),
 Umidade varchar (6)
 );
 
insert into ControleUmidade values (null, '10/10/2010', '20,5%'),
							 (null, '09/21/2020', '40,3%'); 


create table RelatorioUmidade (
id int primary key auto_increment,
DataHoje varchar (50),
UmidadeMin varchar (6),
UmidadeMax varchar (6),
MediaUmidade varchar (6),
DiferencaUmidade varchar (6)
);
 
insert into RelatorioUmidade values (null, '10/10/12', '20,0%', '50,5%', '35.2%', '30,5%'),
							  (null, '22/09/20', '22,0%', '53,7%', '37,5%', '31,7%');

create table RelatorioTemperatura (
id int primary key auto_increment,
DataHoje varchar (50),
TemperaturaMin varchar (6),
TemperaturaMax varchar (6),
MediaTemperatura varchar (6),
DiferencaTemperatura varchar (6)
);

insert into RelatorioTemperatura values (null, '10/10/12', '25,4', '46,8', '36,1', '21,4'),
							  (null, '22/09/20', '22,0', '32,7', '27,3', '10,7');
                              
drop table Cadastro;
