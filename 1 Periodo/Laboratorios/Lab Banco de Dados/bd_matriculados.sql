
drop table if exists matriculado;
drop table if exists aluno;
drop table if exists materia;

create table aluno(
 aid integer primary key,
 nome varchar(55),
 login varchar(55),
 idade integer,
 coeficiente decimal(4,2)
);

insert into aluno values
(102, 'Karina K.', 'karinak@bcc', 21, 9.5),
(101, 'Pedro P.', 'pedrop@bcc', 20, 9.0),
(103, 'Valentina P.', 'valentinap@bcc', 21, 8.0),
(104, 'Luiz H.', 'luizh@tii', 15, 9.0),
(105, 'Luiz H.', 'luizh2@bcc', 22, 8.0),
(106, 'Harry P.', null, 15, 2.0),
(107, 'Ron W.', 'ron@hog', 16, 3.0);

create table materia(
 mid varchar(10) primary key,
 nome varchar(55)
);

insert into materia values
('BCC34E','Banco de Dados 2'),
('BCC1003',  'Computação E Tecnologia'),
('CD3X2',  'Cálculo 2'),
('TII22N' , 'Banco De Dados'),
('TII11A' , 'Algoritmos'),
('BCC11A' , 'Algoritmos'),
('TII13A' , 'Matemática 2'),
('TIIX4N' , 'Química 2'),
('TIIEN2' , 'Inglês'),
('BCCEN2' , 'Inglês');

create table matriculado(
aid integer,
mid varchar(10),
faltas integer,
primary key(aid,mid),
foreign key (aid) references aluno(aid),
foreign key (mid) references materia(mid)
);

insert into matriculado values
(101,'BCC34E',2),
(102,'BCC34E',3),
(103,'BCC34E',3),
(103,'BCC1003',3),
(103,'CD3X2',0),
(104,'TII22N',0),
(104,'TII13A',1),
(106,'TII22N',3),
(106,'TII11A',1),
(107,'TII11A',4);


