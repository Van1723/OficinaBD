USE oficinaBD;

-- CLIENTES (15)
INSERT INTO Cliente (nomeCliente, telefoneCliente, emailCliente) VALUES
('Carlos Silva','11987654321','carlos@example.com'),
('Ana Souza','11999887766','ana@example.com'),
('Marcos Lima','11988776655','marcos@example.com'),
('Julia Rocha','11977665544','julia@example.com'),
('Paulo Mendes','11966554433','paulo@example.com'),
('Rita Oliveira','11955443322','rita@example.com'),
('Daniel Torres','11944332211','daniel@example.com'),
('Fernanda Costa','11933221100','fernanda@example.com'),
('Bruno Martins','11911223344','bruno@example.com'),
('Amanda Reis','11922113344','amanda@example.com'),
('Pedro Carvalho','11933445566','pedro@example.com'),
('Carla Ferreira','11955667788','carla@example.com'),
('Rafael Souza','11966778899','rafael@example.com'),
('Beatriz Ramos','11977889900','beatriz@example.com'),
('Lucas Araujo','11988990011','lucas@example.com');

-- VEICULOS (15)
INSERT INTO Veiculo (idCliente, placa, modelo, ano) VALUES
(1,'ABC1234','Honda Civic',2018),
(2,'XYZ5678','Toyota Corolla',2020),
(3,'MNO2468','Chevrolet Onix',2019),
(4,'JKL1357','Fiat Argo',2021),
(5,'TUV9876','Ford Fiesta',2016),
(6,'QRS1111','Hyundai HB20',2022),
(7,'LMN2222','Volkswagen Gol',2017),
(8,'OPQ3333','Renault Kwid',2020),
(9,'UVW4444','Chevrolet Cruze',2018),
(10,'FGH5555','Honda Fit',2019),
(11,'AAA6666','Nissan Versa',2018),
(12,'BBB7777','Toyota Etios',2017),
(13,'CCC8888','Peugeot 208',2020),
(14,'DDD9999','Jeep Renegade',2021),
(15,'EEE0000','Hyundai Creta',2022);

-- MECANICOS (15)
INSERT INTO Mecanico (nomeMecanico, especialidade) VALUES
('Roberto Mendes','Motor'),
('Paulo Santos','Freios'),
('Fernando Lima','Elétrica'),
('Ricardo Alves','Suspensão'),
('Tiago Silva','Transmissão'),
('André Pereira','Escapamento'),
('Sergio Costa','Injeção Eletrônica'),
('João Ramos','Direção Hidráulica'),
('Marcos Souza','Geral'),
('Julio Matos','Motor'),
('Diego Rocha','Freios'),
('Fábio Moraes','Elétrica'),
('Henrique Dias','Injeção'),
('Vitor Nunes','Suspensão'),
('Pedro Santos','Motor');

-- SERVICOS (15)
INSERT INTO Servico (descricao_Servico, valor_servico) VALUES
('Troca de óleo',120.00),
('Alinhamento e balanceamento',150.00),
('Revisão elétrica',250.00),
('Troca de pastilhas de freio',300.00),
('Troca de filtro de ar',80.00),
('Troca de bateria',400.00),
('Revisão completa',900.00),
('Flush do radiador',200.00),
('Troca de correia dentada',800.00),
('Troca de velas',150.00),
('Troca de amortecedores',1000.00),
('Regulagem de embreagem',350.00),
('Limpeza de bicos',180.00),
('Diagnóstico eletrônico',150.00),
('Troca de lâmpadas',30.00);

-- ORDEM DE SERVIÇO (15)
INSERT INTO OrdemServico (id_veiculo, id_mecanico, statusOS, valor_total) VALUES
(1,1,'ABERTA',370.00),
(2,2,'CONCLUIDA',150.00),
(3,3,'ABERTA',250.00),
(4,4,'CONCLUIDA',300.00),
(5,5,'ABERTA',80.00),
(6,6,'ABERTA',400.00),
(7,7,'CONCLUIDA',900.00),
(8,8,'ABERTA',200.00),
(9,9,'CONCLUIDA',800.00),
(10,10,'ABERTA',150.00),
(11,11,'CONCLUIDA',1000.00),
(12,12,'ABERTA',350.00),
(13,13,'CONCLUIDA',180.00),
(14,14,'ABERTA',150.00),
(15,15,'CONCLUIDA',30.00);

-- ITEM SERVICO (15)
INSERT INTO ItemServico (id_Os, id_servico, quantidade, valor_total_item) VALUES
(1,1,1,120.00),
(1,2,1,150.00),
(1,4,1,300.00),
(2,2,1,150.00),
(3,3,1,250.00),
(4,4,1,300.00),
(5,5,1,80.00),
(6,6,1,400.00),
(7,7,1,900.00),
(8,8,1,200.00),
(9,9,1,800.00),
(10,10,1,150.00),
(11,11,1,1000.00),
(12,12,1,350.00),
(13,13,1,180.00);