# Database (DB) Laboratory

This laboratory aimed to introduce a fiction and a first contact with the language used in databases. To achieve this, we conducted an activity using algebraic language and another using SQL, [SQLite](https://www.sqlite.org/)


Thus, the professor provided us with a Database "Matriculados" (Figure 1) and gave the following instructions:

1. Write a relational algebra query for each of the following statements. Send photos (or compile a .pdf) of the notebook.

    1. Show the ages of all students.

    2. Find the names and ages of students under 18 years old.

    3. Find the subjects different from 'Matemática 2'.

2. Below, write an SQL query for each statement. Send a .sql file with the response to the queries below. Place the statement as a comment before the solution.

    > Use the symbol "--" to insert comments. Utilize the platform https://sqliteonline.com/ for executing the queries. The scripts for creating and inserting into the database are located on Moodle.

    4. Show the ages of all students.

    5. Find the names and ages of students under 18 years old.

    6. Find the subjects different from 'Matemática 2'.

    7. Show the name, and the absences in the subject for students who take the subject 'BCC1003'.

    8. Show the name, and the absences in the subject for students who take the subject 'BCC1003' and have absences.

    9. Show the students and subject names for students who have taken at least one subject.

    10. Write the statement and a query of your preference.

---

*Figure 1: Database Diagram "Matriculados"*

materia(<u>mid</u>,nome)

mid | nome
:-: | :-:
BCC34E | Banco de Dados 2
BCC1003 | Computação E Tecnologia
CD3X2 | Cálculo 2
TII22N | Banco de Dados
TII11A | Algoritmos
BCC11A | Algoritmo
TII13A | Matemática 2
TIIX4N | Química 2
TIIEN2 | Inglês
BCC34E | Inglês

matriculado(<u>aid,mid</u>,faltas)
aid | mid | faltas
:-: | :-: | :-:
101 | BCC34E | 2
102 | BCC34E | 3
103 | BCC34E | 3
103 | BCC1003 | 3
103 | CD3X2 | 0
104 | TII22N | 0
104 | TII13A | 1
106 | TII22N | 3
106 | TII11A | 1
107 | TII11A | 4

aluno(<u>aid</u>,nome,login,idade,coeficiente)

aid | nome | login | idade | coeficiente
:-: | :-: | :-: | :-: | :-:
102 | Karina K. | karinak@bcc | 21 | 9.5
101 | Pedro P. | pedrop@bcc | 20 | 9
103 | Valentina P. | valentinap@bcc | 21 | 8
104 | Luiz H. | luizh@tii | 15 | 9
105 | Luiz H. | luizh2@bcc | 22 | 8
106 | Harry P. | NULL | 15 | 2
107 | Ron W. | ron@hog | 16 | 3

*Database Generation Code*

```{sql}

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

```
