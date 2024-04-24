# SQL

## A seguir, escreva uma consulta em SQL para cada enunciado a seguir. Envie um arquivo .sql com a resposta das consultas abaixo. Coloque o enunciado como comentário antes da solução.

> Use o símbolo “--” para inserir comentários. Utilizar a plataforma https://sqliteonline.com/ para execução das consultas. Os scripts para criação e inserts do banco de dados se encontram no moodle.

1. Mostre as idades de todos os alunos.

2. Encontre os nomes e as idades de alunos com menos de 18 anos.

3. Encontre as matérias diferentes de ’Matemática 2’.

4. Mostre o nome, e as faltas na matéria para os alunos que fazem a matéria ’BCC1003’.

5. Mostre o nome, e as faltas na matéria para os alunos que fazem a matéria ’BCC1003’ e tenham faltado.

6. Mostre os alunos e nomes de matéria para alunos que ﬁzeram pelo menos uma matéria

7. Escreva o enunciado e uma consulta de sua preferência.

---

## Resolução

1. R:

    ```{sql}
    SELECT idade
    FROM aluno
    ```

2. R:

    ```{sql}
    SELECT nome, idade
    FROM aluno
    WHERE idade < 18
    ```

3. R:

    ```{sql}
    SELECT nome
    FROM materia
    WHERE nome != "Matemática 2"
    ```

4. R:

    ```{sql}
    SELECT aluno.nome, faltas
    FROM aluno, matriculado
    WHERE aluno.aid = matriculado.aid and
    mid = 'BCC1003'
    ```

5. R:

    ```{sql}
    SELECT aluno.nome, faltas
    FROM aluno, matriculado
    WHERE aluno.aid = matriculado.aid and
    mid = 'BCC1003' and faltas > 0
    ```

6. R:
    ```{sql}
    SELECT aluno.nome, materia.nome
    FROM aluno, matriculado, materia
    WHERE aluno.aid = matriculado.aid and
    matriculado.mid = materia.mid
    ```

7. R:

    ```{sql}
    SELECT aluno.nome, materia.nome
    FROM aluno, matriculado, materia
    WHERE aluno.aid = matriculado.aid and
    matriculado.mid = materia.mid and
    coeficiente >= 9
    ```

---

## Banco de Dados

*Figura 1: Diagrama do Banco de Dados "Matriculados"*

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

*<br><br>Código Gerador desse Banco de Dados*

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
