create database Amonimous;
use Amonimous;

create table Empresa (
	idEmpresa int primary key auto_increment,
	nomeEmpresa varchar(50),
    telefone varchar(11),
    email varchar(40),
	CNPJ char(14)
);

insert into Empresa values (null,'Amonimous','4002-8922','amonimous.bandtec@outlook.com','12345678901234'),
						   (null,'susTabil','2552-4338','susTabil.bandtec@outlook.com','51278549135487'),
                           (null,'Phos4','2113-2554','Phos4.bandtec@outlook.com','15975382460156'),
                           (null,'HealthAnalitcs','95221-3535','HealthAnalitcs.bandtec@outlook.com','75395108246591'),
                           (null,'CodePlanet','987853533','CodePlanet.bandtec@outlook.com','74185296301234');
                           
create table login (
	idLogin int primary key auto_increment,
    -- chave estrangeira idEmpresa
    login varchar(40),
    senha varchar(40)
);

insert into empresa values (null,'',),
						   (null,),
                           (null),
                           (null),
                           (null);

create table endereco (
	idEndereco int primary key auto_increment,
    -- chave estrangeira idEmpresa
	nomeRua varchar(30),
    bairro varchar(30),
    CEP char(8),
    numero varchar(5),
    UF char(2)
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
   