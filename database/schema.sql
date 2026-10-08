create database to_diafariko;

use to_diafariko;

create table jogador ( 
id_jogador int not null auto_increment,
email_login varchar(150) not null unique,
senha varchar(30) not null,
nome varchar(50),
primary key (id_jogador));

create table ficha (
id_ficha int not null auto_increment,
nome_ficha varchar(100),
nivel numeric (2, 0),
classe varchar (50),
origem varchar (50),
jogador_ficha varchar (50),
vida_atual int,
vida_max int,
pd_atual int,
pd_max int,
foto_url blob,
agilidade numeric (1, 0),
forca numeric (1,0),
inteligencia numeric (1,0),
presença numeric (1,0),
vigor numeric (1,0),
primary key (id_ficha));

create table pericia (
id_pericia int not null auto_increment,
atributo_base enum ('AGI', 'FOR', 'PRE', 'INT', 'VIG'),
primary key (id_pericia));

create table item (
id_item int not null auto_increment,
nome_item varchar(50) not null,
tipo_item enum ('ARMA', 'UTILITARIO'),
dado_quantidade int not null,
dado_faces int not null,
bonus_fixo int default 0,
tipo_dano varchar(50) not null,
margem_critico int default 20,
multiplicador_critico int default 2,
primary key (id_item));

create table habilidade (
id_habilidade int not null auto_increment,
nome_habilidade varchar(50),
descricao_habilidade mediumtext,
primary key (id_habilidade));

create table ritual (
id_ritual int not null auto_increment,
nome_ritual varchar(100),
elemento enum ('Sangue', 'Conhecimento', 'Morte', 'Energia', 'Medo'),
circulo enum ('1', '2', '3', '4'),
descricao mediumtext,
primary key (id_ritual)); 

alter table ficha
add column id_jogadorFK int;

alter table ficha
add foreign key (id_jogadorFK)
references jogador (id_jogador);

create table ficha_pericia (
bonus enum ('5', '10', '15'),
treino enum ('5', '10', '15'),
extra int);

alter table ficha_pericia
add column id_fichaFK int,
add column id_periciaFK int;

alter table ficha_pericia
add foreign key (id_fichaFK)
references ficha (id_ficha);

alter table ficha_pericia
add foreign key (id_periciaFK)
references pericia (id_pericia);

alter table item
add column id_fichaFK int;

alter table item
add foreign key (id_fichaFK)
references ficha (id_ficha);

alter table habilidade
add column id_fichaFK int;

alter table habilidade
add foreign key (id_fichaFK)
references ficha (id_ficha);

alter table ritual
add column id_fichaFK int;

alter table ritual
add foreign key (id_fichaFK)
references ficha (id_ficha);
