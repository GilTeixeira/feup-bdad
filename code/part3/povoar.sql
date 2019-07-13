PRAGMA foreign_keys = ON;

INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Skadi', 200, 1000, 20);
INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Yasha', 2, 50, 1);
INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Daedalus', NULL, 200, 3);
INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Butterfly', 100, NULL, 10);
INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Manta', 50, 2000, NULL);
INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Phantom', 200, 1000, 20);
INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Martin', 2, 50, 1);
INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Dornier', NULL, 200, 3);
INSERT INTO Modelo(MNome, Capacidade, Deposito, Peso) VALUES('Revell', 100, NULL, 10);

INSERT INTO Hangar(HID, Area, Capacidade) VALUES(1, 200, 2);
INSERT INTO Hangar(HID, Area, Capacidade) VALUES(2, 400, 4);
INSERT INTO Hangar(HID, Area, Capacidade) VALUES(3, 150, NULL);
INSERT INTO Hangar(HID, Area, Capacidade) VALUES(4, NULL, 3);
INSERT INTO Hangar(HID, Area, Capacidade) VALUES(5, NULL, NULL);

INSERT INTO Companhia(CID, Nome, Pais) VALUES(1, 'FlyWithMe', 'Portugal');
INSERT INTO Companhia(CID, Nome, Pais) VALUES(2, 'BlueWings', 'Espanha');
INSERT INTO Companhia(CID, Nome, Pais) VALUES(3, 'FlyingBull', 'Franca');
INSERT INTO Companhia(CID, Nome, Pais) VALUES(4, 'FighterPlanes', 'Portugal');
INSERT INTO Companhia(CID, Nome, Pais) VALUES(5, 'MileHigh', 'Espanha');

INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(1, 'Skadi', 1, 1, 'Operacional');
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(2, 'Yasha', 1, 1, 'Reparacao');
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(3, 'Butterfly', NULL, 2, NULL);
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(4, 'Manta', 2, 3, NULL);
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(5, 'Yasha', 2, 3, 'Operacional');
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(6, 'Skadi', NULL, 3, 'Operacional');
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(7, 'Phantom', 2, 1, 'Operacional');
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(8, 'Martin', 2, 1, 'Reparacao');
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(9, 'Dornier', 4, 4, NULL);
INSERT INTO Aviao(AID, ModeloNome, HangarID, CompanhiaID, Estado) VALUES(10, 'Revell', 4, 3, NULL);

INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(1, 'Fabio', 24, 'Portugal');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(2, 'Pedro', 27, 'Portugal');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(3, 'Gil', NULL, 'Portugal');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(4, 'Lina', NULL, 'Kalimdor');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(5, 'Sylvanas', NULL, 'Kalimdor');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(6, 'Dazzle', 10, 'Kalimdor');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(7, 'Nyx', 5, 'Northrend');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(8, 'Juggernaut', 30, 'Northrend');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(9, 'Sven', 40, 'Northrend');
INSERT INTO Pessoa(PID, Nome, Idade, Pais) VALUES(10, 'Ursa', 25, 'Pandaria');

INSERT INTO Passageiro(PPID, MilhasPercorridas) VALUES(1, 50);
INSERT INTO Passageiro(PPID, MilhasPercorridas) VALUES(2, 4000);
INSERT INTO Passageiro(PPID, MilhasPercorridas) VALUES(3, 100);
INSERT INTO Passageiro(PPID, MilhasPercorridas) VALUES(4, 0);
INSERT INTO Passageiro(PPID, MilhasPercorridas) VALUES(5, 0);

INSERT INTO Bagagem(BID, PassageiroID, Peso, Tipo) VALUES(1, 1, 5, 'Privada');
INSERT INTO Bagagem(BID, PassageiroID, Peso, Tipo) VALUES(2, 2, NULL, 'Privada');
INSERT INTO Bagagem(BID, PassageiroID, Peso, Tipo) VALUES(3, 2, 10, 'Comercial');
INSERT INTO Bagagem(BID, PassageiroID, Peso, Tipo) VALUES(4, 3, NULL, NULL);
INSERT INTO Bagagem(BID, PassageiroID, Peso, Tipo) VALUES(5, 4, 2, NULL);

