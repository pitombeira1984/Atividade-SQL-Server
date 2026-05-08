create table DISCIPLINAS(
  CD_DISCIPLINA varchar(10) not null,
  NM_DISCIP varchar(20) not null,
  TURNO varchar(10) not null,
  NM_PROF varchar(10) not null
)

create table ALUNOS(
  MATRICULA varchar(10) not null,
  NM_ALUNO varchar(10) not null,
  EMAIL varchar(10) not null,
  CPF varchar(15) not null,
)

create table NOTADISC(
  AV1 float not null,
  AV2 float not null,
  MATRICULA varchar(10) not null,
  CD_DISCIPLINA varchar(10) not null
)

insert into DISCIPLINAS(
  CD_DISCIPLINA,
  NM_DISCIP,
  TURNO,
  NM_PROF
)values(
  'BD20601',
  'BANCO DE DADOS',
  'MANHÃ',
  'ALEXANDRE'
)

insert into DISCIPLINAS(
  CD_DISCIPLINA,
  NM_DISCIP,
  TURNO,
  NM_PROF
)values(
  'IA20602',
  'IA',
  'NOITE',
  'NATOR'
)

insert into DISCIPLINAS(
  CD_DISCIPLINA,
  NM_DISCIP,
  TURNO,
  NM_PROF
)values(
  'LP20604',
  'LP',
  'NOITE',
  'THIAGO'
)

insert into ALUNOS(
  MATRICULA,
  NM_ALUNO,
  EMAIL,
  CPF
)values(
  '8788',
  'VINICIUS',
  'V@G',
  '455'
)

insert into ALUNOS(
  MATRICULA,
  NM_ALUNO,
  EMAIL,
  CPF
)values(
  '8799',
  'MELCK',
  'M@T',
  '788'
)

insert into ALUNOS(
  MATRICULA,
  NM_ALUNO,
  EMAIL,
  CPF
)values(
  '8800',
  'IGOR',
  'I@H',
  '488'
)

insert into NOTADISC(
  AV1,
  AV2,
  MATRICULA,
  CD_DISCIPLINA
)values(
  10,
  9,
  '8788',
  'BD20601'
)

insert into NOTADISC(
  AV1,
  AV2,
  MATRICULA,
  CD_DISCIPLINA
)values(
  10,
  10,
  '8799',
  'BD20601'
)

insert into NOTADISC(
  AV1,
  AV2,
  MATRICULA,
  CD_DISCIPLINA
)values(
  9,
  8,
  '8800',
  'BD20601'
)

insert into NOTADISC(
  AV1,
  AV2,
  MATRICULA,
  CD_DISCIPLINA
)values(
  8,
  8,
  '8788',
  'IA20602'
)

insert into NOTADISC(
  AV1,
  AV2,
  MATRICULA,
  CD_DISCIPLINA
)values(
  7,
  7,
  '8800',
  'IA20602'
)

insert into NOTADISC(
  AV1,
  AV2,
  MATRICULA,
  CD_DISCIPLINA
)values(
  9,
  9,
  '8788',
  'LP20604'
)

select * from DISCIPLINAS
select * from ALUNOS
select * from NOTADISC

  select * 
  from DISCIPLINAS D,
       NOTADISC N,
       ALUNOS A 
  where N.CD_DISCIPLINA = D.CD_DISCIPLINA
  and N.MATRICULA = A.MATRICULA

 select D.CD_DISCIPLINA "Cod da Disciplina",
        D.NM_DISCIP "Nome da Disciplina",
        D.TURNO "Turno",
        D.NM_PROF "Nome do Professor",
        A.MATRICULA "Matricula",
        A.NM_ALUNO "Nome do Aluno",
        N.AV1 "Nota AV1",
        N.AV2 "Nota AV2"
  from DISCIPLINAS D,
       NOTADISC N,
       ALUNOS A 
  where N.CD_DISCIPLINA = D.CD_DISCIPLINA
    and N.MATRICULA = A.MATRICULA 
  order by D.CD_DISCIPLINA

