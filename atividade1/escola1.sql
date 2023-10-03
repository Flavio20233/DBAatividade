CREATE database escola1;
USE escola1;

SHOW TABLES;
SELECT * FROM turma;

CREATE TABLE professor (
    unidade INT UNIQUE,
    matricula INT PRIMARY KEY auto_increment,
    nome varchar(45)
);

CREATE TABLE aluno (
    numero_aluno INT PRIMARY KEY auto_increment,
    ano INT,
    semetre INT,
    nome VARCHAR(45),
    UNIQUE (ano, semetre)
);

/*CREATE TABLE turma (
    cod_disciplina INT PRIMARY KEY auto_increment,
    sala INT,
    numero INT UNIQUE,
    fk_professor_matricula INT
);*/
DROP TABLE turma;

CREATE TABLE turma (
    cod_disciplina INT PRIMARY KEY auto_increment,
    sala INT,
    numTurma INT UNIQUE
    );
INSERT INTO turma(cod_disciplina,sala,numTurma)
	VALUES(1,201,540);
CREATE TABLE inscrito (
    fk_aluno_numero_aluno INT,
    fk_turma_cod_disciplina INT
);
 
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