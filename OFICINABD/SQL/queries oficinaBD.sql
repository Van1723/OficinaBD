-- Mostrar clientes
SELECT * FROM Cliente;

-- Veículos com cliente
SELECT v.id, v.placa, v.modelo, v.ano, c.nomeCliente
FROM Veiculo v
JOIN Cliente c ON v.idCliente = c.id;

-- Mecânicos
SELECT * FROM Mecanico;

-- Serviços
SELECT * FROM Servico;

-- Ordens de serviço com detalhes
SELECT os.id AS NumeroOS,
       c.nomeCliente,
       v.modelo AS Veiculo,
       m.nomeMecanico AS Mecanico,
       os.data_abertura,
       os.statusOS,
       os.valor_total
FROM OrdemServico os
JOIN Veiculo v ON os.id_veiculo = v.id
JOIN Cliente c ON v.idCliente = c.id
JOIN Mecanico m ON os.id_mecanico = m.id;

-- Itens de OS
SELECT os.id AS NumeroOS,
       s.descricao_Servico,
       i.quantidade,
       i.valor_total_item
FROM ItemServico i
JOIN OrdemServico os ON i.id_Os = os.id
JOIN Servico s ON i.id_servico = s.id
ORDER BY os.id;

-- OS abertas
SELECT * FROM OrdemServico WHERE statusOS = 'ABERTA';

-- Total gasto por cliente
SELECT c.nomeCliente, SUM(os.valor_total) AS TotalGasto
FROM Cliente c
JOIN Veiculo v ON c.id = v.idCliente
JOIN OrdemServico os ON v.id = os.id_veiculo
GROUP BY c.nomeCliente;

-- Quantidade de OS por mecânico
SELECT m.nomeMecanico, COUNT(os.id) AS total_os
FROM Mecanico m
LEFT JOIN OrdemServico os ON m.id = os.id_mecanico
GROUP BY m.nomeMecanico;

-- Serviços mais vendidos
SELECT s.descricao_Servico, SUM(i.quantidade) AS total_vendido
FROM ItemServico i
JOIN Servico s ON i.id_servico = s.id
GROUP BY s.descricao_Servico
ORDER BY total_vendido DESC;

-- Conferência do valor da OS
SELECT os.id AS NumeroOS,
       SUM(i.valor_total_item) AS soma_itens,
       os.valor_total AS valor_registrado,
       (SUM(i.valor_total_item) - os.valor_total) AS diferenca
FROM OrdemServico os
JOIN ItemServico i ON os.id = i.id_Os
GROUP BY os.id;

-- Clientes com mais de 1 veículo
SELECT c.nomeCliente, COUNT(v.id) AS total_veiculos
FROM Cliente c
JOIN Veiculo v ON c.id = v.idCliente
GROUP BY c.nomeCliente
HAVING COUNT(v.id) > 1;

-- Histórico de uma placa específica (mude a placa)
SELECT v.placa, c.nomeCliente, os.id AS OS, os.data_abertura, os.valor_total, os.statusOS
FROM Veiculo v
JOIN Cliente c ON v.idCliente = c.id
JOIN OrdemServico os ON v.id = os.id_veiculo
WHERE v.placa = 'ABC1A23';
