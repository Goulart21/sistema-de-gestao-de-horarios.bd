create database sistema_escolar;
use sistema_escolar;


create table administrador(
id_admin int primary key auto_increment,
nome varchar(100),
login varchar(30) unique not null,
senha varchar(25) not null
);

create table professores(
id_professor int primary key auto_increment,
nome varchar(100) not null
);

create table materias(
id_materia int primary key auto_increment,
nome varchar(100) not null,
carga_horaria int not null
);

create table professor_materia(
id_materia int unique not null,
id_professor int unique not null,
primary key (id_professor, id_materia),
foreign key (id_materia) references materias(id_materia),
foreign key (id_professor) references professores(id_professor)
);

create table quadro_horarios(
id_horarios int primary key auto_increment,
id_materia int unique not null,
id_professor int unique not null,
dia_semana varchar(20) not null,
sala varchar(20) not null,
foreign key (id_materia) references materias(id_materia),
foreign key (id_professor) references professores(id_professores)
)



