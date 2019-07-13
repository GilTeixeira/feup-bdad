.mode columns
.headers on

drop table if exists Modelo;
drop table if exists Hangar;
drop table if exists Companhia;
drop table if exists Aviao;
drop table if exists Pessoa;
drop table if exists Passageiro;
drop table if exists Bagagem;
drop table if exists Transporta;
drop table if exists Funcionario;
drop table if exists Seccao;
drop table if exists Funcao;
drop table if exists Trabalha;
drop table if exists Estado;
drop table if exists Voo;

create table Modelo (
	MNome 				TEXT		PRIMARY KEY,
	Capacidade 			INTEGER		CHECK(Capacidade > 0),
	Deposito 			REAL		CHECK(Deposito > 0),
	Peso 				REAL		CHECK(Peso > 0));

create table Hangar (
	HID					INTEGER 	PRIMARY KEY,
	Area 				INTEGER		CHECK(Area > 0),
	Capacidade 			INTEGER		CHECK(Capacidade > 0));

create table Companhia (
	CID					INTEGER 	PRIMARY KEY,
	Nome 				TEXT 		UNIQUE NOT NULL,
	Pais 				TEXT 		NOT NULL);

create table Aviao (
	AID					INTEGER 	PRIMARY KEY,
	ModeloNome			TEXT 		REFERENCES Modelo(MNome) NOT NULL,
	HangarID			INTEGER 	REFERENCES Hangar(HID),
	CompanhiaID			INTEGER 	REFERENCES Companhia(CID) NOT NULL,
	Estado 				TEXT);

create table Pessoa (
	PID					INTEGER 	PRIMARY KEY,
	Nome				TEXT 		NOT NULL,
	Idade				INTEGER 	CHECK(Idade >= 0),
	Pais				TEXT 		NOT NULL);

create table Passageiro (
	PPID				INTEGER		REFERENCES Pessoa(PID) PRIMARY KEY,
	MilhasPercorridas	REAL		CHECK(MilhasPercorridas >= 0));

create table Bagagem (
	BID					INTEGER		PRIMARY KEY,
	PassageiroID		INTEGER		REFERENCES Passageiro(PPID) NOT NULL,
	Peso 				REAL		CHECK(Peso >= 0),
	Tipo 				TEXT);

create table Transporta (
	BagagemID			INTEGER		REFERENCES Bagagem(BID),
	VooID				INTEGER		REFERENCES Voo(VID),
	PRIMARY KEY (BagagemID, VooID));

create table Funcionario (
	PFID				INTEGER 	REFERENCES Pessoa(PID) PRIMARY KEY,
	Horario 			TEXT,
	Salario 			REAL		CHECK(Salario >= 0));

create table Seccao (
	SNome				TEXT		PRIMARY KEY,
	Descricao			TEXT);

create table Funcao (
    FID					INTEGER		PRIMARY KEY,
	Cargo				TEXT		NOT NULL,
	Descricao 			TEXT);

create table Trabalha (
	FuncionarioID		INTEGER		REFERENCES Funcionario(PFID),
	SeccaoID			TEXT		REFERENCES Seccao(SNome),
	FuncaoID			INTEGER		REFERENCES Funcao(FID),
	PRIMARY KEY (FuncionarioID, SeccaoID, FuncaoID));

create table Estado (
	PassageiroID		INTEGER		REFERENCES Passageiro(PPID),
	VooID				INTEGER		REFERENCES Voo(VID),
	Boarded				INTEGER 	CHECK(Boarded = 0 OR Boarded = 1),
	CheckedIn			INTEGER 	CHECK(CheckedIn = 0 OR CheckedIn = 1),
	Lugar				INTEGER 	CHECK(Lugar > 0),
	PRIMARY KEY (PassageiroID, VooID));

create table Voo (
	VID					INTEGER		PRIMARY KEY,
	AviaoID				INTEGER		REFERENCES Aviao(AID),
	Custo				REAL		CHECK(Custo > 0),
	Destino				TEXT		NOT NULL,
	HoraPrevista		TEXT,
	Pista 				INTEGER		CHECK(Pista >= 0));
