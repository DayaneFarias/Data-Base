create database sistema_clinica2;

use sistema_clinica2;

create table sexo
(codsexo integer not null auto_increment,
nomesexo varchar(80)not null unique,
primary key (codsexo))engine=innodb;

create table orientacao
(codorientacao integer not null auto_increment,
nomeorientacao varchar(80)not null unique,
primary key (codorientacao))engine=innodb;

create table estado_civil
(cod_estado_civil integer not null auto_increment,
nomeestado_civil varchar(80)not null unique,
primary key (cod_estado_civil))engine=innodb;

create table cidade
(codcidade integer not null auto_increment,
nomecidade varchar(80)not null unique,
primary key (codcidade))engine=innodb;

create table convenio
(codconvenio integer not null auto_increment,
nomeconvenio varchar(80)not null unique,
primary key (codconvenio))engine=innodb;

create table especialidades
(codespecialidades integer not null auto_increment,
nomeespecialidades varchar(80)not null unique,
primary key (codespecialidades))engine=innodb;

create table Abordagem
(codabordagem integer not null auto_increment,
nomeabordagem varchar(80)not null unique,
primary key (codabordagem))engine=innodb;

create table conselho_classe
(codconselho integer not null auto_increment,
nomeconselho varchar(80)not null unique,
primary key (codconselho))engine=innodb;

insert into sexo value (null, 'feminino');
insert into sexo value (null, 'masculino');
insert into sexo value (null, 'não informado');

insert into orientacao value ( null, 'Heterosexual');
insert into orientacao value ( null, 'Homosexual');
insert into orientacao value ( null, 'Bisexual');
insert into orientacao value ( null, 'Assexual');
insert into orientacao value ( null, 'Pansexual');

insert into estado_civil value ( null, 'Casado');	
insert into estado_civil value ( null, 'Uniao Estavel');	
insert into estado_civil value ( null, 'Viuvo');	
insert into estado_civil value ( null, 'Solteiro');	
insert into estado_civil value ( null, 'Divorciado');	

insert into cidade value ( null, 'santo andre');		
insert into cidade value ( null, 'maua');		
insert into cidade value ( null, 'sao caetano do sul');		
insert into cidade value (null, 'sao bernardo do campo');		
insert into cidade value ( null, 'diadema');		
insert into cidade value ( null, 'ribeirao pires');		
insert into cidade value ( null, 'rio grande da serra');		

insert into convenio value ( null, 'SULAMERICA');
insert into convenio value ( null, 'BRADESCO');
insert into convenio value ( null, 'MEDISERVISE');
insert into convenio value ( null, 'CABESP');
insert into convenio value ( null, 'ITAU');
insert into convenio value ( null, 'AMAFRESP');
insert into convenio value ( null, 'ECONOMUS');
insert into convenio value ( null, 'CAIXA');
insert into convenio value ( null, 'AMIL');
insert into convenio value ( null, 'NOTRE DAME');
insert into convenio value ( null, 'PARTICULAR');

insert into especialidades value ( null, 'psicologia');
insert into especialidades value ( null, 'psiquiatria');
insert into especialidades value ( null, 'NENHUM SELECIONADO');

insert into Abordagem value ( null, 'TCC');			
insert into Abordagem value ( null, 'PSICANALISTICA');			
insert into Abordagem value ( null, 'PSICODINAMICA');			
insert into Abordagem value ( null, 'SISTEMICA');			
insert into Abordagem value ( null, 'POSITIVA');			
insert into Abordagem value ( null, 'FROIDIANA');			
insert into Abordagem value ( null, 'BREVE');			
insert into Abordagem value ( null, 'ALCOO E DROGAS');			
insert into Abordagem value ( null, 'ORIENTAÇAO YUNGIANA');	
insert into Abordagem value ( null, 'QUALQUER');	

insert into conselho_classe value ( null, 'CRM');	
insert into conselho_classe value ( null, 'CRP');	

create table prof(
codprof integer not null auto_increment,
nomeprof varchar(100) not null unique,
cidadeprof integer not null,
telprof integer not null,
sexoprof integer not null,
orientacaoprof integer not null,
estado_civilprof integer not null,
especialidade_prof integer not null,
Abordagem integer not null,
conselho_classeprof integer not null,
num_conselho varchar(100) not null,
dataentprof date not null,
datasaidaprof date,
FOREIGN KEY (cidadeprof) references cidade (codcidade),
FOREIGN KEY (sexoprof) references sexo (codsexo),
FOREIGN KEY (orientacaoprof) references orientacao (codorientacao),
FOREIGN KEY (estado_civilprof) references estado_civil (cod_estado_civil),
FOREIGN KEY (especialidade_prof) references especialidades (codespecialidades),
FOREIGN KEY (Abordagem) references abordagem (codabordagem),
FOREIGN KEY (conselho_classeprof) references conselho_classe (codconselho),
primary key (codprof)) engine = innodb;

