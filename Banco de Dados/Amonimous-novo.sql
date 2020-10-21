create database Amonimous;
use Amonimous;

create table cadastro 	(idCadastro int primary key auto_increment,
						nome varchar (40),
                        cnpj char (14),
                        telefone varchar (20),
                        email varchar (30),
                        senha varchar (20)) auto_increment = 1;
                        
insert into cadastro values (null, 'admin', '66.604.735/0001-32', '(30) 20634-4378', 'admin@uorak.com','admin');


create table loginCliente 	(idLogin int primary key auto_increment,
							email varchar (30),
                            senha varchar (20),
                            fkCadastro int,
                            foreign key (fkCadastro) references cadastro(idCadastro)) auto_increment = 10;
                            
insert into loginCliente values (null, 'admin@uorak.com', 'admin', 1);

create table addUsuario (idUsuario int primary key auto_increment,
						nome varchar (45),
                        emailUsuario varchar(40),
                        senhaUsuario varchar (20),
                        tipoUsuario TINYINT(1),
                        fkloginCliente int,
                        foreign key (fkloginCliente) references loginCliente(idLogin)) auto_increment = 100;
                        
insert into addUsuario values 	(null,'admilson', 'admin@uorak.com', 'admin', 1 , 10),	
								(null, 'Thais Calazans de Sousa','bassou757@uorak.com','NFrjyNCf', 0, 10),
								(null, 'Victor Pederzini','keeley7935@uorak.com', 'Wf1rxwQd', 0, 10),
								(null, 'João Victor Ribeiro Drigo','ebony5101@uorak.com','Cw1DyuRO', 0, 10),
								(null, 'João Vitor de Oliveira Silva','carlito1492@uorak.com','kTzPekGE', 0, 10),
								(null, 'Vinícius Santos de Oliveira','venera5155@uorak.com','o1YDY9b2', 0, 10);
                        
create table armazensCliente 	(idArmazens int primary key auto_increment,
								ufArmazem char(2),
                                cidadeArmazem varchar(25),
                                bairroArmazem varchar (25),
                                ruaArmazem varchar (40),
                                qtd_totalSensores int,
                                fkloginCliente int,
                                foreign key (fkloginCliente) references loginCliente(idLogin))auto_increment = 1000;

insert into armazensCliente values (null, 'SP', 'São Paulo', 'Paulista', 'Rua Haddock Lobo', 50, 10);

create table prateleirasArmazem (idPrateleira int primary key auto_increment,
								nivel1 char (1),
								nivel2 char (1),
								nivel3 char (1),
								nivel4 char (1),
								nivel5 char (1),
								nivel6 char (1),
								nivel7 char (1),
								nivel8 char (1),
								nivel9 char (1),
								nivel10 char (1),
								fkarmazensCliente int,
								foreign key (fkarmazensCliente) references armazensCliente(idArmazens)) auto_increment = 10000;

insert into prateleirasArmazem values 		(null, 'A',1000),
											(null, 'B',1000),
											(null, 'C',1000),
											(null, 'D',1000),
											(null, 'E',1000),
											(null, 'F',1000),
											(null, 'G',1000),
											(null, 'H',1000),
											(null, 'I',1000);

create table sensor (idSensor int primary key auto_increment,
					temperaturaCelsius decimal (4,2),
                    umidadePorcentagem decimal (4,2),
                    datahora datetime(1),
                    fkprateleirasArmazem int,
                    foreign key (fkprateleirasArmazem) references prateleirasArmazem(idPrateleira))auto_increment = 100000;

insert into sensor values 	(null, 24.10, 32.45, '2020-10-21 17:30:00', 10000),
							(null, 23.02, 33.45, '2020-10-21 18:00:00', 10000),
                            (null, 31.80, 59.00, '2020-10-21 18:30:00', 10000),
                            (null, 27.00, 30.16, '2020-10-21 19:00:00', 10000),
                            (null, 15.72, 22.50, '2020-10-21 19:30:00', 10000);                    









							