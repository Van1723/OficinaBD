CREATE DATABASE IF NOT EXISTS oficinaBD;
USE oficinaBD;




CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    telefoneCliente VARCHAR(20),
    emailCliente VARCHAR(100) UNIQUE
);

CREATE TABLE Veiculo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT NOT NULL,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(50) NOT NULL,
    ano INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE Mecanico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomeMecanico VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);

CREATE TABLE Servico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao_Servico VARCHAR(200) NOT NULL,
    valor_servico DECIMAL(10,2) NOT NULL
);

CREATE TABLE OrdemServico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT NOT NULL,
    id_mecanico INT NOT NULL,
    data_abertura DATETIME DEFAULT CURRENT_TIMESTAMP,
    statusOS VARCHAR(50) DEFAULT 'ABERTA',
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (id_mecanico) REFERENCES Mecanico(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE ItemServico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_Os INT NOT NULL,
    id_servico INT NOT NULL,
    quantidade INT NOT NULL,
    valor_total_item DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_Os) REFERENCES OrdemServico(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_servico) REFERENCES Servico(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

SHOW TABLES;