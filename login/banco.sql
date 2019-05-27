CREATE TABLE Departamento (
	idDepartamento serial,
	nome VARCHAR (150) NOT NULL,
	idGerente int,
	dataatualizacao date,
	CONSTRAINT "idGerenteFK" FOREIGN KEY(idGerente)
		REFERENCES Funcionario(idFuncionario),
	CONSTRAINT "idDepartamentoPK" PRIMARY KEY (idDepartamento)
 )
 
 

CREATE TABLE Funcionario (
	idFuncionario serial,
	nome VARCHAR(150) NOT NULL,
	email VARCHAR(150) NOT NULL,
	idDepartamento int,
	senha VARCHAR(150) NOT NULL,
	admin BOOLEAN NOT NULL,
	login VARCHAR(150) NOT NULL, 	
	CONSTRAINT "idFuncionarioPK" PRIMARY KEY(IdFuncionario)
	/*CONSTRAINT "idDepartamentoFK" FOREIGN KEY(idDepartamento)
		REFERENCES Departamento(idDepartamento)*/
);

CREATE TABLE Projeto (
	idProjeto serial,
	nome VARCHAR(150) NOT NULL,
	dtPrevista date,
	CONSTRAINT "idProjeto" PRIMARY KEY(idProjeto)

)

CREATE TABLE FuncProj(
	idProjetoFK int,
	idFuncionarioFK int,
	CONSTRAINT "idProjetoFK" FOREIGN KEY(idProjetoFK)
		REFERENCES Projeto(idProjeto),

	CONSTRAINT "idFuncionarioFK" FOREIGN KEY(idFuncionarioFK)
		REFERENCES Funcionario(idFuncionario)
	
);

ALTER TABLE Funcionario ADD CONSTRAINT "idDepartamentoFK"
FOREIGN KEY(idDepartamento) REFERENCES Departamento (idDepartamento);

ALTER TABLE departamento
ADD dataAtualizacao varchar(200);

DROP TABLE if exists departamento cascade;

select * from Funcionario;
select * from departamento;
select * from Projeto;
select * from FuncProj;

insert into departamento (nome) values ('departamento generico');
insert into departamento (nome) values ('depto testando');

insert into departamento (nome,idGerente) values (':c',Null);

insert into funcionario (nome,email,login,senha,admin,idDepartamento) VALUES ('ademir','admin@gmail','adm','adm',TRUE,1);
insert into funcionario (nome,email,login,senha,admin,idDepartamento) VALUES ('funcionario 1','funcionario1@gmail','f1','f1',FALSE,1);
insert into funcionario (nome,email,login,senha,admin,idDepartamento) VALUES ('funcionario 2','funcionario2@gmail','f2','f2',FALSE,1);
insert into funcionario (nome,email,login,senha,admin,idDepartamento) VALUES ('funcionario 3','funcionario3@gmail','f3','f3',FALSE,1);


insert into funcionario (nome,email,login,senha,admin,idDepartamento) VALUES ('funcionario 4','funcionario3@gmail','f4','f4',FALSE,1);
SELECT * FROM Funcionario WHERE login = 'adm' and senha= 'adm';
SELECT NOW();
update departamento set dataatualizacao=NOW() where idDepartamento=1;



