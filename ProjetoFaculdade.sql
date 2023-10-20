create database sistema_educacional; 

use sistema_educacional;

create table alunos
(
id_aluno integer primary key,
nome varchar(100) not null,
cpf numeric not null,
data_nascimento date,
email varchar(100) not null,
telefone numeric not null
);

insert into alunos() values

create table professores
(
id_professores integer primary key,
nome varchar(100) not null,
cpf numeric not null,
email varchar(100) not null,
telefone numeric not null,
);

insert into professores() values

create table cursos
(
id_curso integer primary key,
nome_curso varchar(100) not null,
carga_horaria numeric not null,
id_aluno integer

foreign key (id_aluno) references alunos(id_aluno)
);

insert into cursos() values

create table materias
(
id_materias integer primary key,
nome_materia varchar(100) not null,
carga_horaria numeric not null,
id_curso integer,
id_professor integer

foreign key (id_curso) references cursos(id_curso)
foreign key (id_professor) references professores(id_professor)
);

insert into materias() values

create table turmas
(
id_turmas integer primary key,
codigo_turma varchar(100) not null,
quantidade_alunos numeric not null,
id_cursos integer

foreign key (id_curso) references cursos(id_curso)
);

insert into turmas() values

create table notas
(
id_nota integer primary key,
data_avaliacao date,
id_aluno integer,
id_turma integer

foreign key (id_aluno) references alunos(id_aluno)
foreign key (id_turma) references turmas(id_turma)
);

insert into notas() values

create table presenca
(
id_presenca integer primary key,
data_aula date,
status_aluno varchar(100) not null,
id_aluno integer,
id_turma integer

foreign key (id_aluno) references alunos(id_aluno)
foreign key (id_turma) references turmas(id_turma)
);

insert into presenca() values

create table eventos
(
id_evento integer primary key,
tema_evento varchar(100) not null,
data_evento date,
id_curso integer

foreign key (id_curso) references cursos(id_curso)
);

insert into eventos() values