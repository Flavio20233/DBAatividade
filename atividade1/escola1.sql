CREATE database escola1;
USE escola1;

SHOW TABLES;
SELECT * FROM turma;
SELECT * FROM professor;
SELECT * FROM aluno;
DESCRIBE professor;
/*drop table aluno;*/
select *from inscrito;

CREATE TABLE professor (
    unidade varchar(50),
    matricula INT PRIMARY KEY auto_increment,
    nome varchar(45)
);

CREATE TABLE aluno (
    numero_aluno INT PRIMARY KEY auto_increment,
    ano INT,
    semetre INT,
    nome VARCHAR(45)
);



/*CREATE TABLE turma (
    cod_disciplina INT PRIMARY KEY auto_increment,
    sala INT,
    numero INT UNIQUE,
    fk_professor_matricula INT
);*/
DROP TABLE professor;

CREATE TABLE turma (
    cod_disciplina INT PRIMARY KEY auto_increment,
    sala INT,
    numTurma INT UNIQUE
    );
INSERT INTO turma(sala,numTurma,materia)
	VALUES(201,1,'dba');
INSERT INTO turma(sala,numTurma,materia)
	VALUES(202,2,'ingles');
    
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'Pedro');
INSERT INTO aluno (ano,semetre,nome) 
values(2023,2,'joao');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'jose');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'tiago');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'vinicius');
INSERT INTO aluno(ano ,semetre,nome)
values(2023,2,'celso');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'artur');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'vitoria');
INSERT INTO aluno(ano,semetre,nome)
values(2023,2,'rafael');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'ana');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'beatriz');
INSERT INTO aluno(ano,semetre,nome)
values(2023,2,'tatiene');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'leticia');
INSERT INTO aluno(ano,semetre,nome)
values(2023,2,'erika');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'iolanda');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'ivo');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'flavia');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'joaquim');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'alessandro');
INSERT INTO aluno (ano,semetre,nome)
values(2023,2,'fabiane');
 
 
 alter table turma add column materia varchar(80);
 insert into turma (materia) values ('dba');
 insert into turma (materia) values ('ingles');
 
 insert into inscrito(fk_aluno_numero_aluno,fk_turma_cod_disciplina)
 values (1,2),(2,1),(3,2),(4,1),(5,1),(6,1),(7,2),(8,1),(9,1),(10,2),(11,1),(12,1),(13,2),(14,1),(15,2),(16,1),(17,2),(18,2),(19,1),(20,2);
   
 
 
 
INSERT INTO professor(unidade,matricula,nome)
	VALUES("senai_taguatinga_DF",2565,"mauricio");

INSERT INTO professor (unidade,matricula,nome)
	VALUES ("senai_taguatinga_df",2566,"carlos");
    
    
    
CREATE TABLE inscrito (
    fk_aluno_numero_aluno INT,
    fk_turma_cod_disciplina INT
);
insert into inscrito ( fk_aluno_numero_aluno,
 fk_turma_cod_disciplina) values ();
 
 select * from aluno;
 select * from turma;

 drop table aluno;
ALTER TABLE turma ADD CONSTRAINT FK_turma_2
    FOREIGN KEY (fk_professor_matricula)
    REFERENCES professor (matricula)
    ON DELETE CASCADE;
 
ALTER TABLE inscrito ADD CONSTRAINT FK_inscrito_1
    FOREIGN KEY (fk_aluno_numero_aluno, fk_aluno_ano???, fk_aluno_semetre???)
    REFERENCES aluno (numero_aluno, ???, ???)
    ON DELETE SET NULL;
 
ALTER TABLE inscrito ADD CONSTRAINT FK_inscrito_2
    FOREIGN KEY (fk_turma_cod_disciplina)
    REFERENCES turma (cod_disciplina)
    ON DELETE SET NULL;
    
    
    