create table pacientes(
cod_paciente integer not null auto_increment,
nome_paciente varchar(100) not null unique,
cidade_paciente integer not null,
tel_paciente integer not null, 
sexo_paciente integer not null,
orientacao_paciente integer not null,
estado_civil_paciente integer not null,
convenio_paciente integer not null,
carterinha bigint not null,
Abordagem_paciente integer not null,
data_cadastro date not null,
data_saida date,
FOREIGN KEY (cidade_paciente) references cidade (codcidade),
FOREIGN KEY (sexo_paciente) references sexo (codsexo),
FOREIGN KEY (orientacao_paciente) references orientacao (codorientacao),
FOREIGN KEY (estado_civil_paciente) references estado_civil (cod_estado_civil),
FOREIGN KEY (convenio_paciente) references convenio (codconvenio),
FOREIGN KEY (Abordagem_paciente) references abordagem (codabordagem),
primary key (cod_paciente)) engine = innodb;


insert into pacientes value ( null,'Dayane Farias',1,'948833626',1,3,4,11,291998531999,1,'2022-10-12',null);
insert into pacientes value ( null,'Eliane Maria',1,'967162479',1,1,1,10,028881125800,4,'2023-04-15',null);
insert into pacientes value( null,'Alex Cesar',2,'980339649',2,1,1,9,012580288800,7,'2023-02-20',null);
insert into pacientes value ( null,'Gustavo Romão',3,'986247639',2,1,4,2,531999291998,8,'2022-11-05',null);
insert into pacientes value ( null,'Tainara Lima',4,'984575874',1,4,1,8,090483276912,2,'2020-09-22',null);
insert into pacientes value ( null,'Kevin Farias',5,'966172523',2,2,5,5,428763921862,7,'2021-06-29',null);
insert into pacientes value ( null,'Hellen Silva',6,'979891626',3,5,2,3,752169823692,5,'2019-08-30',null);
insert into pacientes value ( null,'Guilherme Branco',5,'913118035',3,4,4,7,531578628136,3,'2022-12-03',null);
insert into pacientes value ( null,'Beatriz Guedes',3,'963308426',1,3,4,4,954752163289,6,'2020-05-13',null);
insert into pacientes value ( null,'Raul Mattar',7,'941532825',3,5,3,6,253189476259,4,'2023-02-08',null);


insert into prof value ( null, 'Maria Josefina',7,982369175,1,3,1,1,2,1,232698,'2022-10-12',null);
insert into prof value ( null, 'José Astoufo',5,962548693,2,4,5,2,10,2,387623,'2023-01-16',null);

select * from pacientes order by cod_paciente;


select * from sexo order by codsexo;
select * from orientacao order by codorientacao; 
select * from estado_civil order by cod_estado_civil;
select * from cidade order by codcidade;
select * from convenio order by codconvenio;
select * from especialidades order by codespecialidades;
select * from Abordagem order by codabordagem;
select * from conselho_classe order by codconselho;

--select para ver pacientes e prof--
select * from prof order by codprof;
select * from pacientes order by cod_paciente;
--iner join tabela prof--
Select codprof,nomeprof,nomecidade,telprof,nomesexo,nomeorientacao,nomeestado_civil,nomeespecialidades,nomeabordagem,nomeconselho,num_conselho,dataentprof,datasaidaprof
from prof
INNER JOIN cidade
on prof.cidadeprof = cidade.codcidade
INNER JOIN sexo
on prof.sexoprof = sexo.codsexo
INNER JOIN orientacao
on prof.orientacaoprof = orientacao.codorientacao
INNER JOIN estado_civil
on prof.estado_civilprof = estado_civil.cod_estado_civil
INNER JOIN especialidades
on prof.especialidade_prof = especialidades.codespecialidades
INNER JOIN abordagem
on prof.abordagem = abordagem.codabordagem
INNER JOIN conselho_classe
on prof.conselho_classeprof = conselho_classe.codconselho;
--iner join tabela pacientes--
Select cod_paciente,nome_paciente,nomecidade,tel_paciente,nomesexo,nomeorientacao,nomeestado_civil,nomeconvenio,carterinha,nomeabordagem,data_cadastro
from pacientes
INNER JOIN cidade
on pacientes.cidade_paciente = cidade.codcidade
INNER JOIN sexo
on pacientes.sexo_paciente = sexo.codsexo
INNER JOIN orientacao
on pacientes.orientacao_paciente = orientacao.codorientacao
INNER JOIN estado_civil
on pacientes.estado_civil_paciente = estado_civil.cod_estado_civil
INNER JOIN abordagem
on pacientes.Abordagem_paciente = abordagem.codabordagem
INNER JOIN convenio
on pacientes.convenio_paciente = convenio.codconvenio;