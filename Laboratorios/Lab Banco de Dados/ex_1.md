# Algebra Relacional

## Escreva uma consulta em álgebra relacional para cada enunciado a seguir. Envie fotos ( ou compile um .pdf) do caderno.

1. Mostre as idades de todos os alunos.

2. Encontre os nomes e as idades de alunos com menos de 18 anos.

3. Encontre as matérias diferentes de ’Matemática 2’.

---

## Resolução

1.  $$ Π idade(aluno) $$

2.  $$ Π nome,idade(σ idade < 18 (alunos)) $$

3.  $$ Π nome(σ nome \not= "Matemática 2" (materia) ) $$

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