INSERT INTO Funcionario(PFID, Horario, Salario) VALUES(6, Null, 800);
INSERT INTO Funcionario(PFID, Horario, Salario) VALUES(7, '9-5', 1000);
INSERT INTO Funcionario(PFID, Horario, Salario) VALUES(8, '10-14', 0);
INSERT INTO Funcionario(PFID, Horario, Salario) VALUES(9, NULL, 2000);
INSERT INTO Funcionario(PFID, Horario, Salario) VALUES(10, '21-7', 1500);

INSERT INTO Seccao(SNome, Descricao) VALUES('Manutencao', 'Departamento de reparacao e manutencao');
INSERT INTO Seccao(SNome, Descricao) VALUES('Administracao', NULL);
INSERT INTO Seccao(SNome, Descricao) VALUES('Restauracao', NULL);
INSERT INTO Seccao(SNome, Descricao) VALUES('Vendas', 'Departamento comercial de vendas');
INSERT INTO Seccao(SNome, Descricao) VALUES('Tripulacao', 'Departamento de funcionarios presentes nos voos');

INSERT INTO Funcao(FID, Cargo, Descricao) VALUES(1, 'Cozinheiro', 'Encarregue de preparar as refeicoes');
INSERT INTO Funcao(FID, Cargo, Descricao) VALUES(2, 'Piloto', 'Responsavel de guiar o aviao');
INSERT INTO Funcao(FID, Cargo, Descricao) VALUES(3, 'Assistente', 'Atendimente dos passageiros');
INSERT INTO Funcao(FID, Cargo, Descricao) VALUES(4, 'Mecanico', NULL);
INSERT INTO Funcao(FID, Cargo, Descricao) VALUES(5, 'Presidente', NULL);

INSERT INTO Trabalha(FuncionarioID, SeccaoID, FuncaoID) VALUES(6, 'Manutencao', 4);
INSERT INTO Trabalha(FuncionarioID, SeccaoID, FuncaoID) VALUES(7, 'Restauracao', 1);
INSERT INTO Trabalha(FuncionarioID, SeccaoID, FuncaoID) VALUES(8, 'Tripulacao', 2);
INSERT INTO Trabalha(FuncionarioID, SeccaoID, FuncaoID) VALUES(9, 'Tripulacao', 2);
INSERT INTO Trabalha(FuncionarioID, SeccaoID, FuncaoID) VALUES(10, 'Tripulacao', 3);

INSERT INTO Voo(VID, AviaoID, Custo, Destino, HoraPrevista, Pista) VALUES(1, 1, 25, 'Espanha', '9:00', 1);
INSERT INTO Voo(VID, AviaoID, Custo, Destino, HoraPrevista, Pista) VALUES(2, 1, NULL, 'Portugal', '22:00', 1);
INSERT INTO Voo(VID, AviaoID, Custo, Destino, HoraPrevista, Pista) VALUES(3, 2, 100, 'Franca', NULL, 2);
INSERT INTO Voo(VID, AviaoID, Custo, Destino, HoraPrevista, Pista) VALUES(4, 2, 50, 'Espanha', '13:30', NULL);
INSERT INTO Voo(VID, AviaoID, Custo, Destino, HoraPrevista, Pista) VALUES(5, 3, Null, 'Portugal', NULL, NULL);

INSERT INTO Transporta(BagagemID, VooID) VALUES(1, 1);
INSERT INTO Transporta(BagagemID, VooID) VALUES(2, 1);
INSERT INTO Transporta(BagagemID, VooID) VALUES(3, 1);
INSERT INTO Transporta(BagagemID, VooID) VALUES(4, 2);
INSERT INTO Transporta(BagagemID, VooID) VALUES(5, 3);

INSERT INTO Estado(PassageiroID, VooID, Boarded, CheckedIN, Lugar) VALUES(1, 1, 1, 1, 10);
INSERT INTO Estado(PassageiroID, VooID, Boarded, CheckedIN, Lugar) VALUES(2, 1, 0, 1, 22);
INSERT INTO Estado(PassageiroID, VooID, Boarded, CheckedIN, Lugar) VALUES(3, 2, 0, 0, NULL);
INSERT INTO Estado(PassageiroID, VooID, Boarded, CheckedIN, Lugar) VALUES(4, 2, 1, 1, 30);
INSERT INTO Estado(PassageiroID, VooID, Boarded, CheckedIN, Lugar) VALUES(5, 3, NULL, NULL, NULL);
